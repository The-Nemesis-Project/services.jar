.class final Lcom/android/server/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 1872
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1873
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 1877
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1878
    .local v1, "message":I
    packed-switch v1, :pswitch_data_6a

    .line 1911
    :cond_7
    :goto_7
    :pswitch_7
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v5, :cond_14

    .line 1913
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1915
    :cond_14
    return-void

    .line 1880
    :pswitch_15
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v5, :cond_1f

    .line 1881
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleEnable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 1883
    :cond_1f
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDisable()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 1887
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    .line 1888
    .local v0, "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_7

    .line 1891
    .end local v0    # "gpsRequest":Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    :pswitch_33
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    invoke-static {v3, v4, v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_7

    .line 1894
    :pswitch_3f
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 1897
    :pswitch_45
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1898
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_7

    .line 1902
    :pswitch_53
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2802(Lcom/android/server/location/GpsLocationProvider;I)I

    goto :goto_7

    .line 1905
    :pswitch_59
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2902(Lcom/android/server/location/GpsLocationProvider;I)I

    goto :goto_7

    .line 1908
    :pswitch_5f
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/location/Location;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V
    invoke-static {v3, v2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V

    goto :goto_7

    .line 1878
    nop

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_15
        :pswitch_25
        :pswitch_33
        :pswitch_3f
        :pswitch_45
        :pswitch_5f
        :pswitch_7
        :pswitch_7
        :pswitch_53
        :pswitch_59
    .end packed-switch
.end method
