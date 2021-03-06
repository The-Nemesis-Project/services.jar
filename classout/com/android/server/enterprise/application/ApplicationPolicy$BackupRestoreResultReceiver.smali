.class Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupRestoreResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .prologue
    .line 5680
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    .prologue
    .line 5680
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5683
    const-string v0, "ApplicationPolicy"

    const-string v1, "onReceiveResult "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5684
    const-string v0, "edm.intent.action.backup.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 5685
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5686
    :try_start_18
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v2, "backupResult"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1802(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    .line 5688
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5689
    monitor-exit v1

    .line 5697
    :cond_2c
    :goto_2c
    return-void

    .line 5689
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_2d

    throw v0

    .line 5690
    :cond_30
    const-string v0, "edm.intent.action.restore.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 5691
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5692
    :try_start_41
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v2, "restoreResult"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1902(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I

    .line 5694
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5695
    monitor-exit v1

    goto :goto_2c

    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_56

    throw v0
.end method
