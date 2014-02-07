.class Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WfdBridgeBase$BridgeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)V
    .registers 2

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeConnected()I
    .registers 3

    .prologue
    .line 1247
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Bridge is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v0, 0x0

    return v0
.end method

.method public onConnRequest(II)V
    .registers 4
    .param p1, "dev"    # I
    .param p2, "type"    # I

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->startWFDEngine(II)V

    .line 1274
    return-void
.end method

.method public onError(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    const/4 v3, -0x1

    .line 1278
    const-string v0, "WfdBridgeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_2d

    .line 1280
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayController;->broadcastWfdState(I)V

    .line 1284
    :cond_2d
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2502(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    .line 1285
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2602(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    .line 1286
    return-void
.end method

.method public onGetStatus()I
    .registers 5

    .prologue
    .line 1253
    const-string v1, "WfdBridgeAdapter"

    const-string v2, "onGetStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/16 v0, 0xc8

    .line 1257
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2400(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v1

    if-nez v1, :cond_13

    .line 1258
    const/16 v0, 0x12d

    .line 1260
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1261
    const/16 v0, 0x12e

    .line 1263
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v1

    if-ltz v1, :cond_27

    .line 1264
    const/16 v0, 0x130

    .line 1267
    :cond_27
    const-string v1, "WfdBridgeAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetStatus return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return v0
.end method

.method public onOK()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1290
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "onOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_2b

    .line 1293
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2500(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2600(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->startWFDEngine(II)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2502(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    .line 1295
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->access$2602(Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;I)I

    .line 1297
    :cond_2b
    return-void
.end method
