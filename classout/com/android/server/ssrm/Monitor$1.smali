.class Lcom/android/server/ssrm/Monitor$1;
.super Landroid/os/Handler;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->initHandlerThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 509
    :try_start_2
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_be

    .line 549
    :cond_7
    :goto_7
    return-void

    .line 511
    :pswitch_8
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v4, v6}, Lcom/android/server/ssrm/Monitor;->onForegroundAppChanged(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_7

    .line 546
    :catch_14
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/Monitor;->onReceiveBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_7

    .line 517
    :pswitch_23
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 518
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 519
    .local v0, "command":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "values":[Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 521
    array-length v4, v3

    if-ne v4, v5, :cond_5e

    .line 522
    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/android/server/ssrm/Monitor;->handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CFMS_COMMAND:: values[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 525
    :cond_5e
    array-length v4, v3

    if-ne v4, v6, :cond_7

    .line 526
    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/ssrm/Monitor;->handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    # getter for: Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CFMS_COMMAND:: values[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", values[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 534
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :pswitch_98
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 535
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 536
    .restart local v0    # "command":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 537
    .restart local v3    # "values":[Ljava/lang/String;
    if-eqz v3, :cond_7

    array-length v4, v3

    if-ne v4, v6, :cond_7

    .line 538
    iget-object v4, p0, Lcom/android/server/ssrm/Monitor$1;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v4, v4, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v2

    .line 539
    .local v2, "sm":Lcom/android/server/ssrm/SortingMachine;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/ssrm/SortingMachine;->reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_bc} :catch_14

    goto/16 :goto_7

    .line 509
    :pswitch_data_be
    .packed-switch 0x9
        :pswitch_8
        :pswitch_19
        :pswitch_23
        :pswitch_98
    .end packed-switch
.end method
