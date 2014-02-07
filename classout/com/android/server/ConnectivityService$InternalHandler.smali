.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4610
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 4611
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4612
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4617
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_1aa

    .line 4739
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 4619
    :pswitch_8
    const/4 v1, 0x0

    .line 4620
    .local v1, "causedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v14

    .line 4621
    :try_start_e
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v15}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v15

    if-ne v13, v15, :cond_3d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 4623
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v1

    .line 4626
    :cond_3d
    monitor-exit v14
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_5d

    .line 4627
    if-eqz v1, :cond_7

    .line 4628
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NetTransition Wakelock for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " released by timeout"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_7

    .line 4626
    :catchall_5d
    move-exception v13

    :try_start_5e
    monitor-exit v14
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v13

    .line 4632
    .end local v1    # "causedBy":Ljava/lang/String;
    :pswitch_60
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 4633
    .local v12, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual {v12}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto :goto_7

    .line 4637
    .end local v12    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :pswitch_6a
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 4638
    .local v7, "netType":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    .line 4639
    .local v2, "condition":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v13, v7, v2}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;II)V

    goto :goto_7

    .line 4644
    .end local v2    # "condition":I
    .end local v7    # "netType":I
    :pswitch_7a
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 4645
    .restart local v7    # "netType":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 4646
    .local v10, "sequence":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v13, v7, v10}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_7

    .line 4651
    .end local v7    # "netType":I
    .end local v10    # "sequence":I
    :pswitch_8b
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 4652
    .local v9, "preference":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v13, v9}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    .line 4657
    .end local v9    # "preference":I
    :pswitch_98
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a9

    const/4 v3, 0x1

    .line 4661
    .local v3, "enabled":Z
    :goto_a0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v13, v3}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_7

    .line 4657
    .end local v3    # "enabled":Z
    :cond_a9
    const/4 v3, 0x0

    goto :goto_a0

    .line 4668
    :pswitch_ab
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_bc

    const/4 v3, 0x1

    .line 4669
    .restart local v3    # "enabled":Z
    :goto_b3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetMobileDataSecondary(Z)V
    invoke-static {v13, v3}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_7

    .line 4668
    .end local v3    # "enabled":Z
    :cond_bc
    const/4 v3, 0x0

    goto :goto_b3

    .line 4675
    :pswitch_be
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 4680
    :pswitch_c7
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_dc

    const/4 v5, 0x1

    .line 4681
    .local v5, "met":Z
    :goto_cf
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v13, v14, v5}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    .line 4680
    .end local v5    # "met":Z
    :cond_dc
    const/4 v5, 0x0

    goto :goto_cf

    .line 4686
    :pswitch_de
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    .line 4687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v14

    # invokes: Lcom/android/server/ConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static {v13, v14}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_7

    .line 4693
    :pswitch_fa
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    .line 4694
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v13, v4}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 4698
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_109
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 4699
    .local v8, "networkType":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11e

    const/4 v3, 0x1

    .line 4700
    .restart local v3    # "enabled":Z
    :goto_115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v13, v8, v3}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    .line 4699
    .end local v3    # "enabled":Z
    :cond_11e
    const/4 v3, 0x0

    goto :goto_115

    .line 4706
    .end local v8    # "networkType":I
    :pswitch_120
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 4707
    .restart local v8    # "networkType":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_135

    const/4 v3, 0x1

    .line 4708
    .restart local v3    # "enabled":Z
    :goto_12c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnableSecondary(IZ)V
    invoke-static {v13, v8, v3}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    .line 4707
    .end local v3    # "enabled":Z
    :cond_135
    const/4 v3, 0x0

    goto :goto_12c

    .line 4713
    .end local v8    # "networkType":I
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 4714
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/net/NetworkInfo;

    invoke-virtual {v14, v13}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    .line 4719
    :pswitch_154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    .line 4720
    .local v11, "tag":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-ne v13, v11, :cond_185

    .line 4721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v6, v13, v14

    check-cast v6, Landroid/net/MobileDataStateTracker;

    .line 4723
    .local v6, "mobileDst":Landroid/net/MobileDataStateTracker;
    if-eqz v6, :cond_17c

    .line 4724
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v13}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 4734
    .end local v6    # "mobileDst":Landroid/net/MobileDataStateTracker;
    .end local v11    # "tag":I
    :cond_17c
    :goto_17c
    :pswitch_17c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSettingChanged()V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    .line 4727
    .restart local v11    # "tag":I
    :cond_185
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " != tag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_17c

    .line 4617
    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_60
        :pswitch_7
        :pswitch_8b
        :pswitch_6a
        :pswitch_7a
        :pswitch_7
        :pswitch_98
        :pswitch_8
        :pswitch_be
        :pswitch_c7
        :pswitch_de
        :pswitch_fa
        :pswitch_109
        :pswitch_137
        :pswitch_154
        :pswitch_ab
        :pswitch_120
        :pswitch_17c
    .end packed-switch
.end method
