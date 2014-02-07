.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 2

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-static {p2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v1

    # setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$402(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 321
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mocana connection : Mocana Service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 323
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->kvpn_install_type:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$500()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 324
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createVpnFromDatabase()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 325
    const/4 v0, 0x0

    # setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->kvpn_install_type:Z
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$502(Z)Z

    .line 326
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkVpnModeOfOperationAfterNewinstall()Z
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_70

    move-result v0

    if-eqz v0, :cond_51

    .line 336
    :cond_4f
    :goto_4f
    monitor-exit p0

    return-void

    .line 330
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkPackagesOnStartup()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 331
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printVpnState()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 334
    :cond_61
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 335
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_70

    goto :goto_4f

    .line 320
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 339
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mocana connection : Mocana Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->handleMocanaServiceDisconnect()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$402(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 342
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 343
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to bind to Mocana service again.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 345
    monitor-exit p0

    return-void

    .line 339
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
