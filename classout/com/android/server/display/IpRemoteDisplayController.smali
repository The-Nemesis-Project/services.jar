.class final Lcom/android/server/display/IpRemoteDisplayController;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;,
        Lcom/android/server/display/IpRemoteDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "IpRemoteDisplayController"


# instance fields
.field private isRunningHomeSync:Z

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mBridgeReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mContext:Landroid/content/Context;

.field private mDebugEnable:Z

.field private mHDMIConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

.field private mPrevNativeDisposeCompleted:Z

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

.field private mWfdUibcManager:Landroid/media/WFDUibcManager;

.field private mWifiDisplayOnSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/IpRemoteDisplayController$Listener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 100
    iput-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 101
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 105
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    .line 113
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDebugEnable:Z

    .line 115
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 116
    iput-boolean v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    .line 177
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$2;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    .line 766
    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$12;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$12;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 119
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    .line 122
    new-instance v3, Landroid/media/WFDUibcManager;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mBridgeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/display/IpRemoteDisplayController$1;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 162
    .local v2, "settingsObserver":Landroid/database/ContentObserver;
    const-string/jumbo v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->disableWifiDisplay(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/IpRemoteDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/WFDUibcManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/IpRemoteDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"    # Landroid/view/Surface;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 76
    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/IpRemoteDisplayController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/media/RemoteDisplay;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/IpRemoteDisplayController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->requestPopup(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayerByWBS(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/IpRemoteDisplayController;ILjava/net/InetAddress;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/net/InetAddress;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/IpRemoteDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/IpRemoteDisplayController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/IpRemoteDisplayController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/IpRemoteDisplayController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/display/IpRemoteDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/IpRemoteDisplayController;->enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .registers 19
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I
    .param p6, "devicetype"    # I

    .prologue
    .line 618
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " display: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " flags: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-nez p1, :cond_48

    if-nez p2, :cond_48

    .line 620
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$10;

    invoke-direct {v2, p0}, Lcom/android/server/display/IpRemoteDisplayController$10;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    :cond_48
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v1, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v1, p2, :cond_64

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v1, p3, :cond_64

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_64

    iget v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    move/from16 v0, p5

    if-eq v1, v0, :cond_d0

    .line 633
    :cond_64
    iget-object v5, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 634
    .local v5, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 636
    .local v3, "oldSurface":Landroid/view/Surface;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay << display:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " surface:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertiseDisplay << width:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " height:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 640
    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 641
    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayWidth:I

    .line 642
    move/from16 v0, p4

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayHeight:I

    .line 643
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mAdvertisedDisplayFlags:I

    .line 645
    move/from16 v10, p6

    .line 647
    .local v10, "connectedMode":I
    iget-object v11, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$11;

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/IpRemoteDisplayController$11;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIII)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 667
    .end local v3    # "oldSurface":Landroid/view/Surface;
    .end local v5    # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v10    # "connectedMode":I
    :cond_d0
    return-void
.end method

.method private checkDebugLogEnable()V
    .registers 3

    .prologue
    .line 211
    const-string v0, "secmm.wfds.ipc"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 213
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "IpRemoteDisplayController debug log enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDebugEnable:Z

    .line 218
    :goto_1a
    return-void

    .line 217
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mDebugEnable:Z

    goto :goto_1a
.end method

.method private computeFeatureState()I
    .registers 2

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 10
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x0

    .line 684
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    move v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method

.method private disableWifiDisplay(I)V
    .registers 6
    .param p1, "connectedMode"    # I

    .prologue
    .line 421
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableWifiDisplay currenct mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :try_start_18
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_43
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_43} :catch_44

    .line 431
    :goto_43
    return-void

    .line 427
    :catch_44
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_43
.end method

.method private declared-synchronized disconnect()V
    .registers 3

    .prologue
    .line 589
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    if-eqz v0, :cond_4e

    .line 591
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Disconnect is called with disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 593
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mListener:Lcom/android/server/display/IpRemoteDisplayController$Listener;

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnecting()V

    .line 595
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v0}, Landroid/media/WFDUibcManager;->stop()Z

    .line 596
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 599
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mPrevNativeDisposeCompleted:Z

    .line 601
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayConnected:Z

    .line 605
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 607
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->unadvertiseDisplay()V

    .line 612
    :cond_4e
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_57

    .line 613
    monitor-exit p0

    return-void

    .line 589
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enableWifiDisplay(ILjava/net/InetAddress;)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 533
    if-gez p1, :cond_a

    .line 534
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Failed to enable WifiDisplay "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :goto_9
    return-void

    .line 538
    :cond_a
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_20

    .line 539
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSourceState(I)V

    .line 545
    move v0, p1

    .line 547
    .local v0, "reqDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$9;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/display/IpRemoteDisplayController$9;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 541
    .end local v0    # "reqDevType":I
    :cond_20
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridge is null, then failed to enable WifiDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private enableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 266
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->checkDebugLogEnable()V

    .line 269
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v2, :cond_10

    .line 270
    const-string v2, "IpRemoteDisplayController"

    const-string v3, "enableWifiDisplay mRemoteDisplay already existed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_f
    return-void

    .line 274
    :cond_10
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableWifiDisplay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deviceType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move v0, p3

    .line 278
    .local v0, "devicetype":I
    const/4 v2, 0x4

    invoke-direct {p0, v5, v2}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 280
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$5;

    invoke-direct {v3, p0}, Lcom/android/server/display/IpRemoteDisplayController$5;-><init>(Lcom/android/server/display/IpRemoteDisplayController;)V

    invoke-static {v2, v3}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    .line 320
    invoke-virtual {p0, v5}, Lcom/android/server/display/IpRemoteDisplayController;->broadcastWfdState(I)V

    .line 323
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    invoke-virtual {v2}, Landroid/media/WFDUibcManager;->start()Z

    .line 325
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestEnable processing init option :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-nez p4, :cond_79

    .line 329
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v1, "initParam":Lorg/json/JSONObject;
    invoke-direct {p0, v1, p3}, Lcom/android/server/display/IpRemoteDisplayController;->requestDataSetting(Lorg/json/JSONObject;I)V

    .line 331
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    .line 334
    .end local v1    # "initParam":Lorg/json/JSONObject;
    :cond_79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 335
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRemoteDIsplayInterface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v2, "IpRemoteDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initParam = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v3, Lcom/android/server/display/IpRemoteDisplayController$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$6;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    iget-object v4, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v4, p4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 414
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/IpRemoteDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f
.end method

.method private handleConnectionFailure(Z)V
    .registers 6
    .param p1, "b"    # Z

    .prologue
    .line 674
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->disconnect()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a} :catch_b

    .line 681
    :goto_a
    return-void

    .line 677
    :catch_b
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_a
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 435
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchWfdPlayer deviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/IpRemoteDisplayController$7;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method private launchWfdPlayerByWBS(ILjava/net/InetAddress;)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 562
    if-ltz p1, :cond_4

    if-nez p2, :cond_c

    .line 563
    :cond_4
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_b
    return-void

    .line 567
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_1a

    .line 568
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->setSinkState(I)V

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->launchWfdPlayer(ILjava/net/InetAddress;)V

    goto :goto_b

    .line 570
    :cond_1a
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridge is null, then failed to launch WfdPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private reportFeatureState()V
    .registers 4

    .prologue
    .line 470
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "reportFeatureState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/android/server/display/IpRemoteDisplayController;->computeFeatureState()I

    move-result v0

    .line 472
    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/IpRemoteDisplayController$8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$8;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method

.method private requestDataSetting(Lorg/json/JSONObject;I)V
    .registers 20
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "deviceType"    # I

    .prologue
    .line 709
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestDataSetting static : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    packed-switch p2, :pswitch_data_f0

    .line 747
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    .line 749
    :cond_31
    :goto_31
    return-void

    .line 712
    :pswitch_32
    const/16 v3, 0x500

    const/16 v4, 0x2d0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_31

    .line 716
    :pswitch_47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 717
    .local v16, "wm":Landroid/view/WindowManager;
    if-eqz v16, :cond_31

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 718
    const/16 v3, 0x500

    .line 719
    .local v3, "wmWidth":I
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 720
    .local v4, "wmHeight":I
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device\'s window height:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sparse-switch v4, :sswitch_data_100

    .line 728
    const/16 v4, 0x2d0

    .line 731
    :goto_83
    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_31

    .line 725
    :sswitch_94
    const/16 v4, 0x320

    .line 726
    goto :goto_83

    .line 735
    .end local v3    # "wmWidth":I
    .end local v4    # "wmHeight":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :pswitch_97
    const/16 v7, 0x780

    const/16 v8, 0x438

    const/16 v9, 0x1e

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto :goto_31

    .line 738
    :pswitch_ac
    const/16 v7, 0x3c0

    const/16 v8, 0x21c

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_31

    .line 741
    :pswitch_c2
    const/16 v7, 0x356

    const/16 v8, 0x1e0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_31

    .line 744
    :pswitch_d9
    const/16 v7, 0x2d0

    const/16 v8, 0x1e0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xa

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v15, p2

    invoke-direct/range {v5 .. v15}, Lcom/android/server/display/IpRemoteDisplayController;->setParamData(Lorg/json/JSONObject;IIIZZIZZI)V

    goto/16 :goto_31

    .line 710
    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_32
        :pswitch_97
        :pswitch_ac
        :pswitch_c2
        :pswitch_d9
    .end packed-switch

    .line 722
    :sswitch_data_100
    .sparse-switch
        0x320 -> :sswitch_94
        0x640 -> :sswitch_94
    .end sparse-switch
.end method

.method private requestPopup(I)V
    .registers 6
    .param p1, "cause"    # I

    .prologue
    .line 489
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    const-string v2, "cause"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    .line 496
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_16
    return-void

    .line 493
    :catch_17
    move-exception v0

    .line 494
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IpRemoteDisplayController"

    const-string/jumbo v3, "unable to start WfdBroker activity "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private sendDisplayEventToExtendedListener(II)V
    .registers 6
    .param p1, "param"    # I
    .param p2, "event"    # I

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 754
    return-void
.end method

.method private setParamData(Lorg/json/JSONObject;IIIZZIZZI)V
    .registers 15
    .param p1, "initParam"    # Lorg/json/JSONObject;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "use_hdcp"    # Z
    .param p6, "use_audio"    # Z
    .param p7, "qoslevel"    # I
    .param p8, "use_uibc"    # Z
    .param p9, "use_pdm"    # Z
    .param p10, "deviceType"    # I

    .prologue
    .line 691
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParamData deviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :try_start_18
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 694
    const-string v1, "height"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string v1, "fps"

    invoke-virtual {p1, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    const-string/jumbo v1, "use_hdcp"

    invoke-virtual {p1, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 697
    const-string/jumbo v1, "use_audio"

    invoke-virtual {p1, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 698
    const-string v1, "qoslevel"

    invoke-virtual {p1, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 699
    const-string/jumbo v1, "use_uibc"

    invoke-virtual {p1, v1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 700
    const-string/jumbo v1, "use_pdm"

    invoke-virtual {p1, v1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 701
    const-string v1, "device_type"

    invoke-virtual {p1, v1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_4a} :catch_4b

    .line 705
    :goto_4a
    return-void

    .line 702
    :catch_4b
    move-exception v0

    .line 703
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "IpRemoteDisplayController"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method private tryCommunication(I)V
    .registers 5
    .param p1, "requestType"    # I

    .prologue
    .line 522
    move v0, p1

    .line 524
    .local v0, "requestDevType":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_b

    .line 525
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSource(I)I

    .line 529
    :goto_a
    return-void

    .line 527
    :cond_b
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is not avaiable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 6
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "requestType"    # I

    .prologue
    .line 502
    move v0, p2

    .line 503
    .local v0, "requestDevType":I
    if-eqz p1, :cond_13

    .line 504
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_9

    .line 505
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 512
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_1b

    .line 513
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->requestSink(I)I

    .line 518
    :goto_12
    return-void

    .line 508
    :cond_13
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "Wrong sinkDevice info. Check the parameter..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 515
    :cond_1b
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "WfdBridgeServer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private unadvertiseDisplay()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 670
    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V

    .line 671
    return-void
.end method


# virtual methods
.method public broadcastWfdState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 780
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "Intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 784
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 790
    return-void
.end method

.method public connectWfdBridgeServer(Ljava/net/InetAddress;)V
    .registers 5
    .param p1, "inet"    # Ljava/net/InetAddress;

    .prologue
    .line 793
    const-string v1, "IpRemoteDisplayController"

    const-string v2, "connectWfdBridgeServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object v0, p1

    .line 797
    .local v0, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-nez v1, :cond_18

    .line 798
    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 799
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->connect()V

    .line 801
    :cond_18
    return-void
.end method

.method public disconnectWfdBridgeServer()V
    .registers 3

    .prologue
    .line 804
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "disconnectWfdBridgeServer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_1b

    .line 806
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->disconnect()V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    .line 813
    :goto_1a
    return-void

    .line 811
    :cond_1b
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WfdBridgeServer is already null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getWifiDisplayBridgeStatus()I
    .registers 5

    .prologue
    .line 826
    const/4 v0, 0x0

    .line 828
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 829
    const/4 v0, 0x1

    .line 832
    :cond_e
    const-string v1, "IpRemoteDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiDisplayBridgeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return v0
.end method

.method public isWfdEngineRunning()Z
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_b

    .line 838
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    .line 840
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdBridgeServer:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 817
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v0, 0x1

    .line 821
    :goto_14
    return v0

    .line 820
    :cond_15
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "WifiDisplayBridge is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public notifyBridgeStatus(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 844
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/IpRemoteDisplayController;->sendDisplayEventToExtendedListener(II)V

    .line 845
    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 3

    .prologue
    .line 757
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Entering HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 759
    return-void
.end method

.method public notifyExitHomeSyncApp()V
    .registers 3

    .prologue
    .line 762
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Exiting HomeSync Application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->isRunningHomeSync:Z

    .line 764
    return-void
.end method

.method public requestDisableWifiDisplay(I)I
    .registers 4
    .param p1, "connectedMode"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/IpRemoteDisplayController$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/IpRemoteDisplayController$4;-><init>(Lcom/android/server/display/IpRemoteDisplayController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .registers 12
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "deviceType"    # I
    .param p4, "options"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "requestEnableWifiDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v6, p0, Lcom/android/server/display/IpRemoteDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/IpRemoteDisplayController$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$3;-><init>(Lcom/android/server/display/IpRemoteDisplayController;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public requestEnableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 6
    .param p1, "sinkDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "deviceType"    # I

    .prologue
    .line 237
    const-string v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestEnableWifiDisplay deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    packed-switch p2, :pswitch_data_32

    .line 248
    const-string v0, "IpRemoteDisplayController"

    const-string v1, "Wrong device Type! Check your device type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_22
    return-void

    .line 240
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController;->mWfdUibcManager:Landroid/media/WFDUibcManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/WFDUibcManager;->setCoupleShotMode(Z)V

    .line 242
    :pswitch_29
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_22

    .line 245
    :pswitch_2d
    invoke-direct {p0, p2}, Lcom/android/server/display/IpRemoteDisplayController;->tryCommunication(I)V

    goto :goto_22

    .line 238
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method
