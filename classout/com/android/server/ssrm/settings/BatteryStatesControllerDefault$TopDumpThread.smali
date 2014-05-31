.class Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;
.super Ljava/lang/Thread;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopDumpThread"
.end annotation


# instance fields
.field mMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;Landroid/os/Message;)V
    .registers 3
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->this$0:Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    .line 118
    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 122
    sget-object v16, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mDumpThreadSyncObject:Ljava/lang/Object;

    monitor-enter v16

    .line 123
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_17d

    .line 125
    const/4 v12, 0x0

    .line 127
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_f
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    const-string/jumbo v17, "top -n 1 -m 3"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    .line 128
    .local v11, "process":Ljava/lang/Process;
    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    .line 129
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v13, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_19c
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_2f} :catch_153
    .catchall {:try_start_f .. :try_end_2f} :catchall_180

    .line 131
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 132
    .local v7, "line":Ljava/lang/String;
    :try_start_30
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v8, "log":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    iget-object v15, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 134
    .local v2, "data":J
    const-string/jumbo v15, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v15, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 135
    .local v14, "time":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Time="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " Previous Level="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " New Level="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "cnt":I
    :cond_9f
    :goto_9f
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12d

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 140
    const/4 v15, 0x7

    if-le v1, v15, :cond_9f

    const/16 v15, 0xb

    if-ge v1, v15, :cond_9f

    .line 144
    const/16 v15, 0x25

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 145
    .local v6, "index":I
    const-string v15, " "

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    aget-object v9, v15, v17

    .line 146
    .local v9, "name":Ljava/lang/String;
    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v7, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "percent":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "%]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_105} :catch_106
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_105} :catch_199
    .catchall {:try_start_30 .. :try_end_105} :catchall_196

    goto :goto_9f

    .line 157
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v6    # "index":I
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "percent":Ljava/lang/String;
    .end local v14    # "time":Ljava/lang/String;
    :catch_106
    move-exception v4

    move-object v12, v13

    .line 158
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "process":Ljava/lang/Process;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :goto_108
    :try_start_108
    const-string v15, "SSRMv2:BatteryStatesControllerDefault"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error writing top command to file"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_108 .. :try_end_126} :catchall_180

    .line 162
    if-eqz v12, :cond_12b

    .line 164
    :try_start_128
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_18c
    .catchall {:try_start_128 .. :try_end_12b} :catchall_17d

    .line 170
    .end local v4    # "e":Ljava/io/IOException;
    :cond_12b
    :goto_12b
    :try_start_12b
    monitor-exit v16
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_17d

    .line 171
    return-void

    .line 150
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "cnt":I
    .restart local v2    # "data":J
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "log":Ljava/lang/StringBuffer;
    .restart local v11    # "process":Ljava/lang/Process;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "time":Ljava/lang/String;
    :cond_12d
    :try_start_12d
    # getter for: Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->arrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    invoke-static {}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->access$000()Lcom/android/server/ssrm/CircularBuffer;

    move-result-object v15

    if-nez v15, :cond_13f

    .line 151
    new-instance v15, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v17, 0x190

    move/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    # setter for: Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->arrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    invoke-static {v15}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->access$002(Lcom/android/server/ssrm/CircularBuffer;)Lcom/android/server/ssrm/CircularBuffer;

    .line 153
    :cond_13f
    # getter for: Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->arrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    invoke-static {}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->access$000()Lcom/android/server/ssrm/CircularBuffer;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_14c} :catch_106
    .catch Ljava/lang/InterruptedException; {:try_start_12d .. :try_end_14c} :catch_199
    .catchall {:try_start_12d .. :try_end_14c} :catchall_196

    .line 162
    if-eqz v13, :cond_151

    .line 164
    :try_start_14e
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_191
    .catchall {:try_start_14e .. :try_end_151} :catchall_17d

    :cond_151
    :goto_151
    move-object v12, v13

    .line 169
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_12b

    .line 159
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v11    # "process":Ljava/lang/Process;
    .end local v14    # "time":Ljava/lang/String;
    :catch_153
    move-exception v4

    .line 160
    .local v4, "e":Ljava/lang/InterruptedException;
    :goto_154
    :try_start_154
    const-string v15, "SSRMv2:BatteryStatesControllerDefault"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error writing top command to file"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_172
    .catchall {:try_start_154 .. :try_end_172} :catchall_180

    .line 162
    if-eqz v12, :cond_12b

    .line 164
    :try_start_174
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_178
    .catchall {:try_start_174 .. :try_end_177} :catchall_17d

    goto :goto_12b

    .line 165
    :catch_178
    move-exception v5

    .line 166
    .local v5, "exception":Ljava/io/IOException;
    :try_start_179
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12b

    .line 170
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "exception":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_17d
    move-exception v15

    monitor-exit v16
    :try_end_17f
    .catchall {:try_start_179 .. :try_end_17f} :catchall_17d

    throw v15

    .line 162
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_180
    move-exception v15

    :goto_181
    if-eqz v12, :cond_186

    .line 164
    :try_start_183
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187
    .catchall {:try_start_183 .. :try_end_186} :catchall_17d

    .line 162
    :cond_186
    :goto_186
    :try_start_186
    throw v15

    .line 165
    :catch_187
    move-exception v5

    .line 166
    .restart local v5    # "exception":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_186

    .line 165
    .end local v5    # "exception":Ljava/io/IOException;
    .local v4, "e":Ljava/io/IOException;
    :catch_18c
    move-exception v5

    .line 166
    .restart local v5    # "exception":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12b

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "exception":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "cnt":I
    .restart local v2    # "data":J
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "log":Ljava/lang/StringBuffer;
    .restart local v11    # "process":Ljava/lang/Process;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "time":Ljava/lang/String;
    :catch_191
    move-exception v5

    .line 166
    .restart local v5    # "exception":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_195
    .catchall {:try_start_186 .. :try_end_195} :catchall_17d

    goto :goto_151

    .line 162
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v5    # "exception":Ljava/io/IOException;
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v14    # "time":Ljava/lang/String;
    :catchall_196
    move-exception v15

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_181

    .line 159
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_199
    move-exception v4

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_154

    .line 157
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "process":Ljava/lang/Process;
    :catch_19c
    move-exception v4

    goto/16 :goto_108
.end method
