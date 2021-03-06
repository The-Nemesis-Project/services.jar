.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreDeleteObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;)V
    .registers 3

    .prologue
    .line 3964
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 3965
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3986
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3987
    :try_start_3
    iput p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mResult:I

    .line 3988
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3989
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3990
    monitor-exit v1

    .line 3991
    return-void

    .line 3990
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 3969
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3970
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3971
    monitor-exit v1

    .line 3972
    return-void

    .line 3971
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public waitForCompletion()V
    .registers 3

    .prologue
    .line 3975
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 3976
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 3978
    :try_start_b
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 3979
    :catch_11
    move-exception v0

    goto :goto_3

    .line 3981
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 3982
    return-void

    .line 3981
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method
