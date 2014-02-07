.class Lcom/android/server/BackupManagerService$EdmFullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFullObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2

    .prologue
    .line 6371
    iput-object p1, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/BackupManagerService$1;

    .prologue
    .line 6371
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6380
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onBackupPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6381
    return-void
.end method

.method public onEndBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6385
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6386
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_14

    .line 6387
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2500(Lcom/android/server/BackupManagerService;I)V

    .line 6390
    :goto_13
    return-void

    .line 6389
    :cond_14
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2500(Lcom/android/server/BackupManagerService;I)V

    goto :goto_13
.end method

.method public onEndRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6404
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6405
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_14

    .line 6406
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2600(Lcom/android/server/BackupManagerService;I)V

    .line 6409
    :goto_13
    return-void

    .line 6408
    :cond_14
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2600(Lcom/android/server/BackupManagerService;I)V

    goto :goto_13
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6399
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onRestorePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6400
    return-void
.end method

.method public onStartBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6375
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    return-void
.end method

.method public onStartRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6394
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onStartRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6395
    return-void
.end method

.method public onTimeout()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 6413
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6414
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v0, :cond_14

    .line 6415
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/BackupManagerService;->access$2500(Lcom/android/server/BackupManagerService;I)V

    .line 6419
    :goto_13
    return-void

    .line 6417
    :cond_14
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/BackupManagerService;->access$2600(Lcom/android/server/BackupManagerService;I)V

    goto :goto_13
.end method
