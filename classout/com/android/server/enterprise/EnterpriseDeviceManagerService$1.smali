.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 2

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 388
    const-string v2, "EnterpriseDeviceManagerService"

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 399
    :cond_18
    :goto_18
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 401
    :cond_28
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "License expiration check for action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    # getter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$700()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    :cond_4c
    return-void

    .line 391
    :cond_4d
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 392
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 393
    .local v1, "userId":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_4c

    .line 395
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    goto :goto_18

    .line 396
    .end local v1    # "userId":I
    :cond_65
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 397
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$502(I)I

    goto :goto_18
.end method
