.class Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdBridgeAdapter"
.end annotation


# static fields
.field public static final CONNECT_TYPE_CLIENT:I = 0x0

.field public static final CONNECT_TYPE_SERVER:I = 0x1

.field public static final SCREEN_OFF:I = 0x0

.field public static final SCREEN_ON:I = 0x1

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field private static final WFD_BRIDGE_PORT:I = 0x26b5


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBridge:Lcom/android/server/display/WfdBridgeBase;

.field private final mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

.field private mPendingDev:I

.field private mPendingType:I

.field private mScreenState:I

.field private mSinkState:I

.field private mSourceState:I

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/net/InetAddress;)V
    .registers 6
    .param p2, "inet"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1300
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    const-string v0, "WfdBridgeAdapter"

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->TAG:Ljava/lang/String;

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    .line 1229
    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I

    .line 1230
    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I

    .line 1239
    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    .line 1240
    iput v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    .line 1241
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mScreenState:I

    .line 1244
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    .line 1301
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Create WFD Bridge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/16 v0, 0x26b5

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    invoke-static {p2, v0, v1}, Lcom/android/server/display/WfdBridgeBase;->getInstance(Ljava/net/InetAddress;ILcom/android/server/display/WfdBridgeBase$BridgeListner;)Lcom/android/server/display/WfdBridgeBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    .line 1303
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    .prologue
    .line 1221
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mScreenState:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    .prologue
    .line 1221
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 1221
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    .prologue
    .line 1221
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 1221
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I

    return p1
.end method


# virtual methods
.method public connect()V
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase;->connect()V

    .line 1307
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase;->disconnect()V

    .line 1311
    return-void
.end method

.method public getBridgeConnType()I
    .registers 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    instance-of v0, v0, Lcom/android/server/display/WfdBridgeServer;

    if-eqz v0, :cond_8

    .line 1397
    const/4 v0, 0x1

    .line 1400
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getConnAddr()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v1}, Lcom/android/server/display/WfdBridgeBase;->getConnectAddrList()[Ljava/net/InetAddress;

    move-result-object v0

    .line 1364
    .local v0, "addrList":[Ljava/net/InetAddress;
    if-eqz v0, :cond_c

    .line 1365
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1367
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v0}, Lcom/android/server/display/WfdBridgeBase;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWfdEngineRunning()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1391
    const-string v3, "WfdBridgeAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWFDEngineRunning : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    add-int/2addr v0, v5

    if-lez v0, :cond_2a

    move v0, v1

    :goto_17
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    add-int/2addr v0, v3

    if-lez v0, :cond_2c

    :goto_29
    return v1

    :cond_2a
    move v0, v2

    .line 1391
    goto :goto_17

    :cond_2c
    move v1, v2

    .line 1392
    goto :goto_29
.end method

.method public requestSink(I)I
    .registers 4
    .param p1, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1336
    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I

    if-gez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1339
    :cond_11
    const/4 v0, -0x1

    .line 1346
    :goto_12
    return v0

    .line 1341
    :cond_13
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I

    .line 1342
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I

    .line 1344
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/display/WfdBridgeBase;->request(II)V

    goto :goto_12
.end method

.method public requestSource(I)I
    .registers 5
    .param p1, "deviceType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1350
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1352
    :cond_d
    const/4 v0, -0x1

    .line 1359
    :goto_e
    return v0

    .line 1354
    :cond_f
    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I

    .line 1355
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I

    .line 1357
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/WfdBridgeBase;->request(II)V

    goto :goto_e
.end method

.method public setScreenState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 1387
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mScreenState:I

    .line 1388
    return-void
.end method

.method public setSinkState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 1371
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    if-ne p1, v0, :cond_5

    .line 1376
    :goto_4
    return-void

    .line 1374
    :cond_5
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    .line 1375
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WfdBridgeBase;->sendBusyflag(I)V

    goto :goto_4
.end method

.method public setSourceState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 1379
    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    if-ne p1, v0, :cond_5

    .line 1384
    :goto_4
    return-void

    .line 1382
    :cond_5
    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    .line 1383
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridge:Lcom/android/server/display/WfdBridgeBase;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSinkState:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mSourceState:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WfdBridgeBase;->sendBusyflag(I)V

    goto :goto_4
.end method

.method public startWFDEngine(II)V
    .registers 5
    .param p1, "dev"    # I
    .param p2, "type"    # I

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1315
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mBridgeListner:Lcom/android/server/display/WfdBridgeBase$BridgeListner;

    const/16 v1, 0x12e

    invoke-interface {v0, v1}, Lcom/android/server/display/WfdBridgeBase$BridgeListner;->onError(I)V

    .line 1329
    :goto_d
    return-void

    .line 1319
    :cond_e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    .line 1320
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->launchWfdPlayer(I)V
    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2700(Lcom/android/server/display/WifiDisplayAdapter;I)V

    goto :goto_d

    .line 1327
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    invoke-static {v0, v1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2800(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_d
.end method
