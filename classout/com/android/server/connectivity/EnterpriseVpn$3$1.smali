.class Lcom/android/server/connectivity/EnterpriseVpn$3$1;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/EnterpriseVpn$3;->interfaceRemoved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn$3;)V
    .registers 2

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->getConnectivityService()Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1300(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 592
    :try_start_a
    const-string v1, "EnterpriseVpn"

    const-string v2, "disconnect system vpn is getting called from enterprisevpn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user going to be removed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v3, v3, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I
    invoke-static {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1400(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1500(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$3$1;->this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v2, v2, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1400(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->disconnectSystemVpn(I)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_45} :catch_46

    .line 599
    :cond_45
    :goto_45
    return-void

    .line 595
    :catch_46
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at  interfaceRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method
