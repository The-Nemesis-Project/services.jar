.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 191
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string/jumbo v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$002(Lcom/android/server/wifi/WifiNotificationController;I)I

    .line 193
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 289
    :cond_23
    :goto_23
    :pswitch_23
    return-void

    .line 212
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 214
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, v3, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 217
    sget-object v2, Lcom/android/server/wifi/WifiNotificationController$5;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_aa

    goto :goto_23

    .line 230
    :pswitch_50
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$100(Lcom/android/server/wifi/WifiNotificationController;)V

    goto :goto_23

    .line 242
    :cond_56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 244
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v4}, Lcom/android/server/wifi/WifiNotificationController;->access$200(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$300(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto :goto_23

    .line 246
    :cond_76
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 247
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->updateResources()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$400(Lcom/android/server/wifi/WifiNotificationController;)V

    goto :goto_23

    .line 248
    :cond_84
    const-string v2, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 249
    const-string v2, "nid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 250
    .local v1, "nid":I
    # getter for: Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_9e

    .line 251
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$602(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto :goto_23

    .line 252
    :cond_9e
    const v2, 0x2df96b

    if-ne v1, v2, :cond_23

    .line 253
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$702(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_23

    .line 217
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_23
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method
