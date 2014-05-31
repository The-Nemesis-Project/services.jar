.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .registers 2

    .prologue
    .line 2453
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2456
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2457
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2458
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 2459
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;)V

    .line 2460
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2463
    const/4 v0, 0x1

    .line 2464
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 2469
    const/4 v0, 0x0

    .line 2472
    :goto_7
    return v0

    .line 2466
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$5600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_7

    .line 2464
    :pswitch_data_14
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method
