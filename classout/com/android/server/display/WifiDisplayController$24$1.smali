.class Lcom/android/server/display/WifiDisplayController$24$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$24;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$24;)V
    .registers 2

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 1860
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fullscan failed with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    return-void
.end method

.method public onSuccess()V
    .registers 5

    .prologue
    .line 1846
    const-string v0, "WifiDisplayController"

    const-string v1, "Fullscan succeeded.  Requesting peers now."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1850
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPeers()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)V

    .line 1854
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$700(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$24$1;->this$1:Lcom/android/server/display/WifiDisplayController$24;

    iget-object v1, v1, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mScanTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$4400(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1855
    return-void
.end method
