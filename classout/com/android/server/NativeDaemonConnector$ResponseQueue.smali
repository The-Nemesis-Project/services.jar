.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "maxCount"    # I

    .prologue
    .line 523
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 525
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 526
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .registers 11
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/android/server/NativeDaemonEvent;

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v5

    .line 531
    :try_start_4
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 532
    .local v3, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v4, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_ae

    if-ne v4, p1, :cond_a

    .line 533
    move-object v0, v3

    move-object v1, v0

    .line 537
    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_1c
    if-nez v1, :cond_b0

    .line 539
    :goto_1e
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v4, v6, :cond_8b

    .line 540
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more buffered than allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 545
    .restart local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    const-string v4, "NativeDaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_1e .. :try_end_86} :catchall_87

    goto :goto_1e

    .line 556
    .end local v3    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_87
    move-exception v4

    move-object v0, v1

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_89
    :try_start_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_ae

    throw v4

    .line 549
    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8b
    :try_start_8b
    new-instance v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_87

    .line 550
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :try_start_91
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 552
    :goto_96
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 555
    iget v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v4, :cond_a5

    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 556
    :cond_a5
    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_ae

    .line 558
    :try_start_a6
    iget-object v4, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_ab
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_ab} :catch_ac

    .line 560
    :goto_ab
    return-void

    .line 559
    :catch_ac
    move-exception v4

    goto :goto_ab

    .line 556
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_ae
    move-exception v4

    goto :goto_89

    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b0
    move-object v0, v1

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_96

    :cond_b2
    move-object v1, v0

    .end local v0    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto/16 :goto_1c
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 593
    const-string v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v3

    .line 595
    :try_start_8
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 596
    .local v1, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 598
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 599
    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .registers 14
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "logCmd"    # Ljava/lang/String;

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 566
    .local v1, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget-object v7, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v7

    .line 567
    :try_start_4
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 568
    .local v4, "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    iget v6, v4, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_50

    if-ne v6, p1, :cond_a

    .line 569
    move-object v1, v4

    move-object v2, v1

    .line 573
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v4    # "pendingCmd":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .local v2, "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :goto_1c
    if-nez v2, :cond_58

    .line 574
    :try_start_1e
    new-instance v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v1, p1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_55

    .line 575
    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :try_start_23
    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 577
    :goto_28
    iget v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 580
    iget v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v6, :cond_37

    iget-object v6, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 581
    :cond_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_50

    .line 582
    const/4 v5, 0x0

    .line 584
    .local v5, "result":Lcom/android/server/NativeDaemonEvent;
    :try_start_39
    iget-object v6, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v7, p2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/NativeDaemonEvent;

    move-object v5, v0
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_46} :catch_53

    .line 586
    :goto_46
    if-nez v5, :cond_4f

    .line 587
    const-string v6, "NativeDaemonConnector.ResponseQueue"

    const-string v7, "Timeout waiting for response"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_4f
    return-object v5

    .line 581
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Lcom/android/server/NativeDaemonEvent;
    :catchall_50
    move-exception v6

    :goto_51
    :try_start_51
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v6

    .line 585
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "result":Lcom/android/server/NativeDaemonEvent;
    :catch_53
    move-exception v6

    goto :goto_46

    .line 581
    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .end local v5    # "result":Lcom/android/server/NativeDaemonEvent;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :catchall_55
    move-exception v6

    move-object v1, v2

    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_51

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    :cond_58
    move-object v1, v2

    .end local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_28

    :cond_5a
    move-object v2, v1

    .end local v1    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_1c
.end method
