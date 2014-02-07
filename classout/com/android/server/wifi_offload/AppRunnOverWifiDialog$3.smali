.class Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;
.super Ljava/lang/Object;
.source "AppRunnOverWifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;


# direct methods
.method constructor <init>(Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->USER_RESPONSE:I

    .line 95
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_22

    .line 96
    # getter for: Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "Offload USER_PRESSED_TURN_OFF_WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_18
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    iget-object v0, v0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    sget v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiOffloadManager;->setAppRunOverWiFiResult(IZ)V

    .line 99
    :cond_22
    # getter for: Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "AppRunnOverWifiDialog"

    const-string v1, "Offload USER_PRESSED_TURN_OFF_WIFI before finish "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog$3;->this$0:Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-virtual {v0}, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;->finish()V

    .line 101
    return-void
.end method
