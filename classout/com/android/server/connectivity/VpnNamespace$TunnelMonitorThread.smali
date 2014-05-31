.class Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;
.super Ljava/lang/Thread;
.source "VpnNamespace.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/VpnNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TunnelMonitorThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/VpnNamespace;

.field private vpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/Vpn;)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vpn"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->this$0:Lcom/android/server/connectivity/VpnNamespace;

    .line 660
    const-string v0, "TunMonThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 661
    iput-object p2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    .line 662
    iput-object p3, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->vpn:Lcom/android/server/connectivity/Vpn;

    .line 663
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 675
    if-eqz p1, :cond_39

    .line 676
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_6b

    .line 678
    :try_start_6
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->this$0:Lcom/android/server/connectivity/VpnNamespace;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/VpnNamespace;->checkIf(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/VpnNamespace;->access$700(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 679
    # getter for: Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->vpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->interfaceRemoved(Ljava/lang/String;)V

    .line 694
    :cond_39
    :goto_39
    const/4 v1, 0x1

    return v1

    .line 683
    :cond_3b
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_43} :catch_44

    goto :goto_39

    .line 685
    :catch_44
    move-exception v0

    .line 686
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while checking on tunnel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->vpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->interfaceRemoved(Ljava/lang/String;)V

    goto :goto_39

    .line 690
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6b
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 691
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_39
.end method

.method quit()V
    .registers 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 671
    return-void
.end method

.method restart()V
    .registers 5

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 667
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 700
    # getter for: Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 702
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    .line 703
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 704
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 705
    # getter for: Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/VpnNamespace;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method
