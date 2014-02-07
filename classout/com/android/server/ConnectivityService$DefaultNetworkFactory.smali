.class Lcom/android/server/ConnectivityService$DefaultNetworkFactory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/ConnectivityService$NetworkFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    .line 868
    iput-object p3, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    .line 869
    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;
    .registers 6
    .param p1, "targetNetworkType"    # I
    .param p2, "config"    # Landroid/net/NetworkConfig;

    .prologue
    .line 873
    iget v0, p2, Landroid/net/NetworkConfig;->radio:I

    rem-int/lit8 v0, v0, 0x32

    packed-switch v0, :pswitch_data_64

    .line 922
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a NetworkStateTracker for an unknown radio type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :pswitch_22
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2e

    .line 876
    new-instance v0, Landroid/net/wifi/WifiP2pStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiP2pStateTracker;-><init>(ILjava/lang/String;)V

    .line 920
    :goto_2d
    return-object v0

    .line 878
    :cond_2e
    new-instance v0, Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_2d

    .line 911
    :pswitch_36
    new-instance v0, Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    iget v2, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-static {v2}, Landroid/net/MultiSimConnectivityManager;->getSimSlotFromTypeMobile(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Landroid/net/MultiSimMobileDataStateTracker;-><init>(ILjava/lang/String;I)V

    goto :goto_2d

    .line 914
    :pswitch_44
    new-instance v0, Landroid/net/DummyDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_2d

    .line 916
    :pswitch_4c
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v0

    goto :goto_2d

    .line 918
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_2d

    .line 920
    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeEthernetStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_2d

    .line 873
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_36
        :pswitch_22
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_51
        :pswitch_4c
        :pswitch_44
        :pswitch_5a
    .end packed-switch
.end method
