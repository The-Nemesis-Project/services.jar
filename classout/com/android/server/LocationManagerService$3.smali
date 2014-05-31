.class Lcom/android/server/LocationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "action":Ljava/lang/String;
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "vendor":Ljava/lang/String;
    const-string v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "broadcast received action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 374
    iget-object v6, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    const-string v7, "android.intent.extra.user_handle"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    # invokes: Lcom/android/server/LocationManagerService;->switchUser(I)V
    invoke-static {v6, v7}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;I)V

    .line 399
    :cond_36
    :goto_36
    return-void

    .line 377
    :cond_37
    const-string v6, "ATT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    const-string v6, "android.intent.action.BCS_REQUEST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 380
    .local v3, "extra":Landroid/os/Bundle;
    if-nez v3, :cond_55

    .line 381
    const-string v6, "LocationManagerService"

    const-string v7, "extra is null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 384
    :cond_55
    const-string v6, "command"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "command":Ljava/lang/String;
    const-string v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v6, "AT+GPSVALUE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.BCS_RESPONSE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "at_ret":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Lcom/android/server/LocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 389
    const-string v4, "ON"

    .line 394
    .local v4, "response":Ljava/lang/String;
    :goto_8e
    const-string v6, "response"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v6, p0, Lcom/android/server/LocationManagerService$3;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_36

    .line 392
    .end local v4    # "response":Ljava/lang/String;
    :cond_9d
    const-string v4, "OFF"

    .restart local v4    # "response":Ljava/lang/String;
    goto :goto_8e
.end method
