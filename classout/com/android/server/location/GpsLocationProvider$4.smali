.class Lcom/android/server/location/GpsLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 722
    const/4 v4, 0x0

    .line 723
    .local v4, "ssid":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v5

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4b

    .line 726
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v5

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->currentSSID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1600(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;

    move-result-object v4

    .line 734
    :goto_1c
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 735
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v5

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1800(Lcom/android/server/location/GpsLocationProvider$WifiState;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 736
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 737
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 744
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4a
    :goto_4a
    return-void

    .line 727
    :cond_4b
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v5

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->state:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1500(Lcom/android/server/location/GpsLocationProvider$WifiState;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4a

    .line 728
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v5

    # getter for: Lcom/android/server/location/GpsLocationProvider$WifiState;->originalSSID:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1700(Lcom/android/server/location/GpsLocationProvider$WifiState;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    .line 742
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_63
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$4;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWifiState:Lcom/android/server/location/GpsLocationProvider$WifiState;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$WifiState;

    move-result-object v5

    # invokes: Lcom/android/server/location/GpsLocationProvider$WifiState;->handleFailure()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider$WifiState;->access$1900(Lcom/android/server/location/GpsLocationProvider$WifiState;)V

    goto :goto_4a
.end method
