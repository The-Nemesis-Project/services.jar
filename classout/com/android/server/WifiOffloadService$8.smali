.class Lcom/android/server/WifiOffloadService$8;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .registers 2

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1315
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "onReceive -- wifiStateReceiver"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1317
    const-string/jumbo v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1319
    .local v0, "currentWifiState":I
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Wifi state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1321
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_72

    .line 1322
    :cond_3a
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "can reset timer"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1323
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1324
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "resetWifiOffloadTimer "

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v1}, Lcom/android/server/WifiOffloadService;->resetNeverTurnOnWifi()V

    .line 1327
    :cond_55
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1328
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "Reset 5 min timer when wifi turning ON"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1329
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1345
    .end local v0    # "currentWifiState":I
    :cond_71
    :goto_71
    return-void

    .line 1340
    .restart local v0    # "currentWifiState":I
    :cond_72
    if-eqz v0, :cond_76

    if-ne v0, v4, :cond_71

    .line 1341
    :cond_76
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v2, "Reset tryingAutoConnect when wifi is turned OFF"

    invoke-virtual {v1, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1342
    iget-object v1, p0, Lcom/android/server/WifiOffloadService$8;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiOffloadService;->access$202(Lcom/android/server/WifiOffloadService;Z)Z

    goto :goto_71
.end method
