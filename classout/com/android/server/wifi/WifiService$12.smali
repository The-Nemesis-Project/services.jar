.class Lcom/android/server/wifi/WifiService$12;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 1052
    const-string v5, "EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v5, "wps_start"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string/jumbo v5, "wps_cancel"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1054
    :cond_19
    const-string/jumbo v5, "wps_start"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1055
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1056
    .local v1, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1057
    const-string v5, "WifiService"

    const-string/jumbo v6, "wps_start --> data enable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1060
    :cond_41
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v4

    .line 1061
    .local v4, "wifiApState":I
    const/16 v5, 0xa

    if-eq v4, v5, :cond_4f

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6b

    .line 1063
    :cond_4f
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1064
    const/16 v0, 0xa

    .line 1065
    .local v0, "count":I
    :cond_57
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_6b

    .line 1066
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1067
    add-int/lit8 v0, v0, -0x1

    .line 1068
    if-nez v0, :cond_57

    .line 1078
    .end local v0    # "count":I
    .end local v1    # "mCm":Landroid/net/ConnectivityManager;
    .end local v4    # "wifiApState":I
    :cond_6a
    :goto_6a
    return-void

    .line 1073
    :cond_6b
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1074
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0xbe

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1075
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1076
    iget-object v5, p0, Lcom/android/server/wifi/WifiService$12;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v5, v2}, Lcom/android/server/wifi/WifiService;->callSECApi(Landroid/os/Message;)I

    goto :goto_6a
.end method
