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
    .line 228
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13f

    .line 234
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "bootCompleted"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 237
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 238
    :try_start_26
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;Z)Z

    .line 240
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_switch_onoff"

    const/4 v11, 0x0

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_130

    const/4 v8, 0x1

    :goto_39
    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v10, v8}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 241
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_disable_led_indicator"

    const/4 v11, 0x0

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_133

    const/4 v8, 0x1

    :goto_49
    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v10, v8}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 242
    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_always"

    const/4 v11, 0x0

    invoke-static {v1, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_136

    const/4 v8, 0x1

    :goto_59
    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v10, v8}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 243
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_139

    .line 245
    const-string v8, "dormant_start_hour"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 246
    .local v5, "dormantStartHour":I
    const-string v8, "dormant_start_min"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 247
    .local v6, "dormantStartMinute":I
    const-string v8, "dormant_end_hour"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 248
    .local v2, "dormantEndHour":I
    const-string v8, "dormant_end_min"

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 249
    .local v3, "dormantEndMinute":I
    mul-int/lit8 v8, v5, 0x3c

    add-int v7, v8, v6

    .line 250
    .local v7, "dormantStartMinutes":I
    mul-int/lit8 v8, v2, 0x3c

    add-int v4, v8, v3

    .line 251
    .local v4, "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant OnOff Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant Disable LED Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant Always Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant time Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ~ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v8, v7, v4}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 258
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 259
    :try_start_125
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 260
    monitor-exit v9
    :try_end_12f
    .catchall {:try_start_125 .. :try_end_12f} :catchall_13c

    .line 282
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "dormantEndHour":I
    .end local v3    # "dormantEndMinute":I
    .end local v4    # "dormantEndMinutes":I
    .end local v5    # "dormantStartHour":I
    .end local v6    # "dormantStartMinute":I
    .end local v7    # "dormantStartMinutes":I
    :cond_12f
    :goto_12f
    return-void

    .line 240
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    :cond_130
    const/4 v8, 0x0

    goto/16 :goto_39

    .line 241
    :cond_133
    const/4 v8, 0x0

    goto/16 :goto_49

    .line 242
    :cond_136
    const/4 v8, 0x0

    goto/16 :goto_59

    .line 243
    :catchall_139
    move-exception v8

    :try_start_13a
    monitor-exit v9
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    throw v8

    .line 260
    .restart local v2    # "dormantEndHour":I
    .restart local v3    # "dormantEndMinute":I
    .restart local v4    # "dormantEndMinutes":I
    .restart local v5    # "dormantStartHour":I
    .restart local v6    # "dormantStartMinute":I
    .restart local v7    # "dormantStartMinutes":I
    :catchall_13c
    move-exception v8

    :try_start_13d
    monitor-exit v9
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13c

    throw v8

    .line 261
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "dormantEndHour":I
    .end local v3    # "dormantEndMinute":I
    .end local v4    # "dormantEndMinutes":I
    .end local v5    # "dormantStartHour":I
    .end local v6    # "dormantStartMinute":I
    .end local v7    # "dormantStartMinutes":I
    :cond_13f
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_162

    .line 262
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 263
    :try_start_14e
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 264
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 265
    monitor-exit v9

    goto :goto_12f

    :catchall_15f
    move-exception v8

    monitor-exit v9
    :try_end_161
    .catchall {:try_start_14e .. :try_end_161} :catchall_15f

    throw v8

    .line 266
    :cond_162
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_185

    .line 267
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 268
    :try_start_171
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$902(Lcom/android/server/BatteryService;Z)Z

    .line 269
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 270
    monitor-exit v9

    goto :goto_12f

    :catchall_182
    move-exception v8

    monitor-exit v9
    :try_end_184
    .catchall {:try_start_171 .. :try_end_184} :catchall_182

    throw v8

    .line 271
    :cond_185
    const-string v8, "com.android.server.BatteryService.action.DORMANT_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ab

    .line 272
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 273
    :try_start_194
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Dormant mode start"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 275
    monitor-exit v9

    goto :goto_12f

    :catchall_1a8
    move-exception v8

    monitor-exit v9
    :try_end_1aa
    .catchall {:try_start_194 .. :try_end_1aa} :catchall_1a8

    throw v8

    .line 276
    :cond_1ab
    const-string v8, "com.android.server.BatteryService.action.DORMANT_END"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12f

    .line 277
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 278
    :try_start_1ba
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Dormant mode end"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 280
    monitor-exit v9

    goto/16 :goto_12f

    :catchall_1cf
    move-exception v8

    monitor-exit v9
    :try_end_1d1
    .catchall {:try_start_1ba .. :try_end_1d1} :catchall_1cf

    throw v8
.end method
