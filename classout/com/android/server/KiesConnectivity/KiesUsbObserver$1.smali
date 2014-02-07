.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "connected"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 82
    .local v3, "bConnected":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "configured"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 83
    .local v2, "bConfigured":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "mtp"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 84
    .local v4, "bEnabled_MTP":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "mass_storage"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 87
    .local v1, "bCDFS":Z
    const/4 v6, -0x1

    .line 88
    .local v6, "usbMode":I
    const-string v8, "sys.usb.config"

    const-string v9, "none"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "config":Ljava/lang/String;
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUsbMode() -> bCDFS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v3, :cond_aa

    if-eqz v2, :cond_aa

    if-eqz v1, :cond_aa

    .line 94
    const-string v8, "mass_storage"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_87

    const-string v8, "mass_storage,adb"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 95
    :cond_87
    const/4 v7, 0x1

    .line 96
    .local v7, "usbState":I
    const/16 v6, 0x7d0

    .line 97
    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v8, v7, v6}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 98
    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    if-eqz v8, :cond_a9

    .line 99
    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    .line 100
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "startCDFSEjectTimer"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v1    # "bCDFS":Z
    .end local v2    # "bConfigured":Z
    .end local v3    # "bConnected":Z
    .end local v4    # "bEnabled_MTP":Z
    .end local v5    # "config":Ljava/lang/String;
    .end local v6    # "usbMode":I
    .end local v7    # "usbState":I
    :cond_a9
    :goto_a9
    return-void

    .line 103
    .restart local v1    # "bCDFS":Z
    .restart local v2    # "bConfigured":Z
    .restart local v3    # "bConnected":Z
    .restart local v4    # "bEnabled_MTP":Z
    .restart local v5    # "config":Ljava/lang/String;
    .restart local v6    # "usbMode":I
    :cond_aa
    if-nez v3, :cond_a9

    if-nez v2, :cond_a9

    .line 104
    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    if-eqz v8, :cond_a9

    .line 105
    const/4 v7, 0x0

    .line 106
    .restart local v7    # "usbState":I
    const/16 v6, 0x7d0

    .line 107
    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v8, v7, v6}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    .line 108
    iget-object v8, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$1;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v8}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 109
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "stopCDFSEjectTimer"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9
.end method
