.class Lcom/android/server/ConnectivityService$EmergencyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .prologue
    .line 7444
    iput-object p1, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/32 v6, 0x927c0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7447
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7448
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_26

    .line 7482
    :cond_25
    :goto_25
    return-void

    .line 7451
    :cond_26
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 7452
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Z)V

    .line 7481
    :cond_33
    :goto_33
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 7453
    :cond_4c
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 7454
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;Z)V

    goto :goto_33

    .line 7455
    :cond_5a
    const-string v2, "android.intent.action.EMERGENCY_DATA_OPEN_REQ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 7456
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "EMERGENCY_DATA_OPEN_REQ"

    # invokes: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7457
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "EMERGENCY_DATA_OPEN_REQ"

    # invokes: Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7458
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$EmergencyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/ConnectivityService$EmergencyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7461
    const-string v2, "ConnectivityService"

    const-string v3, "Send Message MAX TIMEOUT(600000)"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 7462
    :cond_8b
    const-string v2, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 7463
    const-string/jumbo v2, "status"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7464
    .local v1, "status":I
    if-nez v1, :cond_c3

    .line 7465
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_TERMINATED"

    # invokes: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7466
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$EmergencyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$EmergencyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7469
    const-string v2, "ConnectivityService"

    const-string v3, "Send Message TERMINATE TIMEOUT(60000)"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 7470
    :cond_c3
    if-ne v1, v5, :cond_ef

    .line 7471
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_START"

    # invokes: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7472
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_START"

    # invokes: Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 7473
    iget-object v2, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$EmergencyReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEmergencyHandler:Lcom/android/server/ConnectivityService$EmergencyHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$EmergencyHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$EmergencyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/ConnectivityService$EmergencyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7476
    const-string v2, "ConnectivityService"

    const-string v3, "Send Message MAX TIMEOUT(600000)"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 7478
    :cond_ef
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lscapp sent wrong data. status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method
