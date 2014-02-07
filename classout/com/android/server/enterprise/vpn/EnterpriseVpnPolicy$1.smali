.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;
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
    .line 302
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-static {p2}, Landroid/app/enterprise/IEnterpriseVpnInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v1

    # setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$002(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Landroid/app/enterprise/IEnterpriseVpnInterface;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 305
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anyconnect connection :  Cisco Service connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->setCiscoInterface(Landroid/app/enterprise/IEnterpriseVpnInterface;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 307
    monitor-exit p0

    return-void

    .line 304
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Anyconnect connection : Cisco Service has unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$002(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Landroid/app/enterprise/IEnterpriseVpnInterface;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 312
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->setCiscoInterface(Landroid/app/enterprise/IEnterpriseVpnInterface;)V

    .line 313
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to bind to EnterpriseVpnAnyconnect service again.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # invokes: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindAnyconnectVpnInterface()V
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 315
    monitor-exit p0

    return-void

    .line 310
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
