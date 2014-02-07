.class Lcom/android/server/wifi/WifiService$3;
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
    .line 578
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 581
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->isBootCompleted:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiService;->access$902(Lcom/android/server/wifi/WifiService;Z)Z

    .line 582
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiService;->simState_int:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiService;->access$1002(Lcom/android/server/wifi/WifiService;I)I

    .line 583
    const-string v0, "WifiService"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    # getter for: Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$1100()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 586
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 587
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_BOOT_COMPLETED [simState_int] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState_int:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$1000(Lcom/android/server/wifi/WifiService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_48
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState_int:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1000(Lcom/android/server/wifi/WifiService;)I

    move-result v0

    if-eq v0, v3, :cond_6a

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState_int:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1000(Lcom/android/server/wifi/WifiService;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->simState_int:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1000(Lcom/android/server/wifi/WifiService;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->isFirstBootMccMnc:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiService;->access$1200(Lcom/android/server/wifi/WifiService;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 590
    :cond_6a
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 591
    const-string v0, "WifiService"

    const-string v1, "ACTION_BOOT_COMPLETED isSimCheked will be true "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_77
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    # setter for: Lcom/android/server/wifi/WifiService;->isSimCheked:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiService;->access$1302(Lcom/android/server/wifi/WifiService;Z)Z

    .line 600
    :cond_7c
    iget-object v0, p0, Lcom/android/server/wifi/WifiService$3;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V

    .line 624
    return-void
.end method
