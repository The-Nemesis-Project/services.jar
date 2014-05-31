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
    accessFlags = 0xa
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 1014
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    .line 1016
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    .line 1017
    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;
    .registers 6
    .param p1, "targetNetworkType"    # I
    .param p2, "config"    # Landroid/net/NetworkConfig;

    .prologue
    .line 1021
    iget v0, p2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v0, :pswitch_data_5c

    .line 1039
    :pswitch_5
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

    .line 1023
    :pswitch_20
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2c

    .line 1024
    new-instance v0, Landroid/net/wifi/WifiP2pStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiP2pStateTracker;-><init>(ILjava/lang/String;)V

    .line 1036
    :goto_2b
    return-object v0

    .line 1026
    :cond_2c
    new-instance v0, Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_2b

    .line 1028
    :pswitch_34
    new-instance v0, Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/MultiSimMobileDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_2b

    .line 1030
    :pswitch_3c
    new-instance v0, Landroid/net/DummyDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_2b

    .line 1032
    :pswitch_44
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v0

    goto :goto_2b

    .line 1034
    :pswitch_49
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_2b

    .line 1036
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeEthernetStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$300(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_2b

    .line 1021
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_34
        :pswitch_20
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_49
        :pswitch_44
        :pswitch_3c
        :pswitch_52
    .end packed-switch
.end method
