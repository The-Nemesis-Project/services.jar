.class Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Lcom/android/server/display/WfdBridgeBase$BridgeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)V
    .registers 2

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeConnected()I
    .registers 3

    .prologue
    .line 879
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "Bridge is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public onConnRequest(IILjava/net/InetAddress;)V
    .registers 5
    .param p1, "dev"    # I
    .param p2, "type"    # I
    .param p3, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    .line 906
    return-void
.end method

.method public onError(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    const/4 v3, -0x1

    .line 910
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

    .line 911
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_21

    .line 916
    :cond_21
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 917
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 918
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/IpRemoteDisplayController;->notifyBridgeStatus(I)V

    .line 919
    return-void
.end method

.method public onGetStatus()I
    .registers 5

    .prologue
    .line 885
    const-string v1, "WfdBridgeAdapter"

    const-string v2, "onGetStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/16 v0, 0xc8

    .line 889
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mScreenState:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2000(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    if-nez v1, :cond_13

    .line 890
    const/16 v0, 0x12d

    .line 892
    :cond_13
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 893
    const/16 v0, 0x12e

    .line 895
    :cond_1d
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    if-ltz v1, :cond_27

    .line 896
    const/16 v0, 0x130

    .line 899
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

    .line 900
    return v0
.end method

.method public onOK(Ljava/net/InetAddress;)V
    .registers 6
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, -0x1

    .line 923
    const-string v0, "WfdBridgeAdapter"

    const-string v1, "onOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v0, v0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->notifyBridgeStatus(I)V

    .line 926
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v0

    if-ltz v0, :cond_34

    .line 927
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2100(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # getter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2200(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->startWFDEngine(IILjava/net/InetAddress;)V

    .line 928
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingDev:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2102(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 929
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter$1;->this$1:Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;

    # setter for: Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->mPendingType:I
    invoke-static {v0, v3}, Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;->access$2202(Lcom/android/server/display/IpRemoteDisplayController$WfdBridgeAdapter;I)I

    .line 931
    :cond_34
    return-void
.end method
