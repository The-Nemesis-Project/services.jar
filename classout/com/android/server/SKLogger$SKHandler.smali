.class Lcom/android/server/SKLogger$SKHandler;
.super Ljava/util/logging/Handler;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SKLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SKHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/SKLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/SKLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p2, "newLogFile"    # Ljava/lang/String;
    .param p3, "oldLogFile"    # Ljava/lang/String;
    .param p4, "maxSize"    # J

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/SKLogger$SKHandler;->this$0:Lcom/android/server/SKLogger;

    .line 160
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    iput-object p2, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    .line 164
    iput-wide p4, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    .line 165
    invoke-direct {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 166
    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 210
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 213
    .local v0, "buf":[B
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_3a

    .line 214
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_b
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_3c

    .line 216
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :goto_10
    :try_start_10
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_37

    .line 217
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 219
    .end local v4    # "len":I
    :catch_1b
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 220
    .end local v3    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1e
    if-eqz v2, :cond_24

    .line 221
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 222
    const/4 v2, 0x0

    .line 224
    :cond_24
    if-eqz v5, :cond_2a

    .line 225
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 226
    const/4 v5, 0x0

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2a
    if-eqz v2, :cond_30

    .line 231
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 232
    const/4 v2, 0x0

    .line 234
    :cond_30
    if-eqz v5, :cond_36

    .line 235
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 236
    const/4 v5, 0x0

    .line 238
    :cond_36
    return-void

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_37
    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 228
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2a

    .line 219
    .end local v4    # "len":I
    :catch_3a
    move-exception v1

    goto :goto_1e

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_3c
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1e
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/SKLogger$SKHandler;->maxSize:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4f

    .line 173
    :try_start_19
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_30

    .line 174
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 175
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_80

    .line 195
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v2, :cond_4c

    .line 196
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 197
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 199
    :try_start_3a
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 200
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_7e

    .line 204
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v2

    .line 181
    :cond_4f
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_5d

    .line 182
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 183
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 185
    :cond_5d
    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->newLogFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/SKLogger$SKHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "oldFile":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 188
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 189
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    .line 190
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/SKLogger$SKHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_7b} :catch_7c

    goto :goto_30

    .line 191
    .end local v1    # "oldFile":Ljava/io/File;
    :catch_7c
    move-exception v2

    goto :goto_30

    .line 201
    :catch_7e
    move-exception v2

    goto :goto_4c

    .line 177
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
    .line 257
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 258
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 260
    :cond_9
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 254
    :cond_9
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/server/SKLogger$SKHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 248
    :cond_6
    :goto_6
    return-void

    .line 243
    :cond_7
    invoke-direct {p0}, Lcom/android/server/SKLogger$SKHandler;->getPrintWriter()Ljava/io/PrintWriter;

    .line 244
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/android/server/SKLogger$SKHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/SKLogger$SKHandler;->flush()V

    goto :goto_6
.end method
