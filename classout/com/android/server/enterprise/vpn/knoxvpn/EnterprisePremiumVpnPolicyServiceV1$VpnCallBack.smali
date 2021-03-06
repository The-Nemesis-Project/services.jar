.class Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;
.super Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;
.source "EnterprisePremiumVpnPolicyServiceV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnCallBack"
.end annotation


# instance fields
.field private adminCheck:Z

.field private mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)V
    .registers 4
    .param p2, "mEnterpriseVpnCallback"    # Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    invoke-direct {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;-><init>()V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    .line 1031
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .line 1032
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Z)V
    .registers 4
    .param p2, "adminCheck"    # Z

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    invoke-direct {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;-><init>()V

    .line 1028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    .line 1034
    iput-boolean p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    .line 1035
    return-void
.end method


# virtual methods
.method public updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1038
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: Admin Check for Remove Connection Callback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v4, 0x6

    if-ne p2, v4, :cond_95

    .line 1040
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "Vpn_table"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "profile"

    aput-object v7, v6, v9

    new-array v7, v8, [Ljava/lang/String;

    aput-object p1, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 1042
    .local v3, "removeProfileStatus":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$700()Z

    move-result v4

    if-eqz v4, :cond_61

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: The status for removing the profile from profile database is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_61
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    if-nez v4, :cond_a3

    .line 1044
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: VPN Callback : Vpn profile deleted successfully. status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1046
    .local v1, "identity":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z
    invoke-static {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)Z

    .line 1047
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    .end local v1    # "identity":J
    .end local v3    # "removeProfileStatus":Z
    :cond_95
    :goto_95
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    if-eqz v4, :cond_a2

    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    if-nez v4, :cond_a2

    .line 1056
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;->updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_b4

    .line 1061
    :cond_a2
    :goto_a2
    return-void

    .line 1048
    .restart local v3    # "removeProfileStatus":Z
    :cond_a3
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->adminCheck:Z

    if-ne v4, v8, :cond_95

    .line 1049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1050
    .restart local v1    # "identity":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V
    invoke-static {v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;Ljava/lang/String;)V

    .line 1051
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_95

    .line 1057
    .end local v1    # "identity":J
    .end local v3    # "removeProfileStatus":Z
    :catch_b4
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: VPN Callback  : Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2
.end method
