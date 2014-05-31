.class Lcom/android/server/SEAMService$DrsHandler;
.super Landroid/os/Handler;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrsHandler"
.end annotation


# instance fields
.field drs:Lcom/android/server/DrsService;

.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/server/SEAMService$DrsHandler;->this$0:Lcom/android/server/SEAMService;

    .line 510
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 507
    invoke-static {}, Lcom/android/server/DrsService;->getInstance()Lcom/android/server/DrsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    .line 511
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 522
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_36

    .line 543
    :goto_5
    :pswitch_5
    return-void

    .line 524
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_16

    .line 525
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedList;

    .line 526
    .local v1, "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v1}, Lcom/android/server/DrsService;->relabelDataDir(Ljava/util/Queue;)Z

    goto :goto_5

    .line 528
    .end local v1    # "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_16
    const-string v2, "SEAMService"

    const-string v3, "data type not match"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 533
    :pswitch_1e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 534
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 535
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SEAMService$DrsHandler;->drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v0}, Lcom/android/server/DrsService;->relabelAppDir(Ljava/lang/String;)Z

    goto :goto_5

    .line 537
    .end local v0    # "data":Ljava/lang/String;
    :cond_2e
    const-string v2, "SEAMService"

    const-string v3, "data type not match"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 522
    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_1e
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 515
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/SEAMService$DrsHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 517
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 519
    return-void

    .line 517
    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
