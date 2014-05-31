.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_146

    .line 232
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "bootCompleted"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 235
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 236
    :try_start_26
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v12, 0x1

    # setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v10, v12}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;Z)Z

    .line 238
    iget-object v12, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v10, "dormant_switch_onoff"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v2, v10, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_137

    const/4 v10, 0x1

    :goto_3a
    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v12, v10}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 239
    iget-object v12, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v10, "dormant_disable_led_indicator"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v2, v10, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_13a

    const/4 v10, 0x1

    :goto_4b
    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v12, v10}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 240
    iget-object v12, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v10, "dormant_always"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v2, v10, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_13d

    const/4 v10, 0x1

    :goto_5c
    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v12, v10}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 241
    monitor-exit v11
    :try_end_60
    .catchall {:try_start_26 .. :try_end_60} :catchall_140

    .line 243
    const-string v10, "dormant_start_hour"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v2, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 244
    .local v6, "dormantStartHour":I
    const-string v10, "dormant_start_min"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v2, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 245
    .local v7, "dormantStartMinute":I
    const-string v10, "dormant_end_hour"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v2, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 246
    .local v3, "dormantEndHour":I
    const-string v10, "dormant_end_min"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v2, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 247
    .local v4, "dormantEndMinute":I
    mul-int/lit8 v10, v6, 0x3c

    add-int v8, v10, v7

    .line 248
    .local v8, "dormantStartMinutes":I
    mul-int/lit8 v10, v3, 0x3c

    add-int v5, v10, v4

    .line 249
    .local v5, "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dormant OnOff Settings = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v12}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dormant Disable LED Settings = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v12}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dormant Always Settings = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v12}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dormant time Settings = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ~ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v10, v8, v5}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 256
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 257
    :try_start_12c
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 258
    monitor-exit v11
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_143

    .line 287
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "dormantEndHour":I
    .end local v4    # "dormantEndMinute":I
    .end local v5    # "dormantEndMinutes":I
    .end local v6    # "dormantStartHour":I
    .end local v7    # "dormantStartMinute":I
    .end local v8    # "dormantStartMinutes":I
    :cond_136
    :goto_136
    return-void

    .line 238
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    :cond_137
    const/4 v10, 0x0

    goto/16 :goto_3a

    .line 239
    :cond_13a
    const/4 v10, 0x0

    goto/16 :goto_4b

    .line 240
    :cond_13d
    const/4 v10, 0x0

    goto/16 :goto_5c

    .line 241
    :catchall_140
    move-exception v10

    :try_start_141
    monitor-exit v11
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    throw v10

    .line 258
    .restart local v3    # "dormantEndHour":I
    .restart local v4    # "dormantEndMinute":I
    .restart local v5    # "dormantEndMinutes":I
    .restart local v6    # "dormantStartHour":I
    .restart local v7    # "dormantStartMinute":I
    .restart local v8    # "dormantStartMinutes":I
    :catchall_143
    move-exception v10

    :try_start_144
    monitor-exit v11
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v10

    .line 259
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "dormantEndHour":I
    .end local v4    # "dormantEndMinute":I
    .end local v5    # "dormantEndMinutes":I
    .end local v6    # "dormantStartHour":I
    .end local v7    # "dormantStartMinute":I
    .end local v8    # "dormantStartMinutes":I
    :cond_146
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_169

    .line 260
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 261
    :try_start_155
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v12, 0x1

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v10, v12}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 262
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 263
    monitor-exit v11

    goto :goto_136

    :catchall_166
    move-exception v10

    monitor-exit v11
    :try_end_168
    .catchall {:try_start_155 .. :try_end_168} :catchall_166

    throw v10

    .line 264
    :cond_169
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18c

    .line 265
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 266
    :try_start_178
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v10, v12}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 267
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 268
    monitor-exit v11

    goto :goto_136

    :catchall_189
    move-exception v10

    monitor-exit v11
    :try_end_18b
    .catchall {:try_start_178 .. :try_end_18b} :catchall_189

    throw v10

    .line 269
    :cond_18c
    const-string v10, "com.android.server.BatteryService.action.DORMANT_START"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b2

    .line 270
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 271
    :try_start_19b
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Dormant mode start"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 273
    monitor-exit v11

    goto :goto_136

    :catchall_1af
    move-exception v10

    monitor-exit v11
    :try_end_1b1
    .catchall {:try_start_19b .. :try_end_1b1} :catchall_1af

    throw v10

    .line 274
    :cond_1b2
    const-string v10, "com.android.server.BatteryService.action.DORMANT_END"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d9

    .line 275
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 276
    :try_start_1c1
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Dormant mode end"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 278
    monitor-exit v11

    goto/16 :goto_136

    :catchall_1d6
    move-exception v10

    monitor-exit v11
    :try_end_1d8
    .catchall {:try_start_1c1 .. :try_end_1d8} :catchall_1d6

    throw v10

    .line 279
    :cond_1d9
    const-string v10, "com.android.systemui.power.action.POWER_SHARING"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_136

    .line 280
    const-string v10, "power_sharing_enable"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 281
    .local v9, "powerSharingEnable":Z
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v10, v9}, Lcom/android/server/BatteryService;->setPowerSharing(Z)Z

    move-result v10

    if-eqz v10, :cond_20f

    .line 282
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "success to set Power sharing as "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136

    .line 284
    :cond_20f
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "fail to set Power sharing"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136
.end method
