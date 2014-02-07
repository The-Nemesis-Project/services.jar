.class Lcom/android/server/display/SideSyncDisplayController$2;
.super Ljava/lang/Object;
.source "SideSyncDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplayCallback$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/SideSyncDisplayController;->requestEnableSideSync(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayController;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController$2;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHDMIConnected()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$2;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHDMIConnected! we show toast and disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onHeadSetConnected()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$2;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHeadSetConnected! we show toast and disconnect WFD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onTransportChanged(I)V
    .registers 5
    .param p1, "nRtpType"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$2;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransportChanged! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onWeakNetwork()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController$2;->this$0:Lcom/android/server/display/SideSyncDisplayController;

    # getter for: Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayController;->access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWeakNetwork! we show toast!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method
