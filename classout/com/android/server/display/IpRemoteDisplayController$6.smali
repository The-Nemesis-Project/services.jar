.class Lcom/android/server/display/IpRemoteDisplayController$6;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$devicetype:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 3

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .registers 15
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 343
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 344
    const-string v0, "IpRemoteDisplayController"

    const-string v2, "onDisplayConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0, v7}, Lcom/android/server/display/IpRemoteDisplayController;->access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 346
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/media/WFDUibcManager;->setUIBCNegotiagedResolution(FF)V

    .line 352
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1600(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 353
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget v6, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->access$1700(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 356
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    if-ne v0, v8, :cond_6d

    .line 358
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 362
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0, v7}, Lcom/android/server/display/IpRemoteDisplayController;->access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 363
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$400(Lcom/android/server/display/IpRemoteDisplayController;)V

    .line 366
    :cond_6d
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v2, 0x4

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v0, v8, v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$1200(Lcom/android/server/display/IpRemoteDisplayController;II)V

    .line 368
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    :cond_73
    return-void
.end method

.method public onDisplayDisconnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 374
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    .line 375
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 377
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closed RTSP connection with Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 381
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    .line 383
    :cond_5b
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 386
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_88

    .line 388
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 392
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController;->access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 393
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$400(Lcom/android/server/display/IpRemoteDisplayController;)V

    .line 397
    :cond_88
    return-void
.end method

.method public onDisplayError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 402
    const-string v0, "IpRemoteDisplayController"

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

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->val$devicetype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 406
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const v1, 0x2207b

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V

    .line 408
    :cond_56
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$1800(Lcom/android/server/display/IpRemoteDisplayController;Z)V

    .line 409
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$6;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 411
    :cond_62
    return-void
.end method
