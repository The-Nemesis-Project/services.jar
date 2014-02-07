.class Lcom/android/server/ConnectivityService$LongLifeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongLifeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .prologue
    .line 3410
    iput-object p1, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 3413
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3414
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 3415
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->isLongLifeMode()Z

    move-result v4

    if-nez v4, :cond_17

    .line 3466
    :cond_16
    :goto_16
    return-void

    .line 3418
    :cond_17
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v4

    if-nez v4, :cond_6b

    .line 3419
    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v5

    .line 3423
    :try_start_22
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 3424
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v6

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3429
    :cond_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_22 .. :try_end_4d} :catchall_9e

    .line 3430
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v5

    aget-object v3, v4, v5

    .line 3431
    .local v3, "thisNet":Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v4, v3}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3432
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v5

    # invokes: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;IZ)V

    .line 3434
    .end local v3    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_6b
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3435
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_84

    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)I

    move-result v6

    # invokes: Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v4, v5, v6}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;I)V

    .line 3465
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_84
    :goto_84
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 3429
    :catchall_9e
    move-exception v4

    :try_start_9f
    monitor-exit v5
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v4

    .line 3436
    :cond_a1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 3437
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->isLongLifeMode()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3440
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v4

    if-nez v4, :cond_ff

    .line 3441
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v5

    aget-object v3, v4, v5

    .line 3442
    .restart local v3    # "thisNet":Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v5

    # invokes: Lcom/android/server/ConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z
    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;I)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 3444
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v5

    aget-object v2, v4, v5

    .line 3447
    .local v2, "otherNet":Landroid/net/NetworkStateTracker;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v4

    if-nez v4, :cond_ff

    .line 3448
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    # invokes: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v4, v5, v7}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;IZ)V

    .line 3449
    const-string v4, "ConnectivityService"

    const-string v5, "Mobile Network route table entried flushed out forcefully "

    invoke-static {v4, v5}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    .end local v2    # "otherNet":Landroid/net/NetworkStateTracker;
    .end local v3    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_ff
    :goto_ff
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3463
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_84

    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->getConnectivityChangeDelay()I
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)I

    move-result v6

    # invokes: Lcom/android/server/ConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v4, v5, v6}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;I)V

    goto/16 :goto_84

    .line 3452
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "thisNet":Landroid/net/NetworkStateTracker;
    :cond_11a
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Just update the Network settings for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    invoke-interface {v3, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 3455
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v4, v3}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3456
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    # invokes: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v4, v5, v10}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;IZ)V

    .line 3457
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    # invokes: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v4, v5, v7}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;IZ)V

    .line 3458
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed route table entries for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send Connected broadcast delayed instent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ff
.end method
