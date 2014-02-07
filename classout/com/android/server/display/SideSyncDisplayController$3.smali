.class Lcom/android/server/display/SideSyncDisplayController$3;
.super Ljava/lang/Object;
.source "SideSyncDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SideSyncDisplayController;->requestEnableSideSync(Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 237
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;III)V
    .registers 13
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v7, 0x2

    .line 246
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onDisplayConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0, v2}, Lcom/android/server/display/SideSyncDisplayController;->access$402(Lcom/android/server/display/SideSyncDisplayController;Z)Z

    .line 248
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$600(Lcom/android/server/display/SideSyncDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$500(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$700(Lcom/android/server/display/SideSyncDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    # invokes: Lcom/android/server/display/SideSyncDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/SideSyncDisplayController;->access$800(Lcom/android/server/display/SideSyncDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 251
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/display/SideSyncDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/SideSyncDisplayController;->access$900(Lcom/android/server/display/SideSyncDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 253
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # setter for: Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I
    invoke-static {v0, v7}, Lcom/android/server/display/SideSyncDisplayController;->access$102(Lcom/android/server/display/SideSyncDisplayController;I)I

    .line 254
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1000(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/server/display/DisplayManagerService$SideSyncListener;->onSideSyncChanged(I)V

    .line 256
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$300(Lcom/android/server/display/SideSyncDisplayController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$200(Lcom/android/server/display/SideSyncDisplayController;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/display/SideSyncDisplayController;->access$600(Lcom/android/server/display/SideSyncDisplayController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 260
    return-void
.end method

.method public onDisplayDisconnected()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 266
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1100(Lcom/android/server/display/SideSyncDisplayController;)Lcom/samsung/wfd/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/wfd/WFDUibcManager;->stop()Z

    .line 268
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$700(Lcom/android/server/display/SideSyncDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$600(Lcom/android/server/display/SideSyncDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/SideSyncDisplayController;->access$500(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # setter for: Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I
    invoke-static {v0, v3}, Lcom/android/server/display/SideSyncDisplayController;->access$102(Lcom/android/server/display/SideSyncDisplayController;I)I

    .line 273
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1000(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/display/DisplayManagerService$SideSyncListener;->onSideSyncChanged(I)V

    .line 274
    return-void
.end method

.method public onDisplayError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lost RTSP connection with Wifi display due to error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/SideSyncDisplayController;->access$700(Lcom/android/server/display/SideSyncDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$3;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/SideSyncDisplayController;->handleConnectionFailure(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/SideSyncDisplayController;->access$1200(Lcom/android/server/display/SideSyncDisplayController;Z)V

    .line 287
    return-void
.end method
