.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 331
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected - className : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1f
    invoke-static {p2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    move-result-object v1

    .line 333
    .local v1, "ssoService1":Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 334
    if-eqz v1, :cond_43

    .line 335
    const-string v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service connected container1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_43
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v2

    iput-object v1, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "sso.enterprise.container.setup.success"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "containerid"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$1002(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_6a

    .line 342
    monitor-exit p0

    return-void

    .line 331
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "ssoService1":Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;
    :catchall_6a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x1

    .line 345
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceDisconnected - className : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1f
    const/4 v1, 0x0

    .line 347
    .local v1, "result":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "sso.enterprise.container.disconnected"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$900(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$800(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    .line 351
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v2, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v1

    .line 352
    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$700()Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindSSOInterfaces result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_63
    return-void
.end method
