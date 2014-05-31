.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
.super Landroid/os/Handler;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBondingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method public constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    .line 375
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 376
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_7b6

    .line 676
    :cond_7
    :goto_7
    return-void

    .line 381
    :pswitch_8
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, "EVENT_ENABLE_SB_INTERFACES called"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 382
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 383
    :try_start_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 385
    .local v6, "siopMessage":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 386
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 390
    :goto_40
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 392
    .end local v6    # "siopMessage":Landroid/os/Message;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_75

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_75

    .line 393
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6a

    const-string v12, "mDisableBySIOP is true so that convert sb state as idle"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 394
    :cond_6a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 396
    :cond_75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x7

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 397
    .local v4, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    .line 399
    monitor-exit v13

    goto/16 :goto_7

    .end local v4    # "message":Landroid/os/Message;
    :catchall_9f
    move-exception v12

    monitor-exit v13
    :try_end_a1
    .catchall {:try_start_18 .. :try_end_a1} :catchall_9f

    throw v12

    .line 388
    .restart local v6    # "siopMessage":Landroid/os/Message;
    :cond_a2
    const/4 v12, 0x5

    :try_start_a3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v6, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_9f

    goto :goto_40

    .line 403
    .end local v6    # "siopMessage":Landroid/os/Message;
    :pswitch_aa
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 404
    :try_start_af
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_d3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_BOOT_COMPLETED called / enable : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v14}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 405
    :cond_d3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_12e

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_ef

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 410
    :cond_ef
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 414
    .restart local v4    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    .end local v4    # "message":Landroid/os/Message;
    :goto_128
    monitor-exit v13

    goto/16 :goto_7

    :catchall_12b
    move-exception v12

    monitor-exit v13
    :try_end_12d
    .catchall {:try_start_af .. :try_end_12d} :catchall_12b

    throw v12

    .line 416
    :cond_12e
    :try_start_12e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_135
    .catchall {:try_start_12e .. :try_end_135} :catchall_12b

    goto :goto_128

    .line 422
    :pswitch_136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 423
    :try_start_13b
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_15f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_ENABLE_SB called / enable : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v14}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 424
    :cond_15f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_269

    .line 430
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_19c

    .line 431
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 438
    :cond_19c
    :goto_19c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_1f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    if-eqz v12, :cond_1f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-nez v12, :cond_1f3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_1f3

    .line 439
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 440
    .local v11, "wifiMessage":Landroid/os/Message;
    const/4 v12, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 445
    .end local v11    # "wifiMessage":Landroid/os/Message;
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_239

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_239

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_239

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 447
    .local v5, "mobileMessage":Landroid/os/Message;
    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 449
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x1

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$1800(Lcom/samsung/smartbonding/SmartBondingService;Z)V

    .line 452
    .end local v5    # "mobileMessage":Landroid/os/Message;
    :cond_239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_24b

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x0

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    .line 455
    :cond_24b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 456
    .restart local v4    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    monitor-exit v13

    goto/16 :goto_7

    .end local v4    # "message":Landroid/os/Message;
    :catchall_266
    move-exception v12

    monitor-exit v13
    :try_end_268
    .catchall {:try_start_13b .. :try_end_268} :catchall_266

    throw v12

    .line 434
    :cond_269
    :try_start_269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_270
    .catchall {:try_start_269 .. :try_end_270} :catchall_266

    goto/16 :goto_19c

    .line 461
    :pswitch_272
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_27d

    const-string v12, "EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 462
    :cond_27d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$1900(Lcom/samsung/smartbonding/SmartBondingService;)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 464
    .restart local v4    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    .line 468
    .end local v4    # "message":Landroid/os/Message;
    :pswitch_29e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 469
    :try_start_2a3
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_2ae

    const-string v12, "EVENT_MOBILE_CONNECTION_RENEW called"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 470
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_2ef

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-nez v12, :cond_2ef

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I

    .line 477
    :cond_2d1
    :goto_2d1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x7

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 478
    .restart local v4    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    monitor-exit v13

    goto/16 :goto_7

    .end local v4    # "message":Landroid/os/Message;
    :catchall_2ec
    move-exception v12

    monitor-exit v13
    :try_end_2ee
    .catchall {:try_start_2a3 .. :try_end_2ee} :catchall_2ec

    throw v12

    .line 473
    :cond_2ef
    :try_start_2ef
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfacesEnabled()Z

    move-result v12

    if-eqz v12, :cond_2d1

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    :try_end_300
    .catchall {:try_start_2ef .. :try_end_300} :catchall_2ec

    goto :goto_2d1

    .line 483
    :pswitch_301
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 484
    :try_start_306
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_32a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_UPDATE_SB_STATE called / mDisableBySIOP "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 485
    :cond_32a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_370

    .line 486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_36a

    .line 487
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_34a

    const-string v12, "sb state is on working"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 488
    :cond_34a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2400(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_35b

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2500(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 491
    :cond_35b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x3

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 521
    :cond_36a
    :goto_36a
    monitor-exit v13

    goto/16 :goto_7

    :catchall_36d
    move-exception v12

    monitor-exit v13
    :try_end_36f
    .catchall {:try_start_306 .. :try_end_36f} :catchall_36d

    throw v12

    .line 494
    :cond_370
    :try_start_370
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_3db

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x2

    if-eq v12, v14, :cond_36a

    .line 496
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_390

    const-string v12, "sb state is on enabled"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 497
    :cond_390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_3c4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x3

    if-eq v12, v14, :cond_3c4

    .line 498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 499
    .local v2, "enableMessage":Landroid/os/Message;
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    .end local v2    # "enableMessage":Landroid/os/Message;
    :cond_3c4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x2

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto :goto_36a

    .line 506
    :cond_3db
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v12

    if-eqz v12, :cond_413

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_36a

    .line 508
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_3fb

    const-string v12, "sb state is on idle"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 509
    :cond_3fb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x1

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I

    goto/16 :goto_36a

    .line 514
    :cond_413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    if-eqz v12, :cond_36a

    .line 515
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_428

    const-string v12, "sb state is on none"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    .line 516
    :cond_428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/4 v14, 0x0

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I
    :try_end_43e
    .catchall {:try_start_370 .. :try_end_43e} :catchall_36d

    goto/16 :goto_36a

    .line 525
    :pswitch_440
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 526
    .local v8, "toastID":I
    const-string v4, ""

    .line 527
    .local v4, "message":Ljava/lang/String;
    const/4 v9, 0x1

    .line 528
    .local v9, "toastTime":I
    const/4 v12, 0x2

    if-ne v8, v12, :cond_45d

    .line 529
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 531
    .restart local v4    # "message":Ljava/lang/String;
    :cond_45d
    const/4 v12, 0x3

    if-ne v8, v12, :cond_46d

    .line 532
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 534
    .restart local v4    # "message":Ljava/lang/String;
    :cond_46d
    const/4 v12, 0x1

    if-ne v8, v12, :cond_47e

    .line 535
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407ae

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 536
    .restart local v4    # "message":Ljava/lang/String;
    const/4 v9, 0x0

    .line 538
    :cond_47e
    const/4 v12, 0x4

    if-ne v8, v12, :cond_48e

    .line 539
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b4

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 541
    .restart local v4    # "message":Ljava/lang/String;
    :cond_48e
    const/4 v12, 0x5

    if-ne v8, v12, :cond_49e

    .line 542
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b5

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 544
    .restart local v4    # "message":Ljava/lang/String;
    :cond_49e
    const/4 v12, 0x6

    if-ne v8, v12, :cond_4ae

    .line 545
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407af

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 547
    .restart local v4    # "message":Ljava/lang/String;
    :cond_4ae
    const/4 v12, 0x7

    if-ne v8, v12, :cond_4be

    .line 548
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 550
    .restart local v4    # "message":Ljava/lang/String;
    :cond_4be
    const/16 v12, 0x8

    if-ne v8, v12, :cond_4cf

    .line 551
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 553
    .restart local v4    # "message":Ljava/lang/String;
    :cond_4cf
    const/16 v12, 0x9

    if-ne v8, v12, :cond_4e1

    .line 554
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 555
    .restart local v4    # "message":Ljava/lang/String;
    const/4 v9, 0x0

    .line 557
    :cond_4e1
    const/16 v12, 0xa

    if-ne v8, v12, :cond_4f3

    .line 558
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 559
    .restart local v4    # "message":Ljava/lang/String;
    const/4 v9, 0x0

    .line 561
    :cond_4f3
    const/16 v12, 0xb

    if-ne v8, v12, :cond_504

    .line 562
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 564
    .restart local v4    # "message":Ljava/lang/String;
    :cond_504
    const/16 v12, 0xc

    if-ne v8, v12, :cond_515

    .line 565
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10407b9

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "message":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 567
    .restart local v4    # "message":Ljava/lang/String;
    :cond_515
    const/16 v12, 0xd

    if-ne v8, v12, :cond_524

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v13, 0xd

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v12, v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_7

    .line 571
    :cond_524
    const/16 v12, 0xe

    if-ne v8, v12, :cond_533

    .line 572
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const/16 v13, 0xe

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V
    invoke-static {v12, v13}, Lcom/samsung/smartbonding/SmartBondingService;->access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V

    goto/16 :goto_7

    .line 575
    :cond_533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3100(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 576
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 580
    .end local v4    # "message":Ljava/lang/String;
    .end local v7    # "toast":Landroid/widget/Toast;
    .end local v8    # "toastID":I
    .end local v9    # "toastTime":I
    :pswitch_544
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 581
    :try_start_549
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_564

    .line 582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3200(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    if-nez v12, :cond_56a

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3300(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 590
    :cond_564
    :goto_564
    monitor-exit v13

    goto/16 :goto_7

    :catchall_567
    move-exception v12

    monitor-exit v13
    :try_end_569
    .catchall {:try_start_549 .. :try_end_569} :catchall_567

    throw v12

    .line 584
    :cond_56a
    :try_start_56a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3200(Lcom/samsung/smartbonding/SmartBondingService;)I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_57d

    .line 585
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showTimerToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3400(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_564

    .line 587
    :cond_57d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_584
    .catchall {:try_start_56a .. :try_end_584} :catchall_567

    goto :goto_564

    .line 594
    :pswitch_585
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3600(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto/16 :goto_7

    .line 598
    :pswitch_58e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 599
    :try_start_593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    if-eqz v12, :cond_5bd

    .line 600
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3700(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_5b5

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$3800(Lcom/samsung/smartbonding/SmartBondingService;)V

    .line 608
    :goto_5af
    monitor-exit v13

    goto/16 :goto_7

    :catchall_5b2
    move-exception v12

    monitor-exit v13
    :try_end_5b4
    .catchall {:try_start_593 .. :try_end_5b4} :catchall_5b2

    throw v12

    .line 603
    :cond_5b5
    :try_start_5b5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V

    goto :goto_5af

    .line 606
    :cond_5bd
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V
    :try_end_5c4
    .catchall {:try_start_5b5 .. :try_end_5c4} :catchall_5b2

    goto :goto_5af

    .line 612
    :pswitch_5c5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 613
    :try_start_5ca
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4000(Lcom/samsung/smartbonding/SmartBondingService;)Z

    move-result v14

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$3902(Lcom/samsung/smartbonding/SmartBondingService;Z)Z

    .line 614
    monitor-exit v13

    goto/16 :goto_7

    :catchall_5dc
    move-exception v12

    monitor-exit v13
    :try_end_5de
    .catchall {:try_start_5ca .. :try_end_5de} :catchall_5dc

    throw v12

    .line 618
    :pswitch_5df
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 619
    :try_start_5e4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 620
    .local v10, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    if-eqz v10, :cond_5f8

    .line 621
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    iget-object v14, v10, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4100(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v12

    iput-object v12, v10, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    .line 623
    :cond_5f8
    monitor-exit v13

    goto/16 :goto_7

    .end local v10    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :catchall_5fb
    move-exception v12

    monitor-exit v13
    :try_end_5fd
    .catchall {:try_start_5e4 .. :try_end_5fd} :catchall_5fb

    throw v12

    .line 627
    :pswitch_5fe
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v13

    .line 628
    :try_start_603
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_668

    .line 629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "start_poll"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_631

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4202(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    .line 632
    :cond_631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_662

    .line 633
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const/16 v14, 0xa

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 634
    .local v4, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    const-wide/16 v14, 0x2710

    invoke-virtual {v12, v4, v14, v15}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 640
    .end local v4    # "message":Landroid/os/Message;
    :cond_662
    :goto_662
    monitor-exit v13

    goto/16 :goto_7

    :catchall_665
    move-exception v12

    monitor-exit v13
    :try_end_667
    .catchall {:try_start_603 .. :try_end_667} :catchall_665

    throw v12

    .line 637
    :cond_668
    :try_start_668
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    const-string v14, ""

    # setter for: Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$4202(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    invoke-static {v14}, Lcom/samsung/smartbonding/SmartBondingService;->access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    move-result-object v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_68f
    .catchall {:try_start_668 .. :try_end_68f} :catchall_665

    goto :goto_662

    .line 644
    :pswitch_690
    const-string v3, "/sdcard/log"

    .line 646
    .local v3, "logPath":Ljava/lang/String;
    :try_start_692
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mkdir -p "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 647
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6c8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : create log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_6c8
    .catch Ljava/io/IOException; {:try_start_692 .. :try_end_6c8} :catch_78d

    .line 652
    :cond_6c8
    :goto_6c8
    :try_start_6c8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chmod 777 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 653
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6fe

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : make permission log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_6fe
    .catch Ljava/io/IOException; {:try_start_6c8 .. :try_end_6fe} :catch_79b

    .line 657
    :cond_6fe
    :goto_6fe
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/smartbonding"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 659
    :try_start_711
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mkdir -p "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 660
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_747

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : create log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_747
    .catch Ljava/io/IOException; {:try_start_711 .. :try_end_747} :catch_7a9

    .line 665
    :cond_747
    :goto_747
    :try_start_747
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chmod 777 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 666
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setHttpLogEnabled : make permission log folder : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V
    :try_end_77d
    .catch Ljava/io/IOException; {:try_start_747 .. :try_end_77d} :catch_77f

    goto/16 :goto_7

    .line 667
    :catch_77f
    move-exception v1

    .line 668
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 648
    .end local v1    # "e":Ljava/io/IOException;
    :catch_78d
    move-exception v1

    .line 649
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6c8

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_6c8

    .line 654
    .end local v1    # "e":Ljava/io/IOException;
    :catch_79b
    move-exception v1

    .line 655
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_6fe

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto/16 :goto_6fe

    .line 661
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7a9
    move-exception v1

    .line 662
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z
    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->access$000()Z

    move-result v12

    if-eqz v12, :cond_747

    const-string v12, "setHttpLogEnabled : can\'t create folder"

    # invokes: Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/samsung/smartbonding/SmartBondingService;->access$100(Ljava/lang/String;)V

    goto :goto_747

    .line 379
    :pswitch_data_7b6
    .packed-switch 0x1
        :pswitch_136
        :pswitch_8
        :pswitch_29e
        :pswitch_440
        :pswitch_58e
        :pswitch_690
        :pswitch_301
        :pswitch_5c5
        :pswitch_5df
        :pswitch_5fe
        :pswitch_272
        :pswitch_aa
        :pswitch_544
        :pswitch_585
    .end packed-switch
.end method
