.class Lcom/android/server/wifi/WifiController$DeviceActiveState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .registers 2

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 890
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setOperationalMode(I)V

    .line 891
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 892
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 893
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 897
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x26005

    if-ne v1, v2, :cond_f

    .line 898
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    # invokes: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)V

    .line 910
    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    .line 900
    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x2600c

    if-ne v1, v2, :cond_d

    .line 904
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 905
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->reloadTlsNetworksAndReconnect()V

    .line 907
    :cond_25
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DeviceActiveState;->this$0:Lcom/android/server/wifi/WifiController;

    # setter for: Lcom/android/server/wifi/WifiController;->mFirstUserSignOnSeen:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiController;->access$1502(Lcom/android/server/wifi/WifiController;Z)Z

    goto :goto_e
.end method
