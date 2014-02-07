.class Lcom/android/server/MountService$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    .prologue
    .line 3768
    iput-object p1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "operation"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 3776
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3777
    :try_start_9
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    .line 3778
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_74

    .line 3779
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEncryptionStatusChanged: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", operation = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v3, v3, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    const-string v3, "done"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 3783
    :try_start_58
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "mount"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    const-string v7, "moveMount"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_73
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_58 .. :try_end_73} :catch_77

    .line 3807
    :cond_73
    :goto_73
    return-void

    .line 3778
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v3

    .line 3784
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :catch_77
    move-exception v1

    .line 3785
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v3, "MountService"

    const-string v4, "Failed to excute moveMount"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    .line 3788
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_80
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v3, v3, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const-string v3, "batch_fail"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "batch_no_fs"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 3791
    :cond_9e
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v4, "nofs"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 3792
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 3794
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v3, v0, v2, v4}, Lcom/android/server/MountService;->access$3500(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto :goto_73

    .line 3796
    .end local v0    # "action":Ljava/lang/String;
    :cond_af
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v3, v3, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const-string v3, "batch_done"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 3799
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v3, p1}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;Ljava/lang/String;)I

    goto :goto_73

    .line 3801
    :cond_cb
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v3, v3, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v3, "batch_start"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 3804
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v4, "crypto"

    # invokes: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v3, v4, p1, v6, v7}, Lcom/android/server/MountService;->access$3600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3805
    iget-object v3, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v4, "crypto"

    # invokes: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v3, v4, p1, v7, v6}, Lcom/android/server/MountService;->access$3600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_73
.end method
