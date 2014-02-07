.class Lcom/android/server/wifi/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .registers 2

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$1402(Lcom/android/server/wifi/WifiService;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 636
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM STATE CHANGED [state] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1400(Lcom/android/server/wifi/WifiService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_2f
    const-string v0, "LOADED"

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$1400(Lcom/android/server/wifi/WifiService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$1400(Lcom/android/server/wifi/WifiService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "CARD_IO_ERROR"

    iget-object v1, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiService;->access$1400(Lcom/android/server/wifi/WifiService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_59
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->isFirstBootMccMnc:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1200(Lcom/android/server/wifi/WifiService;)Z

    move-result v0

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$900(Lcom/android/server/wifi/WifiService;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 639
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 640
    const-string v0, "WifiService"

    const-string v1, "isSimCheked will be true "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_76
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/wifi/WifiService;->isSimCheked:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$1302(Lcom/android/server/wifi/WifiService;Z)Z

    .line 643
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$4;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 645
    :cond_81
    return-void
.end method
