.class final Lcom/android/server/ThermalService$BootCompReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermalService;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermalService;)V
    .registers 2

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThermalService;Lcom/android/server/ThermalService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/ThermalService;
    .param p2, "x1"    # Lcom/android/server/ThermalService$1;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/ThermalService$BootCompReceiver;-><init>(Lcom/android/server/ThermalService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Received Boot Complete message"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/thermal_sensor_config.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/thermal_throttle_config.xml"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 394
    :cond_23
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exiting Thermal Management: Config files does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_2c
    :goto_2c
    return-void

    .line 399
    :cond_2d
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    # getter for: Lcom/android/server/ThermalService;->mCoolingManager:Landroid/thermal/ThermalCoolingManager;
    invoke-static {v5}, Lcom/android/server/ThermalService;->access$400(Lcom/android/server/ThermalService;)Landroid/thermal/ThermalCoolingManager;

    move-result-object v5

    if-eqz v5, :cond_47

    .line 400
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    # getter for: Lcom/android/server/ThermalService;->mCoolingManager:Landroid/thermal/ThermalCoolingManager;
    invoke-static {v5}, Lcom/android/server/ThermalService;->access$400(Lcom/android/server/ThermalService;)Landroid/thermal/ThermalCoolingManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    # getter for: Lcom/android/server/ThermalService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/ThermalService;->access$200(Lcom/android/server/ThermalService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/thermal/ThermalCoolingManager;->init(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 405
    :cond_47
    new-instance v2, Lcom/android/server/ThermalService$ThermalParser;

    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    const-string v6, "/system/etc/thermal_sensor_config.xml"

    invoke-direct {v2, v5, v6}, Lcom/android/server/ThermalService$ThermalParser;-><init>(Lcom/android/server/ThermalService;Ljava/lang/String;)V

    .line 407
    .local v2, "mThermalParser":Lcom/android/server/ThermalService$ThermalParser;
    :try_start_50
    invoke-virtual {v2}, Lcom/android/server/ThermalService$ThermalParser;->parse()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_88

    .line 414
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    invoke-virtual {v2}, Lcom/android/server/ThermalService$ThermalParser;->getPlatformInfo()Lcom/android/server/ThermalService$PlatformInfo;

    move-result-object v6

    # setter for: Lcom/android/server/ThermalService;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;
    invoke-static {v5, v6}, Lcom/android/server/ThermalService;->access$502(Lcom/android/server/ThermalService;Lcom/android/server/ThermalService$PlatformInfo;)Lcom/android/server/ThermalService$PlatformInfo;

    .line 415
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    # getter for: Lcom/android/server/ThermalService;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;
    invoke-static {v5}, Lcom/android/server/ThermalService;->access$500(Lcom/android/server/ThermalService;)Lcom/android/server/ThermalService$PlatformInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ThermalService$PlatformInfo;->printAttrs()V

    .line 418
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    invoke-virtual {v2}, Lcom/android/server/ThermalService$ThermalParser;->getThermalZoneList()Ljava/util/ArrayList;

    move-result-object v6

    # setter for: Lcom/android/server/ThermalService;->mThermalZonesList:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/android/server/ThermalService;->access$602(Lcom/android/server/ThermalService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 421
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    # getter for: Lcom/android/server/ThermalService;->mThermalZonesList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/ThermalService;->access$600(Lcom/android/server/ThermalService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/thermal/ThermalZone;

    .line 422
    .local v4, "tz":Landroid/thermal/ThermalZone;
    invoke-virtual {v4}, Landroid/thermal/ThermalZone;->printAttrs()V

    goto :goto_78

    .line 408
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "tz":Landroid/thermal/ThermalZone;
    :catch_88
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThermalService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ThermalManagement XML Parsing Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_93
    new-instance v3, Lcom/android/server/ThermalService$Notify;

    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    sget-object v6, Landroid/thermal/ThermalServiceEventQueue;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v3, v5, v6}, Lcom/android/server/ThermalService$Notify;-><init>(Lcom/android/server/ThermalService;Ljava/util/concurrent/BlockingQueue;)V

    .line 427
    .local v3, "notifier":Lcom/android/server/ThermalService$Notify;
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "ThermalNotifier"

    invoke-direct {v5, v3, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 430
    iget-object v5, p0, Lcom/android/server/ThermalService$BootCompReceiver;->this$0:Lcom/android/server/ThermalService;

    invoke-virtual {v5}, Lcom/android/server/ThermalService;->startMonitoringZones()V

    goto :goto_2c
.end method
