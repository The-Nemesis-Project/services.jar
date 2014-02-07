.class Lcom/android/server/am/ActivityManagerService$12$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$12;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$12;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$12;)V
    .registers 2

    .prologue
    .line 9519
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 9521
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 9522
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerService;->mDidUpdate:Z

    .line 9523
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_35

    .line 9524
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->val$doneReceivers:Ljava/util/ArrayList;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeLastDonePreBootReceivers(Ljava/util/ArrayList;)V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$900(Ljava/util/ArrayList;)V

    .line 9525
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104062e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 9528
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12$1;->this$1:Lcom/android/server/am/ActivityManagerService$12;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$12;->val$goingCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 9529
    return-void

    .line 9523
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method
