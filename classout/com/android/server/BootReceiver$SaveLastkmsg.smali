.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/BootReceiver$1;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;-><init>()V

    return-void
.end method

.method private logLastKmsg()V
    .registers 23

    .prologue
    .line 181
    new-instance v12, Ljava/io/File;

    const-string v19, "/proc/last_kmsg"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v12, "lk_proc":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v19, "/proc/version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v18, "version_proc":Ljava/io/File;
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v1, v0, [B

    .line 184
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 185
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 186
    .local v16, "ver_fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 187
    .local v6, "fout":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 188
    .local v8, "gout":Ljava/util/zip/GZIPOutputStream;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 190
    .local v15, "time":Landroid/text/format/Time;
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v19

    if-nez v19, :cond_2e

    .line 249
    :goto_2d
    return-void

    .line 194
    :cond_2e
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 196
    const-string v19, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "date":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".log.gz"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v13, "lk_save":Ljava/io/File;
    const/4 v10, 0x0

    .line 202
    .local v10, "len":I
    :try_start_5c
    const-string v19, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    const-string v11, "========================================================\n"

    .line 205
    .local v11, "line":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "== dumpstate lastkmsg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "text":Ljava/lang/String;
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - New filename is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_a2} :catch_1d9
    .catchall {:try_start_5c .. :try_end_a2} :catchall_194

    .line 210
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_a2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_1dc
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_1c6

    .line 211
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    :try_start_a7
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ac} :catch_1e0
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_1c9

    .line 213
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .local v9, "gout":Ljava/util/zip/GZIPOutputStream;
    :try_start_ac
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 214
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 215
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 217
    const-string v14, "\n[Kernel version]: "

    .line 218
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_12a

    .line 221
    new-instance v17, Ljava/io/FileInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_dd} :catch_176
    .catchall {:try_start_ac .. :try_end_dd} :catchall_1cd

    .line 222
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .local v17, "ver_fin":Ljava/io/FileInputStream;
    :goto_dd
    :try_start_dd
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1e5

    .line 223
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_ec} :catch_ed
    .catchall {:try_start_dd .. :try_end_ec} :catchall_1d2

    goto :goto_dd

    .line 240
    :catch_ed
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 241
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :goto_f3
    :try_start_f3
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "logLastKmsg - File copy error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f3 .. :try_end_10d} :catchall_194

    .line 243
    if-eqz v4, :cond_112

    :try_start_10f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_112} :catch_1b2

    .line 244
    :cond_112
    :goto_112
    if-eqz v16, :cond_117

    :try_start_114
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_1b5

    .line 245
    :cond_117
    :goto_117
    if-eqz v8, :cond_11c

    :try_start_119
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_1b8

    .line 246
    :cond_11c
    :goto_11c
    if-eqz v6, :cond_121

    :try_start_11e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_1bb

    .line 248
    .end local v3    # "e":Ljava/io/IOException;
    :cond_121
    :goto_121
    const-string v19, "BootReceiver"

    const-string v20, "logLastKmsg - Save Complete"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 226
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :cond_12a
    :try_start_12a
    const-string/jumbo v14, "unknown"

    .line 227
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 230
    :goto_136
    const-string v14, "[Build Fingerprint]: "

    .line 231
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 233
    const-string v19, "ro.build.fingerprint"

    const-string/jumbo v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 234
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 235
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 237
    :goto_168
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_17c

    .line 238
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_175} :catch_176
    .catchall {:try_start_12a .. :try_end_175} :catchall_1cd

    goto :goto_168

    .line 240
    :catch_176
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f3

    .line 243
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :cond_17c
    if-eqz v5, :cond_181

    :try_start_17e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1be

    .line 244
    :cond_181
    :goto_181
    if-eqz v16, :cond_186

    :try_start_183
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_1c0

    .line 245
    :cond_186
    :goto_186
    if-eqz v9, :cond_18b

    :try_start_188
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_1c2

    .line 246
    :cond_18b
    :goto_18b
    if-eqz v7, :cond_190

    :try_start_18d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_1c4

    :cond_190
    :goto_190
    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 247
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_121

    .line 243
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catchall_194
    move-exception v19

    :goto_195
    if-eqz v4, :cond_19a

    :try_start_197
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_1aa

    .line 244
    :cond_19a
    :goto_19a
    if-eqz v16, :cond_19f

    :try_start_19c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1ac

    .line 245
    :cond_19f
    :goto_19f
    if-eqz v8, :cond_1a4

    :try_start_1a1
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1ae

    .line 246
    :cond_1a4
    :goto_1a4
    if-eqz v6, :cond_1a9

    :try_start_1a6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1b0

    .line 243
    :cond_1a9
    :goto_1a9
    throw v19

    :catch_1aa
    move-exception v20

    goto :goto_19a

    .line 244
    :catch_1ac
    move-exception v20

    goto :goto_19f

    .line 245
    :catch_1ae
    move-exception v20

    goto :goto_1a4

    .line 246
    :catch_1b0
    move-exception v20

    goto :goto_1a9

    .line 243
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_1b2
    move-exception v19

    goto/16 :goto_112

    .line 244
    :catch_1b5
    move-exception v19

    goto/16 :goto_117

    .line 245
    :catch_1b8
    move-exception v19

    goto/16 :goto_11c

    .line 246
    :catch_1bb
    move-exception v19

    goto/16 :goto_121

    .line 243
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_1be
    move-exception v19

    goto :goto_181

    .line 244
    :catch_1c0
    move-exception v19

    goto :goto_186

    .line 245
    :catch_1c2
    move-exception v19

    goto :goto_18b

    .line 246
    :catch_1c4
    move-exception v19

    goto :goto_190

    .line 243
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catchall_1c6
    move-exception v19

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_195

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_1c9
    move-exception v19

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_195

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catchall_1cd
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_195

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_1d2
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_195

    .line 240
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catch_1d9
    move-exception v3

    goto/16 :goto_f3

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_1dc
    move-exception v3

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f3

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1e0
    move-exception v3

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f3

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :cond_1e5
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    goto/16 :goto_136
.end method

.method private trimLastKmsg()V
    .registers 13

    .prologue
    .line 144
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, "logFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 146
    .local v6, "listOfAllFiles":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v7, "listOfLastkmsg":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_10
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 150
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 178
    :cond_19
    :goto_19
    return-void

    .line 154
    :cond_1a
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_39

    aget-object v2, v0, v4

    .line 155
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_36

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 157
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 161
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_39
    new-instance v9, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v9, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_5e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_19

    .line 171
    const-string v10, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Delete file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 173
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_97} :catch_98

    goto :goto_5e

    .line 175
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_98
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->trimLastKmsg()V

    .line 254
    invoke-direct {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 255
    return-void
.end method
