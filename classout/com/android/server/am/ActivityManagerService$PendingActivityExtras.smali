.class public Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingActivityExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public haveResult:Z

.field public result:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;->haveResult:Z

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;->result:Landroid/os/Bundle;

    .line 479
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;->activity:Lcom/android/server/am/ActivityRecord;

    .line 480
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 483
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopActivityExtras failed: timeout retrieving from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    monitor-enter p0

    .line 485
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityExtras;->haveResult:Z

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 487
    monitor-exit p0

    .line 488
    return-void

    .line 487
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v0
.end method
