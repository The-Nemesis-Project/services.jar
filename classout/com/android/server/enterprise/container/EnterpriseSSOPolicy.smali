.class public Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;,
        Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    }
.end annotation


# static fields
.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_1."

.field private static final CONTAINER_REMOVED:Ljava/lang/String; = "enterprise.container.uninstalled"

.field private static final CONTAINER_SETUP_FAILURE:Ljava/lang/String; = "enterprise.container.setup.failure"

.field private static final CONTAINER_SETUP_SUCCESS:Ljava/lang/String; = "enterprise.container.setup.success"

.field private static final DBG:Z

.field private static final EMPTY_SIZE:I = 0x0

.field private static final INTENT_SSO_SERVICE_DISCONNECTED:Ljava/lang/String; = "sso.enterprise.container.disconnected"

.field private static final INTENT_SSO_SERVICE_SETUP_SUCCESS:Ljava/lang/String; = "sso.enterprise.container.setup.success"

.field private static LOCAL_FILE_PATH:Ljava/lang/String;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;",
            ">;"
        }
    .end annotation
.end field

.field private static mSSOTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/utils/SSOTypeMapData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_1:I

.field private final CONTAINER_ACTION_SSO_SERVICE:Ljava/lang/String;

.field private final CONTAINER_ACTION_SSO_SERVICE2:Ljava/lang/String;

.field private final SSO_BIND_RESULT_DUPLICATE_REQ:I

.field private final SSO_BIND_RESULT_FAILURE:I

.field private final SSO_BIND_RESULT_SUCCESS:I

.field private final SSO_BIND_SUCCESS:I

.field private final SSO_TYPE_VALUE:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWNAPI:Ljava/lang/String;

.field cSignConnect1:Landroid/content/ServiceConnection;

.field private clientsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBReciever:Landroid/content/BroadcastReceiver;

.field private mBroadCastReciever:Landroid/content/BroadcastReceiver;

.field private mBroadCastRecieverAsUser:Landroid/content/BroadcastReceiver;

.field private mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

.field private mSSOServiceInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    .line 130
    const-string v0, "/data/system/"

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseSSOPolicy$Stub;-><init>()V

    .line 101
    const-string v0, "EnterpriseSSOPolicyService"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->TAG:Ljava/lang/String;

    .line 102
    const-string v0, "API Not Supported"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->UNKNOWNAPI:Ljava/lang/String;

    .line 103
    const-string v0, "com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 104
    const-string v0, "com.samsung.safe.auth.mgmt2"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_ACTION_SSO_SERVICE2:Ljava/lang/String;

    .line 105
    const-string v0, "sec_container_1.com.samsung.safe.auth.mgmt"

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER1_ACTION_SSO_SERVICE:Ljava/lang/String;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_TYPE_VALUE:I

    .line 114
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_SUCCESS:I

    .line 115
    iput v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->CONTAINER_1:I

    .line 116
    iput v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_FAILURE:I

    .line 117
    iput v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_SUCCESS:I

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->SSO_BIND_RESULT_DUPLICATE_REQ:I

    .line 122
    iput-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    .line 123
    iput-boolean v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    .line 131
    iput-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 152
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastRecieverAsUser:Landroid/content/BroadcastReceiver;

    .line 329
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$3;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    .line 1556
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$4;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    .line 373
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    .line 374
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->registerReciever()V

    .line 376
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .line 377
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isSSOServiceInstalled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->updateClintEntry(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEdmStorageBaseProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindSSOInterfaces(I)I
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v7, 0x1

    .line 228
    sget-boolean v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v4, :cond_1d

    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindSSOInterfaces - containerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1d
    const/4 v3, 0x0

    .line 231
    .local v3, "result":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 232
    .local v2, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_6c

    .line 247
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindSSOInterfaces(). default case. result :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_3d
    return v3

    .line 234
    :pswitch_3e
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-nez v4, :cond_5e

    .line 235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    .local v0, "backupUID":J
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "sec_container_1.com.samsung.safe.auth.mgmt"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->cSignConnect1:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-ne v7, v4, :cond_5a

    .line 237
    const/4 v3, 0x1

    .line 239
    :cond_5a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3d

    .line 241
    .end local v0    # "backupUID":J
    :cond_5e
    sget-boolean v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v4, :cond_6a

    .line 242
    const-string v4, "EnterpriseSSOPolicyService"

    const-string/jumbo v5, "ssoInterface already connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_6a
    const/4 v3, 0x2

    .line 245
    goto :goto_3d

    .line 232
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_3e
    .end packed-switch
.end method

.method private bindSSOInterfaces(IILjava/lang/String;)I
    .registers 15
    .param p1, "clientId"    # I
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 255
    sget-boolean v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v7, :cond_4d

    .line 256
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindSSOInterfaces - clientId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindSSOInterfaces - containerID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_4d
    const/4 v5, 0x0

    .line 262
    .local v5, "result":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 263
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 264
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 265
    .local v6, "uHandle":Landroid/os/UserHandle;
    new-instance v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOConnection;-><init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;IILjava/lang/String;)V

    .line 266
    .local v3, "cSSOConnect":Landroid/content/ServiceConnection;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.safe.auth.mgmt2"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 270
    .local v0, "backupUID":J
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4, v3, v10, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    if-ne v10, v7, :cond_87

    .line 271
    const/4 v5, 0x1

    .line 273
    :cond_87
    const/4 v3, 0x0

    .line 274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    .end local v0    # "backupUID":J
    .end local v3    # "cSSOConnect":Landroid/content/ServiceConnection;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "uHandle":Landroid/os/UserHandle;
    :cond_8b
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 277
    return v5
.end method

.method private enforceEnterpriseSSOPermission()I
    .registers 3

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 368
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 369
    return-object p1
.end method

.method private getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    if-nez v0, :cond_d

    .line 147
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContainerPolicy:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_17

    .line 134
    const-string v0, "EnterpriseSSOPolicyService"

    const-string v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 138
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    .registers 7
    .param p1, "containerID"    # I

    .prologue
    .line 1367
    const/4 v1, 0x0

    .line 1368
    .local v1, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1369
    .local v0, "bIsContainKey":Z
    sget-boolean v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v2, :cond_31

    const-string v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Does container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has Key in mSSOInterfaceMap? result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_31
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1371
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    check-cast v1, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .line 1374
    .restart local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_49
    sget-boolean v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v2, :cond_67

    .line 1375
    if-nez v1, :cond_67

    .line 1376
    const-string v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSSOnterface - SSOnterface not registered for the containerID--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_67
    return-object v1
.end method

.method private isExistingOrFirstClient(II)Z
    .registers 9
    .param p1, "clientUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1315
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistingOrFirstClient CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",containerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  clientsList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/4 v2, 0x1

    .line 1318
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1319
    .local v1, "item":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 1320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_97

    .line 1321
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "isExistingOrFirstClient: got another client already in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    const/4 v2, 0x0

    .line 1329
    .end local v1    # "item":Ljava/lang/String;
    :cond_8c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1330
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "leaving isExistingOrNewClient "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    return v2

    .line 1325
    .restart local v1    # "item":Ljava/lang/String;
    :cond_97
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "isExistingOrFirstClient: got client in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private isSSOServiceInstalled(I)Z
    .registers 12
    .param p1, "containerID"    # I

    .prologue
    const/4 v6, 0x0

    .line 382
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 383
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 400
    :cond_14
    :goto_14
    return v6

    .line 387
    :cond_15
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getContainerPolicy()Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerPackages(I)[Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "containerPackages":[Ljava/lang/String;
    if-nez v2, :cond_38

    .line 390
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get Container Package list from container:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 393
    :cond_38
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3b
    if-ge v3, v4, :cond_68

    aget-object v5, v0, v3

    .line 394
    .local v5, "mPackage":Ljava/lang/String;
    const-string v7, "com.centrify.sso.samsung"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 395
    sget-boolean v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v6, :cond_63

    const-string v6, "EnterpriseSSOPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " FOUND: com.centrify.sso.samsung in the container: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_63
    const/4 v6, 0x1

    goto :goto_14

    .line 393
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 399
    .end local v5    # "mPackage":Ljava/lang/String;
    :cond_68
    sget-boolean v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v7, :cond_14

    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " NOT FOUND: com.centrify.sso.samsung in the container: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private loadListFromFile()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1509
    const/4 v1, 0x0

    .line 1510
    .local v1, "f":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 1511
    .local v5, "s":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1514
    .local v3, "file":Ljava/io/File;
    :try_start_3
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ActionNameMap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_5d

    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    move-object v3, v4

    .line 1520
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_1e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 1521
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_69

    .line 1522
    .end local v1    # "f":Ljava/io/FileInputStream;
    .local v2, "f":Ljava/io/FileInputStream;
    :try_start_29
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_7f

    .line 1523
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .local v6, "s":Ljava/io/ObjectInputStream;
    :try_start_2e
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_82

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .restart local v5    # "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 1533
    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    :cond_38
    :goto_38
    const-string v7, "EnterpriseSSOPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " After reading from File actionNamesMap :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    if-eqz v5, :cond_57

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 1535
    :cond_57
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1536
    :cond_5c
    return-void

    .line 1515
    :catch_5d
    move-exception v0

    .line 1516
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseSSOPolicyService"

    const-string v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 1526
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_69
    move-exception v0

    .line 1527
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    if-eqz v5, :cond_6f

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 1528
    :cond_6f
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1529
    :cond_74
    const-string v7, "EnterpriseSSOPolicyService"

    const-string v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 1526
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "f":Ljava/io/FileInputStream;
    :catch_7f
    move-exception v0

    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    goto :goto_6a

    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .restart local v2    # "f":Ljava/io/FileInputStream;
    .restart local v6    # "s":Ljava/io/ObjectInputStream;
    :catch_82
    move-exception v0

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .restart local v5    # "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    goto :goto_6a
.end method

.method private printArtifacts()V
    .registers 4

    .prologue
    .line 142
    const-string v0, "EnterpriseSSOPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface Map        :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "EnterpriseSSOPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientsList Map      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method private removeClintEntry(I)V
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1540
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 1554
    :goto_4
    return-void

    .line 1542
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1544
    .local v2, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 1545
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1546
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1547
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "found entery to remove."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1544
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1551
    .end local v1    # "items":[Ljava/lang/String;
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V

    .line 1553
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " after removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateClintEntry(ILjava/lang/String;)V
    .registers 10
    .param p1, "ContainerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1477
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateClintEntry , cid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pkgname :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v3, 0x0

    .line 1479
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1480
    .local v1, "item":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 1481
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "-"

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    .local v2, "toknizer":Ljava/util/StringTokenizer;
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateClintEntry size of tokenizer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1484
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateClintEntry Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 1487
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "toknizer":Ljava/util/StringTokenizer;
    :cond_97
    if-eqz v3, :cond_c5

    .line 1488
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V

    .line 1489
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V

    .line 1492
    :cond_c5
    return-void
.end method

.method private writeListToFile()V
    .registers 8

    .prologue
    .line 1495
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Before Writing to File actionNamesMap :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :try_start_1a
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ActionNameMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v2, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1499
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1500
    .local v3, "s":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1501
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_47

    .line 1506
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "s":Ljava/io/ObjectOutputStream;
    :goto_46
    return-void

    .line 1502
    :catch_47
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " Exception occurred while trying to write into file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method


# virtual methods
.method public deleteSSOWhiteList(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
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
    .line 778
    .local p5, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v9, :cond_31

    .line 779
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "deleteSSOWhiteList called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallerUID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / ConainerID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_31
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 784
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 785
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    .line 786
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 787
    const/4 v7, 0x0

    .line 788
    .local v7, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 791
    .restart local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_5b

    .line 792
    :try_start_52
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " deleteSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v9, 0x0

    .line 894
    :goto_5a
    return-object v9

    .line 796
    :cond_5b
    if-nez p5, :cond_66

    .line 797
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " deleteSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v9, 0x0

    goto :goto_5a

    .line 801
    :cond_66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v2, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 804
    .local v6, "mPackage":Ljava/lang/String;
    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6f

    .line 805
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_86} :catch_87

    goto :goto_6f

    .line 827
    .end local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mPackage":Ljava/lang/String;
    :catch_87
    move-exception v4

    .line 828
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8f
    :goto_8f
    move-object v9, v7

    .line 830
    goto :goto_5a

    .line 809
    .restart local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_91
    :try_start_91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a0

    .line 810
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v9, 0x0

    goto :goto_5a

    .line 814
    :cond_a0
    const-string v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b0

    const-string v9, "samsung"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 815
    :cond_b0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 816
    .local v3, "deletePackageList":[Ljava/lang/String;
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    .line 817
    .local v8, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v8, :cond_8f

    .line 818
    const/4 v9, 0x0

    invoke-interface {v8, v3, v9}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 819
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_8f

    .line 823
    .end local v3    # "deletePackageList":[Ljava/lang/String;
    .end local v8    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_d6
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 824
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_e3} :catch_87

    goto :goto_8f

    .line 832
    .end local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_e4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 833
    const/4 v7, 0x0

    .line 834
    .restart local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 836
    .restart local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v9, :cond_101

    .line 837
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 838
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v9, v7

    .line 840
    goto/16 :goto_5a

    .line 844
    :cond_101
    if-nez p3, :cond_10d

    .line 845
    :try_start_103
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " deleteSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v9, 0x0

    goto/16 :goto_5a

    .line 849
    :cond_10d
    if-nez p5, :cond_119

    .line 850
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " deleteSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v9, 0x0

    goto/16 :goto_5a

    .line 854
    :cond_119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .restart local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 857
    .local v1, "conPackageName":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_123
    :goto_123
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_161

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 858
    .restart local v6    # "mPackage":Ljava/lang/String;
    if-eqz v6, :cond_123

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_123

    .line 861
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sec_container_1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sec_container_1."

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_155} :catch_156

    goto :goto_123

    .line 891
    .end local v1    # "conPackageName":Ljava/lang/String;
    .end local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mPackage":Ljava/lang/String;
    :catch_156
    move-exception v4

    .line 892
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_15e
    :goto_15e
    move-object v9, v7

    .line 894
    goto/16 :goto_5a

    .line 867
    .restart local v1    # "conPackageName":Ljava/lang/String;
    .restart local v2    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_161
    :try_start_161
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_171

    .line 868
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v9, 0x0

    goto/16 :goto_5a

    .line 872
    :cond_171
    const-string v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a9

    .line 873
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v2, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 875
    .restart local v3    # "deletePackageList":[Ljava/lang/String;
    packed-switch p2, :pswitch_data_1b8

    goto :goto_15e

    .line 877
    :pswitch_189
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v9, :cond_15e

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v9, :cond_15e

    .line 878
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 879
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_15e

    .line 887
    .end local v3    # "deletePackageList":[Ljava/lang/String;
    :cond_1a9
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 888
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1b6} :catch_156

    goto :goto_15e

    .line 875
    nop

    :pswitch_data_1b8
    .packed-switch 0x1
        :pswitch_189
    .end packed-switch
.end method

.method public forceReauthenticate(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1075
    sget-boolean v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v5, :cond_34

    .line 1076
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "forceReauthenticate called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / ConainerID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_34
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1081
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1082
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1084
    const/4 v2, 0x0

    .line 1085
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1088
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_5d

    .line 1089
    :try_start_55
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " forceReauthenticate: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :goto_5c
    return-object v4

    .line 1093
    :cond_5d
    const-string v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    const-string v4, "samsung"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 1094
    :cond_6d
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 1095
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_8c

    .line 1096
    invoke-interface {v3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1097
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 1098
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " forceReauthenticate. CONTAINER_1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_8c
    :goto_8c
    move-object v4, v2

    .line 1109
    goto :goto_5c

    .line 1102
    :cond_8e
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1103
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_9b} :catch_9c

    goto :goto_8c

    .line 1106
    :catch_9c
    move-exception v1

    .line 1107
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    .line 1112
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_a5
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1113
    const/4 v2, 0x0

    .line 1114
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1116
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v5, :cond_be

    .line 1117
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1118
    invoke-virtual {v2, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v4, v2

    .line 1120
    goto :goto_5c

    .line 1124
    :cond_be
    if-nez p3, :cond_d2

    .line 1125
    :try_start_c0
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " forceReauthenticate: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_c8

    goto :goto_5c

    .line 1147
    :catch_c8
    move-exception v1

    .line 1148
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d0
    :goto_d0
    move-object v4, v2

    .line 1150
    goto :goto_5c

    .line 1129
    :cond_d2
    :try_start_d2
    const-string v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 1130
    packed-switch p2, :pswitch_data_112

    .line 1138
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " forceReauthenticate. default"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1132
    :pswitch_e5
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v4, :cond_d0

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v4, :cond_d0

    .line 1133
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->forceReauthenticate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1134
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_d0

    .line 1143
    :cond_104
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1144
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_111} :catch_c8

    goto :goto_d0

    .line 1130
    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_e5
    .end packed-switch
.end method

.method public getAppAllowedState(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
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
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 899
    sget-boolean v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v6, :cond_34

    .line 900
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, "getAppAllowedState called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v6, "EnterpriseSSOPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallerUID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / ConainerID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_34
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 905
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 906
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 907
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 908
    const/4 v3, 0x0

    .line 909
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 912
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    if-nez p3, :cond_5d

    .line 913
    :try_start_55
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, " getAppAllowedState: parameter type is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_5c
    return-object v5

    .line 917
    :cond_5d
    if-eqz p4, :cond_65

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_77

    .line 918
    :cond_65
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, " getAppAllowedState: parameter packageName is Null or Empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6c} :catch_6d

    goto :goto_5c

    .line 934
    :catch_6d
    move-exception v2

    .line 935
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_75
    :goto_75
    move-object v5, v3

    .line 937
    goto :goto_5c

    .line 922
    :cond_77
    :try_start_77
    const-string v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "samsung"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 923
    :cond_87
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v4

    .line 924
    .local v4, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v4, :cond_75

    .line 925
    invoke-interface {v4, p4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 926
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_75

    .line 930
    .end local v4    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_a0
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 931
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ad} :catch_6d

    goto :goto_75

    .line 940
    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_ae
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 941
    const/4 v3, 0x0

    .line 942
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 944
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    iget-boolean v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v6, :cond_c7

    .line 945
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 946
    invoke-virtual {v3, v10, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v5, v3

    .line 948
    goto :goto_5c

    .line 952
    :cond_c7
    if-nez p3, :cond_db

    .line 953
    :try_start_c9
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, " getAppAllowedState: parameter type is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d0} :catch_d1

    goto :goto_5c

    .line 986
    :catch_d1
    move-exception v2

    .line 987
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d9
    :goto_d9
    move-object v5, v3

    .line 989
    goto :goto_5c

    .line 957
    :cond_db
    if-eqz p4, :cond_e3

    :try_start_dd
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 958
    :cond_e3
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, " getAppAllowedState: parameter packageName is Null or Empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 962
    :cond_ec
    const/4 v1, 0x0

    .line 965
    .local v1, "conPackageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sec_container_1."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sec_container_1."

    const-string v7, ""

    invoke-virtual {p4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    const-string v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 969
    packed-switch p2, :pswitch_data_148

    .line 977
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " getAppAllowedState. default"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 971
    :pswitch_11b
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v5, :cond_d9

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v5, :cond_d9

    .line 972
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v5, v1}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 973
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_d9

    .line 982
    :cond_13a
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 983
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_147} :catch_d1

    goto :goto_d9

    .line 969
    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_11b
    .end packed-switch
.end method

.method public getSSOCustomerId(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 574
    sget-boolean v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v3, :cond_33

    .line 575
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "getSSOCustomerId called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / ConainerID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 580
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 581
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 585
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    const-string v3, "null"

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 586
    invoke-virtual {v2, v6, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v3, v2

    .line 650
    :goto_5b
    return-object v3

    .line 612
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    :cond_5c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 613
    const/4 v2, 0x0

    .line 614
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 615
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v3, :cond_73

    .line 616
    const-string v3, "API Not Supported"

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v2, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v3, v2

    .line 619
    goto :goto_5b

    .line 623
    :cond_73
    if-nez p3, :cond_7e

    .line 624
    :try_start_75
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, " getSSOCustomerId: parameter type is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v3, 0x0

    goto :goto_5b

    .line 628
    :cond_7e
    const-string v3, "centrify"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 629
    packed-switch p2, :pswitch_data_c2

    .line 637
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, " getSSOCustomerId. default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    move-object v3, v2

    .line 650
    goto :goto_5b

    .line 631
    :pswitch_92
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v3, :cond_90

    .line 632
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v3}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->getCustomerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 633
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_ac} :catch_ad

    goto :goto_90

    .line 646
    :catch_ad
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "Failed at EnterpriseSSOPolicy API getSSOCustomerId-Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 642
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b6
    :try_start_b6
    const-string v3, "API Not Supported"

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 643
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c0} :catch_ad

    goto :goto_90

    .line 629
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_92
    .end packed-switch
.end method

.method getUserId(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1658
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1659
    .local v0, "userId":I
    const-string v1, "EnterpriseSSOPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user Id  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    return v0
.end method

.method public isSSOReady(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1382
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1383
    const-string v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inside  isSSOReady in container:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1385
    const/4 v3, 0x0

    .line 1386
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1388
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    if-nez p3, :cond_3a

    .line 1389
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " isSSOReady: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1419
    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_39
    return-object v3

    .line 1393
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_3a
    const/4 v2, 0x0

    .line 1394
    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1395
    const-string v2, "com.centrify.sso.samsung"

    .line 1403
    :goto_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    .local v0, "clientHandle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 1405
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " isSSOReady: SSO for assigned type is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1406
    goto :goto_39

    .line 1396
    .end local v0    # "clientHandle":Ljava/lang/String;
    :cond_7b
    const-string v5, "samsung"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 1397
    const-string v2, "com.sec.android.service.singlesignon"

    goto :goto_45

    .line 1399
    :cond_86
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " isSSOReady: parameter type is wrong"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1400
    goto :goto_39

    .line 1410
    .restart local v0    # "clientHandle":Ljava/lang/String;
    :cond_8f
    :try_start_8f
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 1411
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1415
    :goto_a2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a7} :catch_a8

    goto :goto_39

    .line 1416
    :catch_a8
    move-exception v1

    .line 1417
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "Failed at EnterpriseSSOPolicy API isSSOReady-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 1413
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b1
    :try_start_b1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b6} :catch_a8

    goto :goto_a2
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1285
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1291
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    .line 1336
    sget-boolean v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v8, :cond_1c

    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inside onPreAdminRemoval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1338
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1339
    .local v5, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1340
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "2.0"

    const-string/jumbo v9, "version"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 1341
    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1343
    .local v3, "item":Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "-"

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    .local v7, "toknizer":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1345
    .local v4, "oldUid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 1346
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, "ContainerId":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1348
    .local v6, "sso":Ljava/lang/String;
    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "On admin removal, oldUid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", CtnrId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ssoService:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1350
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V

    .line 1351
    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " after removed mSSOInterfaceMap= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_46

    .line 1357
    .end local v0    # "ContainerId":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "oldUid":Ljava/lang/String;
    .end local v6    # "sso":Ljava/lang/String;
    .end local v7    # "toknizer":Ljava/util/StringTokenizer;
    :cond_e4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1358
    sget-boolean v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v8, :cond_103

    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "leaving onPreAdminRemoval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_103
    return-void
.end method

.method public pushSSOData(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Landroid/os/Bundle;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "dataBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 1236
    sget-boolean v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v4, :cond_33

    .line 1237
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "pushSSOData called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_33
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1242
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1243
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1245
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1246
    const/4 v2, 0x0

    .line 1247
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1250
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_5d

    .line 1251
    :try_start_54
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " pushSSOData: parameter type is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const/4 v4, 0x0

    .line 1278
    :goto_5c
    return-object v4

    .line 1255
    :cond_5d
    const-string v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    const-string v4, "samsung"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 1256
    :cond_6d
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 1257
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_85

    .line 1258
    invoke-interface {v3, p4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->pushSSOData(Landroid/os/Bundle;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1259
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_85
    :goto_85
    move-object v4, v2

    .line 1270
    goto :goto_5c

    .line 1263
    :cond_87
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1264
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_94} :catch_95

    goto :goto_85

    .line 1267
    :catch_95
    move-exception v1

    .line 1268
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "Failed at EnterpriseSSOPolicy API pushSSOData-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 1272
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_9e
    const/4 v2, 0x0

    .line 1273
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1275
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1276
    invoke-virtual {v2, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v4, v2

    .line 1278
    goto :goto_5c
.end method

.method public registerReciever()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    .line 283
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v11, "containerFilter":Landroid/content/IntentFilter;
    const-string v0, "enterprise.container.setup.success"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v0, "enterprise.container.uninstalled"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 307
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 311
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 312
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 316
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v8, "systemFilterAsUser":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 319
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastRecieverAsUser:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 321
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "systemFilterAsUser":Landroid/content/IntentFilter;
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .restart local v8    # "systemFilterAsUser":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 324
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mBroadCastRecieverAsUser:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 326
    return-void
.end method

.method public setCustomerInfo(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "companyName"    # Ljava/lang/String;
    .param p5, "logo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
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
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 994
    sget-boolean v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v5, :cond_34

    .line 995
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "setCustomerInfo called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / ConainerID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_34
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1000
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1001
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1003
    const/4 v2, 0x0

    .line 1004
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1007
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_5d

    .line 1008
    :try_start_55
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " setCustomerInfo: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :goto_5c
    return-object v4

    .line 1012
    :cond_5d
    const-string v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    sget-boolean v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v4, :cond_96

    .line 1013
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "setCustomerInfo called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_96
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 1017
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_ae

    .line 1018
    invoke-interface {v3, p4, p5}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1019
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_ae
    :goto_ae
    move-object v4, v2

    .line 1030
    goto :goto_5c

    .line 1023
    :cond_b0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1024
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_bd} :catch_be

    goto :goto_ae

    .line 1027
    :catch_be
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ae

    .line 1032
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_c7
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1033
    const/4 v2, 0x0

    .line 1034
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1036
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v5, :cond_e1

    .line 1037
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1038
    invoke-virtual {v2, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v4, v2

    .line 1040
    goto/16 :goto_5c

    .line 1044
    :cond_e1
    if-nez p3, :cond_f7

    .line 1045
    :try_start_e3
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " setCustomerInfo: parameter type is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_ea} :catch_ec

    goto/16 :goto_5c

    .line 1067
    :catch_ec
    move-exception v1

    .line 1068
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f4
    :goto_f4
    move-object v4, v2

    .line 1070
    goto/16 :goto_5c

    .line 1049
    :cond_f7
    :try_start_f7
    const-string v4, "centrify"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_129

    .line 1050
    packed-switch p2, :pswitch_data_138

    .line 1058
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " setCustomerInfo. default"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .line 1052
    :pswitch_10a
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v4, :cond_f4

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v4, :cond_f4

    .line 1053
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v4, v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v4, p4, p5}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1054
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_f4

    .line 1063
    :cond_129
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1064
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_136} :catch_ec

    goto :goto_f4

    .line 1050
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_10a
    .end packed-switch
.end method

.method public setSSOCustomerId(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
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
    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 406
    sget-boolean v4, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v4, :cond_35

    .line 407
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "setSSOCustomerId - called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v4, "EnterpriseSSOPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / ConainerID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_35
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 412
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 414
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 415
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 417
    if-nez p3, :cond_59

    .line 418
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " setSSOCustomerId: wrong parameter !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 469
    :cond_58
    :goto_58
    return-object v2

    .line 422
    :cond_59
    const-string v3, "EnterpriseSSOPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSSOCustomerId() containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 425
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {v2, v7, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_58

    .line 430
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_82
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 431
    const/4 v2, 0x0

    .line 432
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 434
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v4, :cond_9a

    .line 435
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 436
    invoke-virtual {v2, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_58

    .line 442
    :cond_9a
    if-nez p3, :cond_a5

    .line 443
    :try_start_9c
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " setSSOCustomerId: wrong parameter !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 444
    goto :goto_58

    .line 447
    :cond_a5
    const-string v3, "centrify"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 448
    packed-switch p2, :pswitch_data_f8

    .line 457
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, " setSSOCustomerId. default"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b7} :catch_b8

    goto :goto_58

    .line 466
    :catch_b8
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, "Failed at EnterpriseSSOPolicy API setSSOCustomerId-Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_c1
    :try_start_c1
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v3, :cond_58

    .line 451
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v3, v3, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v3, p4}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setCustomerId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 452
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 453
    const-string v3, "EnterpriseSSOPolicyService"

    const-string v4, " setSSOCustomerId. CONTAINER_1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 462
    :cond_e8
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 463
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_f5} :catch_b8

    goto/16 :goto_58

    .line 448
    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_c1
    .end packed-switch
.end method

.method public setSSOWhiteList(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
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
    .line 655
    .local p5, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v9, :cond_31

    .line 656
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "setSSOWhiteList called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v9, "EnterpriseSSOPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallerUID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / ConainerID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_31
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 661
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 662
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e4

    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 664
    const/4 v7, 0x0

    .line 665
    .local v7, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 668
    .restart local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_5b

    .line 669
    :try_start_52
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " setSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v9, 0x0

    .line 773
    :goto_5a
    return-object v9

    .line 673
    :cond_5b
    if-nez p5, :cond_66

    .line 674
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " setSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v9, 0x0

    goto :goto_5a

    .line 678
    :cond_66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v3, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 681
    .local v6, "mPackage":Ljava/lang/String;
    if-eqz v6, :cond_6f

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6f

    .line 682
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_86} :catch_87

    goto :goto_6f

    .line 704
    .end local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mPackage":Ljava/lang/String;
    :catch_87
    move-exception v4

    .line 705
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "Failed at EnterpriseSSOPolicy API setSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8f
    :goto_8f
    move-object v9, v7

    .line 707
    goto :goto_5a

    .line 686
    .restart local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_91
    :try_start_91
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_a0

    .line 687
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "setSSOWhiteList: packageName list is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v9, 0x0

    goto :goto_5a

    .line 691
    :cond_a0
    const-string v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b0

    const-string v9, "samsung"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 692
    :cond_b0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 693
    .local v0, "addPackageList":[Ljava/lang/String;
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    .line 694
    .local v8, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v8, :cond_8f

    .line 695
    const/4 v9, 0x1

    invoke-interface {v8, v0, v9}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 696
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_8f

    .line 700
    .end local v0    # "addPackageList":[Ljava/lang/String;
    .end local v8    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_d6
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 701
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_e3} :catch_87

    goto :goto_8f

    .line 710
    .end local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_e4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 711
    const/4 v7, 0x0

    .line 712
    .restart local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v7, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 714
    .restart local v7    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v9, :cond_101

    .line 715
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 716
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v9, v7

    .line 718
    goto/16 :goto_5a

    .line 722
    :cond_101
    if-nez p3, :cond_10d

    .line 723
    :try_start_103
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " setSSOWhiteList: parameter type is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v9, 0x0

    goto/16 :goto_5a

    .line 727
    :cond_10d
    if-nez p5, :cond_119

    .line 728
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " setSSOWhiteList: packageName is Null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/4 v9, 0x0

    goto/16 :goto_5a

    .line 732
    :cond_119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .restart local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 735
    .local v2, "conPackageName":Ljava/lang/String;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_123
    :goto_123
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_161

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 736
    .restart local v6    # "mPackage":Ljava/lang/String;
    if-eqz v6, :cond_123

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_123

    .line 739
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sec_container_1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "sec_container_1."

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_155} :catch_156

    goto :goto_123

    .line 770
    .end local v2    # "conPackageName":Ljava/lang/String;
    .end local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mPackage":Ljava/lang/String;
    :catch_156
    move-exception v4

    .line 771
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "Failed at EnterpriseSSOPolicy API setSSOWhiteList-Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_15e
    :goto_15e
    move-object v9, v7

    .line 773
    goto/16 :goto_5a

    .line 745
    .restart local v2    # "conPackageName":Ljava/lang/String;
    .restart local v3    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_161
    :try_start_161
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_171

    .line 746
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, "setSSOWhiteList: packageName List has only one Null item"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v9, 0x0

    goto/16 :goto_5a

    .line 750
    :cond_171
    const-string v9, "centrify"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b0

    .line 751
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 753
    .restart local v0    # "addPackageList":[Ljava/lang/String;
    packed-switch p2, :pswitch_data_1be

    .line 761
    const-string v9, "EnterpriseSSOPolicyService"

    const-string v10, " setSSOWhiteList. default"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 755
    :pswitch_190
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v9, :cond_15e

    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v9, :cond_15e

    .line 756
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v9, v9, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    const/4 v10, 0x1

    invoke-interface {v9, v0, v10}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 757
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_15e

    .line 766
    .end local v0    # "addPackageList":[Ljava/lang/String;
    :cond_1b0
    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 767
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1bd} :catch_156

    goto :goto_15e

    .line 753
    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_190
    .end packed-switch
.end method

.method public setupSSO(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    sget-boolean v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v8, :cond_49

    .line 475
    const-string v8, "EnterpriseSSOPolicyService"

    const-string v9, "setupSSO called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallerUID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / ConainerID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_49
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 481
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 482
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "2.0"

    const-string/jumbo v9, "version"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a4

    .line 483
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 484
    const/4 v6, 0x0

    .line 485
    .local v6, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 488
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_73

    .line 489
    :try_start_6a
    const-string v8, "EnterpriseSSOPolicyService"

    const-string v9, " setupSSO: parameter packageName is Null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v8, 0x0

    .line 568
    :goto_72
    return-object v8

    .line 492
    :cond_73
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->isExistingOrFirstClient(II)Z

    move-result v1

    .line 493
    .local v1, "bNewOrExistingClient":Z
    if-nez v1, :cond_8d

    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_196

    .line 494
    :cond_8d
    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 495
    .local v0, "bIsContainKey":Z
    if-eqz v0, :cond_ce

    .line 496
    sget-object v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    .line 498
    .local v5, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    if-eqz v8, :cond_ce

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v8

    if-ne v8, p2, :cond_ce

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 500
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 501
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v8, v6

    .line 502
    goto :goto_72

    .line 506
    .end local v5    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    :cond_ce
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8, v9, p3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I

    move-result v7

    .line 507
    .local v7, "result":I
    sget-boolean v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v8, :cond_fe

    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupSSO() containerId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /  result of sso binding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_fe
    const/4 v8, 0x1

    if-eq v8, v7, :cond_104

    const/4 v8, 0x2

    if-ne v8, v7, :cond_188

    .line 509
    :cond_104
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 510
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 511
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "clientHandle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_166

    .line 513
    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " setupSSO: adding cilentHandle :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->removeClintEntry(I)V

    .line 515
    iget-object v8, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->writeListToFile()V

    .end local v0    # "bIsContainKey":Z
    .end local v1    # "bNewOrExistingClient":Z
    .end local v3    # "clientHandle":Ljava/lang/String;
    .end local v7    # "result":I
    :goto_163
    move-object v8, v6

    .line 535
    goto/16 :goto_72

    .line 518
    .restart local v0    # "bIsContainKey":Z
    .restart local v1    # "bNewOrExistingClient":Z
    .restart local v3    # "clientHandle":Ljava/lang/String;
    .restart local v7    # "result":I
    :cond_166
    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " setupSSO: already present cilentHandle :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_17e} :catch_17f

    goto :goto_163

    .line 532
    .end local v0    # "bIsContainKey":Z
    .end local v1    # "bNewOrExistingClient":Z
    .end local v3    # "clientHandle":Ljava/lang/String;
    .end local v7    # "result":I
    :catch_17f
    move-exception v4

    .line 533
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseSSOPolicyService"

    const-string v9, "Failed at EnterpriseSSOPolicy API setupSSO-Exception"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_163

    .line 521
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "bIsContainKey":Z
    .restart local v1    # "bNewOrExistingClient":Z
    .restart local v7    # "result":I
    :cond_188
    const/4 v8, -0x1

    :try_start_189
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 522
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_163

    .line 528
    .end local v0    # "bIsContainKey":Z
    .end local v7    # "result":I
    :cond_196
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 529
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1a3} :catch_17f

    goto :goto_163

    .line 538
    .end local v1    # "bNewOrExistingClient":Z
    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_1a4
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 539
    const/4 v6, 0x0

    .line 540
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 543
    .restart local v6    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_1b9

    .line 544
    :try_start_1af
    const-string v8, "EnterpriseSSOPolicyService"

    const-string v9, " setupSSO: parameter packageName is Null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v8, 0x0

    goto/16 :goto_72

    .line 548
    :cond_1b9
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_218

    .line 549
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(I)I

    move-result v7

    .line 550
    .restart local v7    # "result":I
    sget-boolean v8, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v8, :cond_1eb

    const-string v8, "EnterpriseSSOPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupSSO() containerId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /  result of sso binding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1eb
    const/4 v8, 0x1

    if-eq v8, v7, :cond_1f1

    const/4 v8, 0x2

    if-ne v8, v7, :cond_201

    .line 552
    :cond_1f1
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 553
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .end local v7    # "result":I
    :goto_1fe
    move-object v8, v6

    .line 568
    goto/16 :goto_72

    .line 555
    .restart local v7    # "result":I
    :cond_201
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 556
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_20e} :catch_20f

    goto :goto_1fe

    .line 565
    .end local v7    # "result":I
    :catch_20f
    move-exception v4

    .line 566
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseSSOPolicyService"

    const-string v9, "Failed at EnterpriseSSOPolicy API setupSSO-Exception"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1fe

    .line 561
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_218
    const/4 v8, -0x1

    :try_start_219
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 562
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_225} :catch_20f

    goto :goto_1fe
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1295
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, "inside systemReady laoding list from file."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->loadListFromFile()V

    .line 1298
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_49

    .line 1303
    :goto_e
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_55

    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_55

    .line 1304
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_55

    .line 1305
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1306
    .local v3, "items":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_46

    .line 1307
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1308
    .local v0, "clientId":I
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {p0, v0, v6, v4}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)I

    .line 1304
    .end local v0    # "clientId":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1299
    .end local v2    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    :catch_49
    move-exception v1

    .line 1300
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseSSOPolicyService"

    const-string v5, " Exception occurred while trying to read from file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 1312
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_55
    return-void
.end method

.method public unenroll(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1155
    sget-boolean v6, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->DBG:Z

    if-eqz v6, :cond_49

    .line 1156
    const-string v6, "EnterpriseSSOPolicyService"

    const-string/jumbo v7, "unenroll called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v6, "EnterpriseSSOPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallerUID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / ConainerID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_49
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->printArtifacts()V

    .line 1161
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 1162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1164
    const/4 v3, 0x0

    .line 1165
    .local v3, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1168
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    if-nez p3, :cond_72

    .line 1169
    :try_start_6a
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, " unenroll: parameter type is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :goto_71
    return-object v5

    .line 1173
    :cond_72
    const-string v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    const-string v5, "samsung"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 1174
    :cond_82
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->getSSOnterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v4

    .line 1175
    .local v4, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v4, :cond_b9

    .line 1176
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "calling unenroll on ssointerface.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-interface {v4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->unenroll()I

    move-result v2

    .line 1178
    .local v2, "res":I
    const-string v5, "EnterpriseSSOPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling unenroll on ssointerface.. res= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1180
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .end local v2    # "res":I
    .end local v4    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_b9
    :goto_b9
    move-object v5, v3

    .line 1191
    goto :goto_71

    .line 1184
    :cond_bb
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1185
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_c8} :catch_c9

    goto :goto_b9

    .line 1188
    :catch_c9
    move-exception v1

    .line 1189
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b9

    .line 1193
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_d2
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->enforceEnterpriseSSOPermission()I

    .line 1194
    const/4 v3, 0x0

    .line 1195
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 1197
    .restart local v3    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    iget-boolean v6, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOServiceInitialized:Z

    if-nez v6, :cond_eb

    .line 1198
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1199
    invoke-virtual {v3, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    move-object v5, v3

    .line 1201
    goto :goto_71

    .line 1205
    :cond_eb
    if-nez p3, :cond_101

    .line 1206
    :try_start_ed
    const-string v6, "EnterpriseSSOPolicyService"

    const-string v7, " unenroll: parameter type is Null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f4} :catch_f6

    goto/16 :goto_71

    .line 1228
    :catch_f6
    move-exception v1

    .line 1229
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_fe
    :goto_fe
    move-object v5, v3

    .line 1231
    goto/16 :goto_71

    .line 1210
    :cond_101
    :try_start_101
    const-string v5, "centrify"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 1211
    packed-switch p2, :pswitch_data_142

    .line 1219
    const-string v5, "EnterpriseSSOPolicyService"

    const-string v6, " unenroll. default"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 1213
    :pswitch_114
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    if-eqz v5, :cond_fe

    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    if-eqz v5, :cond_fe

    .line 1214
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->mSSOInterfaceList1:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    iget-object v5, v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    invoke-interface {v5}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;->unenroll()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1215
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_fe

    .line 1224
    :cond_133
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 1225
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_140} :catch_f6

    goto :goto_fe

    .line 1211
    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_114
    .end packed-switch
.end method
