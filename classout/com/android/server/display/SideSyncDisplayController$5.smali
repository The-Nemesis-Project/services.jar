.class Lcom/android/server/display/SideSyncDisplayController$5;
.super Ljava/lang/Object;
.source "SideSyncDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SideSyncDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayController;)V
    .registers 2

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$700(Lcom/android/server/display/SideSyncDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1400(Lcom/android/server/display/SideSyncDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$400(Lcom/android/server/display/SideSyncDisplayController;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 475
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for Wifi display RTSP connection after 20 seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$700(Lcom/android/server/display/SideSyncDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$5;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/display/SideSyncDisplayController;->handleConnectionFailure(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/SideSyncDisplayController;->access$1200(Lcom/android/server/display/SideSyncDisplayController;Z)V

    .line 480
    :cond_42
    return-void
.end method
