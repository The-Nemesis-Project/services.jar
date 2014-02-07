.class Lcom/android/server/display/WifiDisplayController$6$1;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController$6;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayController$6;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController$6;)V
    .registers 2

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 553
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 554
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    # -= operator for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$1220(Lcom/android/server/display/WifiDisplayController;I)I

    .line 556
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying discovery.  Retries left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v2, v2, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersRetriesLeft:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)V

    .line 565
    :cond_4d
    :goto_4d
    return-void

    .line 561
    :cond_4e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$6$1;->this$1:Lcom/android/server/display/WifiDisplayController$6;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayController$6;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto :goto_4d
.end method
