.class Lcom/android/server/MsapWifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "MsapWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MsapWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MsapWifiService;


# direct methods
.method constructor <init>(Lcom/android/server/MsapWifiService;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/MsapWifiService$1;->this$0:Lcom/android/server/MsapWifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 155
    .local v1, "responseInfo":Ljava/lang/String;
    const-string v2, "android.net.wifi.EXTRA_ACTION_MSAP_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v0, :cond_32

    .line 157
    const-string v2, "android.net.wifi.MSAP_VENUE_SERVER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 158
    const-string v2, "SMsapWifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ACTION_MSAP_VENUE_SERVER_ADDED event and responseInfo is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/android/server/MsapWifiService$1;->this$0:Lcom/android/server/MsapWifiService;

    invoke-virtual {v2, v1}, Lcom/android/server/MsapWifiService;->notifyVenueServerAdded(Ljava/lang/String;)V

    .line 168
    :cond_32
    :goto_32
    return-void

    .line 160
    :cond_33
    const-string v2, "android.net.wifi.MSAP_VENUE_SERVER_DELETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 161
    iget-object v2, p0, Lcom/android/server/MsapWifiService$1;->this$0:Lcom/android/server/MsapWifiService;

    invoke-virtual {v2, v1}, Lcom/android/server/MsapWifiService;->notifyVenueServerDeleted(Ljava/lang/String;)V

    goto :goto_32

    .line 162
    :cond_41
    const-string v2, "android.net.wifi.MSAP_GAS_RSP_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 163
    iget-object v2, p0, Lcom/android/server/MsapWifiService$1;->this$0:Lcom/android/server/MsapWifiService;

    invoke-virtual {v2, v1}, Lcom/android/server/MsapWifiService;->notifyGasResponse(Ljava/lang/String;)V

    goto :goto_32

    .line 164
    :cond_4f
    const-string v2, "android.net.wifi.MSAP_GAS_REQ_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 165
    iget-object v2, p0, Lcom/android/server/MsapWifiService$1;->this$0:Lcom/android/server/MsapWifiService;

    invoke-virtual {v2, v1}, Lcom/android/server/MsapWifiService;->notifyGasReqStatus(Ljava/lang/String;)V

    goto :goto_32
.end method
