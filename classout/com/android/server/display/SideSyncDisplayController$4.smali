.class Lcom/android/server/display/SideSyncDisplayController$4;
.super Ljava/lang/Object;
.source "SideSyncDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SideSyncDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayController;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V
    .registers 9

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    iput-object p2, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$width:I

    iput p7, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$height:I

    iput p8, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$flags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_5e

    .line 380
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1300(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/SideSyncDisplayController$Listener;->onDisplayDisconnected()V

    .line 385
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_5d

    .line 387
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_5d

    .line 388
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "platform":Ljava/lang/String;
    const-string v0, "(?i).*exynos.*"

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 390
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not use surface on WFD !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1300(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$display:Landroid/hardware/display/WifiDisplay;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$width:I

    iget v4, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$height:I

    iget v5, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/SideSyncDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 399
    .end local v6    # "platform":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void

    .line 381
    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 382
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1300(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/SideSyncDisplayController$Listener;->onDisplayConnectionFailed()V

    goto :goto_13

    .line 394
    .restart local v6    # "platform":Ljava/lang/String;
    :cond_76
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use surface on WFD !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$4;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$1300(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$width:I

    iget v4, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$height:I

    iget v5, p0, Lcom/android/server/display/SideSyncDisplayController$4;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/SideSyncDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    goto :goto_5d
.end method
