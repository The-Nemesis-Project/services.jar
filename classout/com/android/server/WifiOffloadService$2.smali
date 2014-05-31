.class Lcom/android/server/WifiOffloadService$2;
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
    .line 541
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 545
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v4, "onReceive -- WiFiTimerReceiver"

    invoke-virtual {v2, v4}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive -- WiFiTimerReceiver action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 549
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 551
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 552
    .local v1, "currentBatteryStatus":Landroid/content/Intent;
    if-eqz v1, :cond_50

    .line 553
    iget-object v4, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v2, 0x2

    const-string/jumbo v5, "status"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v2, v5, :cond_6c

    move v2, v3

    :goto_4e
    iput-boolean v2, v4, Lcom/android/server/WifiOffloadService;->mIsBatteryCharging:Z

    .line 555
    :cond_50
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    # setter for: Lcom/android/server/WifiOffloadService;->isBootCompleted:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiOffloadService;->access$402(Lcom/android/server/WifiOffloadService;Z)Z

    .line 556
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 557
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimer()V

    .line 559
    :cond_62
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$2;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 562
    .end local v1    # "currentBatteryStatus":Landroid/content/Intent;
    :cond_6b
    return-void

    .line 553
    .restart local v1    # "currentBatteryStatus":Landroid/content/Intent;
    :cond_6c
    const/4 v2, 0x0

    goto :goto_4e
.end method
