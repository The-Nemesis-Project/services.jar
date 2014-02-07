.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    }
.end annotation


# static fields
.field private static final CONTAINER_REMOVED:Ljava/lang/String; = "enterprise.container.uninstalled"

.field private static final CONTAINER_SETUP_FAILURE:Ljava/lang/String; = "enterprise.container.setup.failure"

.field private static final CONTAINER_SETUP_SUCCESS:Ljava/lang/String; = "enterprise.container.setup.success"

.field private static final INTENT_SSO_SERVICE_DISCONNECTED:Ljava/lang/String; = "sso.enterprise.container.disconnected"

.field private static final INTENT_SSO_SERVICE_SETUP_SUCCESS:Ljava/lang/String; = "sso.enterprise.container.setup.success"


# instance fields
.field private final CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER2_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER3_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_1:I

.field private final CONTAINER_2:I

.field private final CONTAINER_3:I

.field private final SSO_BIND_RESULT_DUPLICATE_REQ:I

.field private final SSO_BIND_RESULT_FAILURE:I

.field private final SSO_BIND_RESULT_SUCCESS:I

.field private final SSO_BIND_SUCCESS:I

.field private final SSO_SERVICE_PACKAGE:Ljava/lang/String;

.field private final SSO_TYPE_VALUE:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWNAPI:Ljava/lang/String;

.field cSignConnect1:Landroid/content/ServiceConnection;

.field cSignConnect2:Landroid/content/ServiceConnection;

.field cSignConnect3:Landroid/content/ServiceConnection;

.field private mBroadCastReciever:Landroid/content/BroadcastReceiver;

.field private mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

.field private mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

.field private mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

.field private mSSOServiceInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 341
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;-><init>()V

    .line 75
    const-string v0, "EnterpriseSSOPolicy Service"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->TAG:Ljava/lang/String;

    .line 76
    const-string v0, "com.centrify.sso.samsung"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_SERVICE_PACKAGE:Ljava/lang/String;

    .line 78
    const-string v0, "API Not Supported"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->UNKNOWNAPI:Ljava/lang/String;

    .line 79
    const-string v0, "sec_container_1.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 80
    const-string v0, "sec_container_2.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER2_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 81
    const-string v0, "sec_container_3.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER3_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_TYPE_VALUE:I

    .line 88
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_SUCCESS:I

    .line 89
    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_1:I

    .line 90
    iput v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_2:I

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_3:I

    .line 94
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    .line 95
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    .line 96
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    .line 98
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    .line 100
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_FAILURE:I

    .line 101
    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_SUCCESS:I

    .line 102
    iput v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_DUPLICATE_REQ:I

    .line 120
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    .line 293
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect2:Landroid/content/ServiceConnection;

    .line 312
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect3:Landroid/content/ServiceConnection;

    .line 342
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    .line 343
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    .line 344
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    .line 346
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->registerReciever()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .line 349
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    return-object v0
.end method

.method private bindSSOInterfaces(I)I
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    .line 189
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces() containerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "success":I
    packed-switch p1, :pswitch_data_cc

    .line 232
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). default case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_35
    return v0

    .line 195
    :pswitch_36
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v1, v1, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-nez v1, :cond_67

    .line 196
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_1.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v4, v1, :cond_4e

    .line 198
    const/4 v0, 0x1

    .line 207
    :cond_4e
    :goto_4e
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_1 case. CONTAINER1_ACTION_SSO_SERVICE:sec_container_1.com.samsung.safe.auth.mgmt, success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 204
    :cond_67
    const-string v1, "EnterpriseSSOPolicy Service"

    const-string v2, "centrifyInterface already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x2

    goto :goto_4e

    .line 210
    :pswitch_70
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_2.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect2:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v4, v1, :cond_9b

    .line 212
    const/4 v0, 0x1

    .line 218
    :goto_82
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_2 case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 216
    :cond_9b
    const/4 v0, 0x0

    goto :goto_82

    .line 221
    :pswitch_9d
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "sec_container_3.com.samsung.safe.auth.mgmt"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect3:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-ne v4, v1, :cond_c9

    .line 223
    const/4 v0, 0x1

    .line 229
    :goto_af
    const-string v1, "EnterpriseSSOPolicy Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindSSOInterfaces(). CONTAINER_3 case. success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 227
    :cond_c9
    const/4 v0, 0x0

    goto :goto_af

    .line 193
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_36
        :pswitch_70
        :pswitch_9d
    .end packed-switch
.end method

.method private enforceEnterpriseSSOPermission()I
    .registers 3

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    if-nez v0, :cond_d

    .line 115
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .line 117
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_17

    .line 106
    const-string v0, "EnterpriseSSOPolicy Service"

    const-string v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 110
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isSSOServiceInstalled(I)Z
    .registers 10
    .param p1, "containerID"    # I

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerPackages(I)[Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "containerPackages":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_34

    aget-object v4, v0, v2

    .line 355
    .local v4, "mPackage":Ljava/lang/String;
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 356
    const-string v5, "EnterpriseSSOPolicy Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " FOUND: com.centrify.sso.samsung in the container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v5, 0x1

    .line 361
    .end local v4    # "mPackage":Ljava/lang/String;
    :goto_30
    return v5

    .line 354
    .restart local v4    # "mPackage":Ljava/lang/String;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 360
    .end local v4    # "mPackage":Ljava/lang/String;
    :cond_34
    const-string v5, "EnterpriseSSOPolicy Service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " NOT FOUND: com.centrify.sso.samsung in the container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v5, 0x0

    goto :goto_30
.end method


# virtual methods
.method public deleteSSOWhiteList(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 571
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 572
    const/4 v5, 0x0

    .line 573
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 575
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v6, :cond_1a

    .line 576
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 577
    invoke-virtual {v5, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 631
    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_19
    :goto_19
    return-object v5

    .line 583
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1a
    if-nez p4, :cond_25

    .line 584
    :try_start_1c
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList packageName is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v5, 0x0

    goto :goto_19

    .line 587
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v0, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 590
    .local v4, "mPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v6, p1, v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_43} :catch_44

    goto :goto_2e

    .line 628
    .end local v0    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mPackage":Ljava/lang/String;
    :catch_44
    move-exception v2

    .line 629
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 593
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4d
    :try_start_4d
    const-string v6, "centrify"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    .line 594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 596
    .local v1, "deletePackageList":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_f2

    .line 619
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. default"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 598
    :pswitch_6c
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v6, :cond_19

    .line 599
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 600
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 601
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. CONTAINER_1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 605
    :pswitch_93
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v6, :cond_19

    .line 606
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 607
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 608
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. CONTAINER_2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 612
    :pswitch_bb
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v6, :cond_19

    .line 613
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 614
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 615
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " deleteSSOWhiteList. CONTAINER_3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 624
    .end local v1    # "deletePackageList":[Ljava/lang/String;
    :cond_e3
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 625
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_f0} :catch_44

    goto/16 :goto_19

    .line 596
    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_93
        :pswitch_bb
    .end packed-switch
.end method

.method public forceReauthenticate(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 739
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 743
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    .line 744
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 745
    invoke-virtual {v1, v3, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 787
    :cond_19
    :goto_19
    return-object v1

    .line 751
    :cond_1a
    :try_start_1a
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 752
    packed-switch p1, :pswitch_data_b8

    .line 775
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 784
    :catch_2d
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 754
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    .line 755
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 756
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 757
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 761
    :pswitch_5c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    .line 762
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 763
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 764
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 768
    :pswitch_82
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    .line 769
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->forceReauthenticate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 770
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 771
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " forceReauthenticate. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 780
    :cond_a9
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 781
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_b6} :catch_2d

    goto/16 :goto_19

    .line 752
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_36
        :pswitch_5c
        :pswitch_82
    .end packed-switch
.end method

.method public getAppAllowedState(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 635
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 639
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    .line 640
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 641
    invoke-virtual {v1, v4, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 683
    :cond_19
    :goto_19
    return-object v1

    .line 647
    :cond_1a
    :try_start_1a
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 648
    packed-switch p1, :pswitch_data_ca

    .line 671
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 680
    :catch_2d
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 650
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    .line 651
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 652
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 653
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 657
    :pswitch_62
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    .line 658
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 659
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 660
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 664
    :pswitch_8e
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    .line 665
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 666
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 667
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getAppAllowedState. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 676
    :cond_bb
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 677
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_c8} :catch_2d

    goto/16 :goto_19

    .line 648
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_36
        :pswitch_62
        :pswitch_8e
    .end packed-switch
.end method

.method public getSSOCustomerId(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 450
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 451
    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSSOCustomerId() containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 456
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_2f

    .line 457
    const-string v2, "API Not Supported"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v1, v5, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 502
    :cond_2e
    :goto_2e
    return-object v1

    .line 464
    :cond_2f
    :try_start_2f
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 466
    packed-switch p1, :pswitch_data_be

    .line 489
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_41} :catch_42

    goto :goto_2e

    .line 498
    :catch_42
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API getSSOCustomerId-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4b
    :try_start_4b
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_2e

    .line 469
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 470
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 471
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 475
    :pswitch_6d
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_2e

    .line 476
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 477
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 478
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 482
    :pswitch_8f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_2e

    .line 483
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 484
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 485
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " getSSOCustomerId. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 494
    :cond_b2
    const-string v2, "API Not Supported"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 495
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_bc} :catch_42

    goto/16 :goto_2e

    .line 466
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_6d
        :pswitch_8f
    .end packed-switch
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 846
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 852
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 863
    return-void
.end method

.method public registerReciever()V
    .registers 5

    .prologue
    .line 239
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "SSO registerReciever() "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, "containerFilter":Landroid/content/IntentFilter;
    const-string v2, "enterprise.container.setup.success"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v1, "systemFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method public setCustomerInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "companyName"    # Ljava/lang/String;
    .param p4, "logo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 687
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 688
    const/4 v1, 0x0

    .line 689
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 691
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    .line 692
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 693
    invoke-virtual {v1, v3, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 735
    :cond_19
    :goto_19
    return-object v1

    .line 699
    :cond_1a
    :try_start_1a
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 700
    packed-switch p1, :pswitch_data_b8

    .line 723
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 732
    :catch_2d
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    .line 703
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2, p3, p4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 704
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 705
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 709
    :pswitch_5c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    .line 710
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2, p3, p4}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 711
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 712
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 716
    :pswitch_82
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    .line 717
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2, p3, p4}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 718
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 719
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setCustomerInfo. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 728
    :cond_a9
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 729
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_b6} :catch_2d

    goto/16 :goto_19

    .line 700
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_36
        :pswitch_5c
        :pswitch_82
    .end packed-switch
.end method

.method public setSSOCustomerId(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 365
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 366
    const-string v2, "EnterpriseSSOPolicy Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSSOCustomerId() containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 370
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_32

    .line 371
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {v1, v5, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 414
    :cond_31
    :goto_31
    return-object v1

    .line 378
    :cond_32
    :try_start_32
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 379
    packed-switch p1, :pswitch_data_d0

    .line 402
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_44} :catch_45

    goto :goto_31

    .line 411
    :catch_45
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4e
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_31

    .line 382
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2, p3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 383
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 384
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 388
    :pswitch_74
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_31

    .line 389
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2, p3}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 390
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 391
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 395
    :pswitch_9a
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_31

    .line 396
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2, p3}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setCustomerId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 397
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 398
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " setSSOCustomerId. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 407
    :cond_c1
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 408
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_ce} :catch_45

    goto/16 :goto_31

    .line 379
    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_74
        :pswitch_9a
    .end packed-switch
.end method

.method public setSSOWhiteList(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 506
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 507
    const-string v6, "EnterpriseSSOPolicy Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSSOWhiteList() containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v5, 0x0

    .line 509
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 511
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v6, :cond_32

    .line 512
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v5, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 567
    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_31
    :goto_31
    return-object v5

    .line 519
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_32
    if-nez p4, :cond_3d

    .line 520
    :try_start_34
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList packageName is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v5, 0x0

    goto :goto_31

    .line 523
    :cond_3d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v1, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 526
    .local v4, "mPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    invoke-virtual {v6, p1, v4}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5b} :catch_5c

    goto :goto_46

    .line 564
    .end local v1    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "mPackage":Ljava/lang/String;
    :catch_5c
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 529
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_65
    :try_start_65
    const-string v6, "centrify"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 530
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 532
    .local v0, "addPackageList":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_10a

    .line 555
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. default"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 534
    :pswitch_84
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v6, :cond_31

    .line 535
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 536
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 537
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. CONTAINER_1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 541
    :pswitch_ab
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v6, :cond_31

    .line 542
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 543
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 544
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. CONTAINER_2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 548
    :pswitch_d3
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v6, :cond_31

    .line 549
    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v6, v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v7}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 550
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 551
    const-string v6, "EnterpriseSSOPolicy Service"

    const-string v7, " setSSOWhiteList. CONTAINER_3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 560
    .end local v0    # "addPackageList":[Ljava/lang/String;
    :cond_fb
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 561
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_108} :catch_5c

    goto/16 :goto_31

    .line 532
    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_84
        :pswitch_ab
        :pswitch_d3
    .end packed-switch
.end method

.method public setupSSO(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 418
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 419
    const-string v3, "EnterpriseSSOPolicy Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupSSO() containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v1, 0x0

    .line 421
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 423
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :try_start_22
    const-string v3, "centrify"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v2

    .line 426
    .local v2, "result":I
    const-string v3, "EnterpriseSSOPolicy Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupSSO() containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". result of sso bind: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eq v6, v2, :cond_55

    const/4 v3, 0x2

    if-ne v3, v2, :cond_63

    .line 428
    :cond_55
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 429
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 445
    .end local v2    # "result":I
    :goto_62
    return-object v1

    .line 431
    .restart local v2    # "result":I
    :cond_63
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 432
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_70} :catch_71

    goto :goto_62

    .line 442
    .end local v2    # "result":I
    :catch_71
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseSSOPolicy Service"

    const-string v4, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 438
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7a
    const/4 v3, -0x1

    :try_start_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 439
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_87} :catch_71

    goto :goto_62
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 858
    return-void
.end method

.method public unenroll(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 791
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 795
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v2, :cond_1a

    .line 796
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v1, v3, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 839
    :cond_19
    :goto_19
    return-object v1

    .line 803
    :cond_1a
    :try_start_1a
    const-string v2, "centrify"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 804
    packed-switch p1, :pswitch_data_b8

    .line 827
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_2d

    goto :goto_19

    .line 836
    :catch_2d
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v2, :cond_19

    .line 807
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->centrifyInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 808
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 809
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 813
    :pswitch_5c
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    if-eqz v2, :cond_19

    .line 814
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList2:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList2;->centrifyInterface:Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;

    invoke-interface {v2}, Lsec_container_2/com/centrify/auth/aidl/IEnterpriseSecurityManager2;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 815
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 816
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 820
    :pswitch_82
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    if-eqz v2, :cond_19

    .line 821
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList3:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;

    iget-object v2, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList3;->centrifyInterface:Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;

    invoke-interface {v2}, Lsec_container_3/com/centrify/auth/aidl/IEnterpriseSecurityManager3;->unenroll()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 822
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 823
    const-string v2, "EnterpriseSSOPolicy Service"

    const-string v3, " unenroll. CONTAINER_3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 832
    :cond_a9
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 833
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_b6} :catch_2d

    goto/16 :goto_19

    .line 804
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_36
        :pswitch_5c
        :pswitch_82
    .end packed-switch
.end method
