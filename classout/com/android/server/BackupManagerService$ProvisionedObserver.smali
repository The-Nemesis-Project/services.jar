.class Lcom/android/server/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    .line 287
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 288
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v1, v2, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 292
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 294
    .local v0, "isProvisioned":Z
    iget-object v3, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    if-nez v1, :cond_10

    if-eqz v0, :cond_30

    :cond_10
    const/4 v2, 0x1

    :goto_11
    iput-boolean v2, v3, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 300
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 301
    :try_start_18
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_2e

    if-nez v1, :cond_2e

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_2e

    .line 304
    iget-object v2, p0, Lcom/android/server/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v4, 0x2932e00

    # invokes: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;J)V

    .line 306
    :cond_2e
    monitor-exit v3

    .line 307
    return-void

    .line 294
    :cond_30
    const/4 v2, 0x0

    goto :goto_11

    .line 306
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    throw v2
.end method
