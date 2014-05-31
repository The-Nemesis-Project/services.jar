.class Lcom/android/server/display/WifiDisplayController$30;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2066
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2067
    .local v1, "action":Ljava/lang/String;
    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 2070
    const-string/jumbo v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_36

    const/4 v4, 0x1

    .line 2074
    .local v4, "enabled":Z
    :goto_18
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v9, v4}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2233
    .end local v4    # "enabled":Z
    :cond_35
    :goto_35
    return-void

    .line 2070
    :cond_36
    const/4 v4, 0x0

    goto :goto_18

    .line 2079
    :cond_38
    const-string v9, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 2081
    const-string v9, "WifiDisplayController"

    const-string v10, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_35

    .line 2085
    :cond_4d
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 2086
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 2089
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v9, v6}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_35

    .line 2094
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7b
    const-string v9, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 2095
    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v9, "wifiP2pDevice"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10, v9}, Lcom/android/server/display/WifiDisplayController;->access$4002(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2098
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$4000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 2103
    :cond_b0
    const-string v9, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dc

    .line 2104
    const/16 v2, 0xe

    .line 2105
    .local v2, "apState":I
    const-string/jumbo v9, "wifi_state"

    const/16 v10, 0xe

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2107
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    const/16 v9, 0xb

    if-ne v2, v9, :cond_35

    .line 2108
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2109
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_35

    .line 2111
    .end local v2    # "apState":I
    :cond_dc
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_145

    .line 2112
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 2114
    .local v5, "info":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_35

    .line 2115
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2116
    const-string/jumbo v9, "wifiInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiInfo;

    .line 2117
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_35

    .line 2121
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 2123
    .local v0, "APFrequency":I
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2124
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP is connected! AP Frquency:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ? WfdFrequency:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;)I

    move-result v9

    if-eq v0, v9, :cond_35

    .line 2126
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v10, 0x22073

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_35

    .line 2131
    .end local v0    # "APFrequency":I
    .end local v5    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_145
    const-string v9, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a6

    .line 2132
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    # setter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$5202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2133
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_186

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_186

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    if-eqz v9, :cond_186

    .line 2134
    const-string v9, "WifiDisplayController"

    const-string v10, "Screen Mirroring is disabled because HDMI is connected"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v10, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2136
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)V

    .line 2138
    :cond_186
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 2139
    :cond_1a6
    const-string v9, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_201

    .line 2141
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v10, "URL"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$5802(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2143
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_35

    .line 2144
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dongle Update URL:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$3100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2146
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillBrokerClosed:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$5900(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x2ee

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_35

    .line 2148
    :cond_201
    const-string v9, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_273

    .line 2149
    const-string/jumbo v3, "true"

    .line 2150
    .local v3, "changed":Ljava/lang/String;
    const-string v9, "changed"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21a

    .line 2151
    const-string v9, "changed"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    :cond_21a
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_24d

    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24d

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-nez v9, :cond_23c

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_24d

    .line 2155
    :cond_23c
    const-string v9, "WifiDisplayController"

    const-string v10, "received power saving mode enabled"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v10, 0x22084

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_35

    .line 2157
    :cond_24d
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v9

    if-nez v9, :cond_35

    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2158
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2159
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_35

    .line 2161
    .end local v3    # "changed":Ljava/lang/String;
    :cond_273
    const-string v9, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f1

    .line 2162
    const-string v9, "WifiDisplayController"

    const-string v10, "LimitedContents : android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$6102(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2165
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_29c

    .line 2166
    const-string v9, "WifiDisplayController"

    const-string v10, "LimitedContents type is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 2169
    :cond_29c
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_2e2

    .line 2170
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "recording"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c3

    .line 2171
    const-string v9, "WifiDisplayController"

    const-string v10, "LimitedContents : recording"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v10, 0x22087

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_35

    .line 2174
    :cond_2c3
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "playback"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2175
    const-string v9, "WifiDisplayController"

    const-string v10, "LimitedContents : playback"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v10, 0x22086

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_35

    .line 2180
    :cond_2e2
    const-string v9, "WifiDisplayController"

    const-string v10, "LimitedContents : Video playing"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_35

    .line 2183
    :cond_2f1
    const-string v9, "android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_308

    .line 2184
    const-string v9, "WifiDisplayController"

    const-string v10, "LimitedContents : android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$6202(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_35

    .line 2186
    :cond_308
    const-string/jumbo v9, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33a

    .line 2187
    const-string v9, "WifiDisplayController"

    const-string/jumbo v10, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2189
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2190
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x2ee

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_35

    .line 2192
    :cond_33a
    const-string v9, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_363

    .line 2193
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2194
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2195
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x2ee

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_35

    .line 2197
    :cond_363
    const-string v9, "com.samsung.wfd.RESULT_WFD_UPDATE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39d

    .line 2198
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v10, "result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2199
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateOnGoing:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$3002(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2200
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static {v11}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 2201
    :cond_39d
    const-string v9, "android.intent.action.WIFI_DISPLAY_SINK_TEARDOWN_FINISHED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3cb

    .line 2203
    const-string v9, "WifiDisplayController"

    const-string v10, "Received android.intent.action.WIFI_DISPLAY_SINK_TEARDOWN_FINISHED"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-nez v9, :cond_35

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2206
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->restartScan()V
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_35

    .line 2207
    :cond_3cb
    const-string v9, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_434

    .line 2209
    const-string v9, "requestState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2212
    .local v7, "requestAccepted":Z
    const-string v9, "WifiDisplayController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received WifiP2pManager.WIFI_P2P_REQUEST_CHANGED_ACTION : requestAccepted = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$3200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    if-nez v9, :cond_35

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$1400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    if-eqz v9, :cond_35

    .line 2217
    if-eqz v7, :cond_426

    .line 2219
    const-string v9, "WifiDisplayController"

    const-string v10, "User accepted PIN connect"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v10, 0x2208a

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2221
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_35

    .line 2225
    :cond_426
    const-string v9, "WifiDisplayController"

    const-string v10, "User cancelled PIN connect or timeout"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_35

    .line 2229
    .end local v7    # "requestAccepted":Z
    :cond_434
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 2230
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$30;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_35
.end method
