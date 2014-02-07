.class Lcom/android/server/BatteryService$DormantSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DormantSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 3

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 309
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 15
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 313
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 315
    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 318
    :try_start_16
    iget-object v11, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v9, "dormant_switch_onoff"

    const/4 v12, 0x0

    invoke-static {v0, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_112

    move v9, v7

    :goto_22
    # setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v11, v9}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 319
    iget-object v11, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v9, "dormant_disable_led_indicator"

    const/4 v12, 0x0

    invoke-static {v0, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_115

    move v9, v7

    :goto_31
    # setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v11, v9}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 320
    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v11, "dormant_always"

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v7, :cond_118

    :goto_3f
    # setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v9, v7}, Lcom/android/server/BatteryService;->access$602(Lcom/android/server/BatteryService;Z)Z

    .line 321
    monitor-exit v10
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_11b

    .line 323
    const-string v7, "dormant_start_hour"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 324
    .local v4, "dormantStartHour":I
    const-string v7, "dormant_start_min"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 325
    .local v5, "dormantStartMinute":I
    const-string v7, "dormant_end_hour"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 326
    .local v1, "dormantEndHour":I
    const-string v7, "dormant_end_min"

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 327
    .local v2, "dormantEndMinute":I
    mul-int/lit8 v7, v4, 0x3c

    add-int v6, v7, v5

    .line 328
    .local v6, "dormantStartMinutes":I
    mul-int/lit8 v7, v1, 0x3c

    add-int v3, v7, v2

    .line 329
    .local v3, "dormantEndMinutes":I
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant OnOff Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant Disable LED Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant Always Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant time Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ~ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;II)V

    .line 336
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 337
    :try_start_107
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 338
    monitor-exit v8
    :try_end_111
    .catchall {:try_start_107 .. :try_end_111} :catchall_11e

    .line 339
    return-void

    .end local v1    # "dormantEndHour":I
    .end local v2    # "dormantEndMinute":I
    .end local v3    # "dormantEndMinutes":I
    .end local v4    # "dormantStartHour":I
    .end local v5    # "dormantStartMinute":I
    .end local v6    # "dormantStartMinutes":I
    :cond_112
    move v9, v8

    .line 318
    goto/16 :goto_22

    :cond_115
    move v9, v8

    .line 319
    goto/16 :goto_31

    :cond_118
    move v7, v8

    .line 320
    goto/16 :goto_3f

    .line 321
    :catchall_11b
    move-exception v7

    :try_start_11c
    monitor-exit v10
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    throw v7

    .line 338
    .restart local v1    # "dormantEndHour":I
    .restart local v2    # "dormantEndMinute":I
    .restart local v3    # "dormantEndMinutes":I
    .restart local v4    # "dormantStartHour":I
    .restart local v5    # "dormantStartMinute":I
    .restart local v6    # "dormantStartMinutes":I
    :catchall_11e
    move-exception v7

    :try_start_11f
    monitor-exit v8
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw v7
.end method
