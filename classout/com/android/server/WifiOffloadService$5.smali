.class Lcom/android/server/WifiOffloadService$5;
.super Ljava/util/TimerTask;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$isWaitrequired:Z

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$5;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/WifiOffloadService$5;->val$isWaitrequired:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "checkDataActivityTimer excecuted"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->isBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$400(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 681
    :goto_f
    return-void

    .line 668
    :cond_10
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 669
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Intel mode is ON"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check before offload , mSeamlessConnectWhileConnecting ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$200(Lcom/android/server/WifiOffloadService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    # getter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->access$200(Lcom/android/server/WifiOffloadService;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 673
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Its already trying to auto-connect to a known network in a loop, so dont offload now"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_f

    .line 676
    :cond_4d
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService$5;->val$packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService$5;->val$isWaitrequired:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WifiOffloadService;->wifiOffloadFlow(Ljava/lang/String;Z)Z

    goto :goto_f

    .line 678
    :cond_57
    iget-object v0, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v1, "Intel mode is OFF"

    invoke-virtual {v0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_f
.end method
