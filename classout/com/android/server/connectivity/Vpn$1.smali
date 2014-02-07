.class Lcom/android/server/connectivity/Vpn$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.server.connectivity.Vpn.VPN_CONNECTED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 172
    const-string v9, "Vpn"

    const-string v10, "Got Vpn connected intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "VPN_IFACE"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 175
    .local v6, "ifaceObject":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "VPN_DNS"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, "dnsAddressObject":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "VPN_DOMAIN"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 178
    .local v8, "searchDomainObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 179
    .local v5, "iface":Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, "dnsAddress":Ljava/lang/String;
    const-string v7, ""

    .line 183
    .local v7, "searchDomain":Ljava/lang/String;
    if-eqz v6, :cond_3b

    .line 184
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    :cond_3b
    if-eqz v3, :cond_41

    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    :cond_41
    if-eqz v8, :cond_47

    .line 192
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 195
    :cond_47
    if-eqz v1, :cond_b3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b3

    .line 196
    if-eqz v5, :cond_ab

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_ab

    .line 197
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "dnsAddressArray":[Ljava/lang/String;
    if-nez v7, :cond_61

    .line 199
    const-string v7, ""

    .line 202
    :cond_61
    array-length v9, v2

    const/4 v10, 0x4

    if-gt v9, v10, :cond_a1

    array-length v9, v2

    if-lez v9, :cond_a1

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;

    move-result-object v9

    if-eqz v9, :cond_a1

    .line 204
    const-string v9, "Vpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting DNS server to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :try_start_88
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;

    move-result-object v9

    invoke-interface {v9, v5, v2, v7}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 209
    const-string v9, "Vpn"

    const-string v10, "DNS server set"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_a1} :catch_a2

    .line 268
    .end local v1    # "dnsAddress":Ljava/lang/String;
    .end local v2    # "dnsAddressArray":[Ljava/lang/String;
    .end local v3    # "dnsAddressObject":Ljava/lang/Object;
    .end local v5    # "iface":Ljava/lang/String;
    .end local v6    # "ifaceObject":Ljava/lang/Object;
    .end local v7    # "searchDomain":Ljava/lang/String;
    .end local v8    # "searchDomainObject":Ljava/lang/Object;
    :cond_a1
    :goto_a1
    return-void

    .line 211
    .restart local v1    # "dnsAddress":Ljava/lang/String;
    .restart local v2    # "dnsAddressArray":[Ljava/lang/String;
    .restart local v3    # "dnsAddressObject":Ljava/lang/Object;
    .restart local v5    # "iface":Ljava/lang/String;
    .restart local v6    # "ifaceObject":Ljava/lang/Object;
    .restart local v7    # "searchDomain":Ljava/lang/String;
    .restart local v8    # "searchDomainObject":Ljava/lang/Object;
    :catch_a2
    move-exception v4

    .line 212
    .local v4, "e":Landroid/os/RemoteException;
    const-string v9, "Vpn"

    const-string v10, "Failed to set DNS server"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 219
    .end local v2    # "dnsAddressArray":[Ljava/lang/String;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_ab
    const-string v9, "Vpn"

    const-string v10, "Can\'t read iface info"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 224
    :cond_b3
    const-string v9, "Vpn"

    const-string v10, "Can\'t read DNS server address"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 227
    .end local v1    # "dnsAddress":Ljava/lang/String;
    .end local v3    # "dnsAddressObject":Ljava/lang/Object;
    .end local v5    # "iface":Ljava/lang/String;
    .end local v6    # "ifaceObject":Ljava/lang/Object;
    .end local v7    # "searchDomain":Ljava/lang/String;
    .end local v8    # "searchDomainObject":Ljava/lang/Object;
    :cond_bb
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.server.connectivity.Vpn.VPN_DISCONNECTED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 229
    const-string v9, "Vpn"

    const-string v10, "Got Vpn disconnected intent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v5, ""

    .line 232
    .restart local v5    # "iface":Ljava/lang/String;
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 233
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_135

    .line 235
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_122

    .line 237
    const-string v5, "wlan0"

    .line 244
    :goto_e7
    if-eqz v5, :cond_12c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_12c

    .line 246
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;

    move-result-object v9

    if-eqz v9, :cond_a1

    .line 248
    :try_start_f7
    const-string v9, "Vpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting DNS for iface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkManagementService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Landroid/os/INetworkManagementService;

    move-result-object v9

    invoke-interface {v9, v5}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_118} :catch_119

    goto :goto_a1

    .line 251
    :catch_119
    move-exception v4

    .line 253
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v9, "Vpn"

    const-string v10, "Failed to set default interface for DNS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 241
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_122
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    goto :goto_e7

    .line 260
    :cond_12c
    const-string v9, "Vpn"

    const-string v10, "Failed get active interface"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1

    .line 265
    :cond_135
    const-string v9, "Vpn"

    const-string v10, "Failed get connectivity manager."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1
.end method
