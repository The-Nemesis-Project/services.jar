.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnInterfaceList"
.end annotation


# instance fields
.field private ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

.field public mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1210
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1211
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 1212
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    .line 1213
    return-void
.end method


# virtual methods
.method getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 1222
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v4

    iget-object v1, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mAnyconnectMessenger:Landroid/os/Messenger;

    .line 1229
    .local v1, "msgr":Landroid/os/Messenger;
    :goto_11
    :try_start_11
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/enterprise/IEnterpriseVpnInterface;->prepareService(Landroid/os/Messenger;)I

    move-result v2

    .line 1232
    .local v2, "state":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_31

    .line 1233
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v5

    monitor-enter v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_25} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_25} :catch_46

    .line 1234
    :try_start_25
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 1235
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_36

    .line 1248
    :cond_31
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

    .end local v2    # "state":I
    :goto_33
    return-object v3

    .end local v1    # "msgr":Landroid/os/Messenger;
    :cond_34
    move-object v1, v3

    .line 1222
    goto :goto_11

    .line 1235
    .restart local v1    # "msgr":Landroid/os/Messenger;
    .restart local v2    # "state":I
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v4
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_39} :catch_46

    .line 1237
    .end local v2    # "state":I
    :catch_39
    move-exception v0

    .line 1238
    .local v0, "ex":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1240
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_46
    move-exception v0

    .line 1241
    .local v0, "ex":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method setCiscoInterface(Landroid/app/enterprise/IEnterpriseVpnInterface;)V
    .registers 2
    .param p1, "ciscoService"    # Landroid/app/enterprise/IEnterpriseVpnInterface;

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

    .line 1217
    return-void
.end method
