.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;
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
    .line 257
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    move-result-object v0

    .line 260
    .local v0, "centrifyService1":Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;
    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service connected container1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v2

    iput-object v0, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "sso.enterprise.container.setup.success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "containerid"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$402(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 267
    monitor-exit p0

    return-void

    .line 259
    .end local v0    # "centrifyService1":Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;
    .end local v1    # "mIntent":Landroid/content/Intent;
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 270
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "container1 Service has unexpectedly disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v2, "sso.enterprise.container.disconnected"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # getter for: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    # invokes: Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I
    invoke-static {v2, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v1

    .line 276
    .local v1, "result":I
    packed-switch v1, :pswitch_data_48

    .line 290
    :goto_2f
    return-void

    .line 279
    :pswitch_30
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "service added to Container: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 282
    :pswitch_38
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed to add service to container: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 285
    :pswitch_40
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "service already bound"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 276
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_38
        :pswitch_30
        :pswitch_40
    .end packed-switch
.end method
