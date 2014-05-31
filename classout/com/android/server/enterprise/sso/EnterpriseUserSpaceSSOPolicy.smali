.class public Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
.super Landroid/app/enterprise/IEnterpriseUserSpaceSSOPolicy$Stub;
.source "EnterpriseUserSpaceSSOPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;
    }
.end annotation


# static fields
.field private static final CENTRIFY_SSO_PACKAGE:Ljava/lang/String; = "com.centrify.sso.samsung"

.field private static final DBG:Z

.field private static final EMPTY_SIZE:I = 0x0

.field private static final INTENT_SSO_SERVICE_CONNECTED_IN_USERSPACE:Ljava/lang/String; = "sso.enterprise.userspace.setup.success"

.field private static final INTENT_SSO_SERVICE_DISCONNECTED_IN_USERSPACE:Ljava/lang/String; = "sso.enterprise.userspace.disconnected"

.field private static final KERBEROS_SSO_PACKAGE:Ljava/lang/String; = "com.sec.android.service.singlesignon"

.field private static LOCAL_FILE_PATH:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EnterpriseUserSpaceSSOPolicy"

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
.field private final BIND_ACTION_SSO_SERVICE_FOR_KNOX2:Ljava/lang/String;

.field private final SSO_BIND_FAILURE:I

.field private final SSO_BIND_RESULT_FAILURE:I

.field private final SSO_BIND_RESULT_SUCCESS:I

.field private final SSO_BIND_SUCCESS:I

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

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    .line 109
    const-string v0, "/data/system/"

    sput-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseUserSpaceSSOPolicy$Stub;-><init>()V

    .line 93
    const-string v0, "com.samsung.safe.auth.mgmt2"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->BIND_ACTION_SSO_SERVICE_FOR_KNOX2:Ljava/lang/String;

    .line 95
    iput v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_SUCCESS:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_FAILURE:I

    .line 97
    iput v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_RESULT_FAILURE:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->SSO_BIND_RESULT_SUCCESS:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    .line 773
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$2;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    .line 196
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->registerReciever()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->updateClintEntry(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindSSOInterfaces(IILjava/lang/String;)Z
    .registers 13
    .param p1, "clientId"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v6, :cond_4c

    .line 126
    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindSSOInterfaces - clientId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindSSOInterfaces - USER ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4c
    const/4 v4, 0x0

    .line 132
    .local v4, "result":Z
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 133
    .local v5, "uHandle":Landroid/os/UserHandle;
    new-instance v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$SSOConnection;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;IILjava/lang/String;)V

    .line 134
    .local v2, "cSSOConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.safe.auth.mgmt2"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 138
    .local v0, "backupUID":J
    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v2, v7, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    .line 139
    const/4 v2, 0x0

    .line 140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    return v4
.end method

.method private enforceEnterpriseSSOPermission()I
    .registers 3

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 184
    if-eqz p1, :cond_21

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 186
    .local v1, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->isExistingOrFirstClient(II)Z

    move-result v0

    .line 187
    .local v0, "bFirstOrExistingClient":Z
    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    .line 188
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, " SSO for this User has already being used by another admin"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_17
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const-string v3, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v2, p1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 192
    .end local v0    # "bFirstOrExistingClient":Z
    .end local v1    # "userId":I
    :cond_21
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_17

    .line 112
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    const-string v1, "SSO: getEDM()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 116
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 593
    const/4 v1, 0x0

    .line 594
    .local v1, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 595
    .local v0, "bIsContainKey":Z
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v2, :cond_31

    const-string v2, "EnterpriseUserSpaceSSOPolicy"

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

    .line 596
    :cond_31
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 597
    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    check-cast v1, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    .line 600
    .restart local v1    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :cond_49
    sget-boolean v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v2, :cond_67

    .line 601
    if-nez v1, :cond_67

    .line 602
    const-string v2, "EnterpriseUserSpaceSSOPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSSOInterface - SSOnterface not registered for the user space --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_67
    return-object v1
.end method

.method private isExistingOrFirstClient(II)Z
    .registers 9
    .param p1, "clientUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 523
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistingOrNewClient CallerUID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",containerId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   clientsList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 525
    const/4 v2, 0x1

    .line 526
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 527
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

    if-eq v3, v4, :cond_38

    .line 528
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

    if-nez v3, :cond_9a

    .line 529
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "isExistingOrFirstClient: got another client already in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v2, 0x0

    .line 537
    .end local v1    # "item":Ljava/lang/String;
    :cond_8f
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 538
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "leaving isExistingOrNewClient "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v2

    .line 533
    .restart local v1    # "item":Ljava/lang/String;
    :cond_9a
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "isExistingOrFirstClient: got client in the clientsList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method private loadListFromFile()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, "f":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 736
    .local v5, "s":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 738
    .local v3, "file":Ljava/io/File;
    :try_start_3
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ActionNameMapForOwnerUser"

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

    .line 744
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :goto_1e
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_38

    .line 745
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_69

    .line 746
    .end local v1    # "f":Ljava/io/FileInputStream;
    .local v2, "f":Ljava/io/FileInputStream;
    :try_start_29
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_7f

    .line 747
    .end local v5    # "s":Ljava/io/ObjectInputStream;
    .local v6, "s":Ljava/io/ObjectInputStream;
    :try_start_2e
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_82

    move-object v5, v6

    .end local v6    # "s":Ljava/io/ObjectInputStream;
    .restart local v5    # "s":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 755
    .end local v2    # "f":Ljava/io/FileInputStream;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    :cond_38
    :goto_38
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " After reading from File actionNamesMap :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-eqz v5, :cond_57

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 757
    :cond_57
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 758
    :cond_5c
    return-void

    .line 739
    :catch_5d
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_69
    move-exception v0

    .line 750
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    if-eqz v5, :cond_6f

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 751
    :cond_6f
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 752
    :cond_74
    const-string v7, "EnterpriseUserSpaceSSOPolicy"

    const-string v8, " Exception occurred while trying to read from file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 749
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
    .line 121
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface Map        :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientsList Map      :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private removeClintEntry(I)V
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 760
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 772
    :goto_4
    return-void

    .line 762
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 763
    .local v2, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4e

    .line 764
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 765
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

    .line 766
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    const-string v4, "found entery to remove."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v3, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 763
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 770
    .end local v1    # "items":[Ljava/lang/String;
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    .line 771
    const-string v3, "EnterpriseUserSpaceSSOPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " after removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

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
    .line 704
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

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

    .line 705
    const/4 v3, 0x0

    .line 706
    .local v3, "uid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

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

    .line 707
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

    .line 708
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "-"

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v2, "toknizer":Ljava/util/StringTokenizer;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

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

    .line 710
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 711
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

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

    .line 714
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "toknizer":Ljava/util/StringTokenizer;
    :cond_97
    if-eqz v3, :cond_c5

    .line 715
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V

    .line 716
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

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

    .line 717
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    .line 719
    :cond_c5
    return-void
.end method

.method private writeListToFile()V
    .registers 8

    .prologue
    .line 721
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Before Writing to File actionNamesMap :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :try_start_1a
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->LOCAL_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ActionNameMapForOwnerUser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    .local v2, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 725
    .local v1, "f":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 726
    .local v3, "s":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 727
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_47

    .line 732
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "s":Ljava/io/ObjectOutputStream;
    :goto_46
    return-void

    .line 728
    :catch_47
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, " Exception occurred while trying to write into file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method


# virtual methods
.method public deleteSSOWhiteListInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    .line 302
    .local p3, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_25

    .line 303
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "deleteSSOWhiteListInUserSpace called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallerUID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_25
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 307
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 308
    const/4 v5, 0x0

    .line 309
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 310
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 311
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 313
    if-eqz p1, :cond_44

    if-eqz p2, :cond_44

    if-nez p3, :cond_46

    :cond_44
    const/4 v5, 0x0

    .line 340
    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_45
    :goto_45
    return-object v5

    .line 314
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_46
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_58

    const/4 v5, 0x0

    goto :goto_45

    .line 316
    :cond_58
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 318
    .local v7, "userId":I
    :try_start_5c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 321
    .local v4, "pName":Ljava/lang/String;
    if-eqz v4, :cond_65

    .line 322
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_76} :catch_77

    goto :goto_65

    .line 337
    .end local v0    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pName":Ljava/lang/String;
    :catch_77
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "Failed at EnterpriseSSOPolicy API deleteSSOWhiteList-Exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 326
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_80
    :try_start_80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_8f

    .line 327
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "deleteSSOWhiteList: packageName List has only one Null item"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v5, 0x0

    goto :goto_45

    .line 331
    :cond_8f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 332
    .local v1, "deletePackageList":[Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v6

    .line 333
    .local v6, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v6, :cond_45

    .line 334
    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 335
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b2} :catch_77

    goto :goto_45
.end method

.method public forceReauthenticateInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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

    const/4 v8, 0x1

    .line 403
    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v5, :cond_27

    .line 404
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "forceReauthenticateInUserSpace called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_27
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 412
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v1, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 414
    if-eqz p1, :cond_42

    if-nez p2, :cond_44

    :cond_42
    move-object v1, v4

    .line 427
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_43
    :goto_43
    return-object v1

    .line 415
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_44
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    move-object v1, v4

    goto :goto_43

    .line 417
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 419
    .local v3, "userId":I
    :try_start_5a
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .line 420
    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_43

    .line 421
    invoke-interface {v2}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->forceReauthenticate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 422
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_70} :catch_71

    goto :goto_43

    .line 424
    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_71
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API forceReauthenticate-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public getAppAllowedStateInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 344
    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v5, :cond_28

    .line 345
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "getAppAllowedStateInUserSpace called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_28
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 352
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {v1, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 354
    if-eqz p1, :cond_44

    if-eqz p2, :cond_44

    if-nez p3, :cond_46

    :cond_44
    move-object v1, v4

    .line 368
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_45
    :goto_45
    return-object v1

    .line 355
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_46
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    move-object v1, v4

    goto :goto_45

    .line 357
    :cond_58
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 360
    .local v3, "userId":I
    :try_start_5c
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .line 361
    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_45

    .line 362
    invoke-interface {v2, p3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->getAppAllowedState(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 363
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_72} :catch_73

    goto :goto_45

    .line 365
    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_73
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API getAppAllowedState-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45
.end method

.method getUserId(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 699
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 700
    .local v0, "userId":I
    const-string v1, "EnterpriseUserSpaceSSOPolicy"

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

    .line 701
    return v0
.end method

.method public isSSOReadyInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 608
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inside  isSSOReadyInUserSpace :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 610
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 611
    const/4 v2, 0x0

    .line 612
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 613
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 614
    invoke-virtual {v2, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 616
    if-eqz p1, :cond_35

    if-nez p2, :cond_37

    :cond_35
    move-object v2, v4

    .line 636
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :goto_36
    return-object v2

    .line 617
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Boolean;>;"
    :cond_37
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    move-object v2, v4

    goto :goto_36

    .line 619
    :cond_49
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

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "clientHandle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 621
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, " isSSOReady: SSO for assigned packageName is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 622
    goto :goto_36

    .line 626
    :cond_7f
    :try_start_7f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 627
    .local v3, "userId":I
    sget-object v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 628
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 632
    :goto_94
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_99} :catch_9a

    goto :goto_36

    .line 633
    .end local v3    # "userId":I
    :catch_9a
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API isSSOReadyInUserSpace-Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 630
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userId":I
    :cond_a3
    :try_start_a3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a8} :catch_9a

    goto :goto_94
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 492
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 498
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    .line 543
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside onPreAdminRemoval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 545
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 546
    .local v8, "removedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 548
    .local v5, "item":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v0, "-"

    invoke-direct {v9, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .local v9, "toknizer":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "oldUid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 551
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "ContainerId":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "sso":Ljava/lang/String;
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On admin removal, oldUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CtnrId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssoService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v0

    if-nez v0, :cond_bb

    .line 555
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    .line 576
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy$1UnenrollRunnable;-><init>(Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_33

    .line 578
    :cond_bb
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->unenrollInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    .line 579
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V

    .line 581
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 582
    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " after removed mSSOInterfaceMap= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget-object v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_33

    .line 587
    .end local v3    # "ContainerId":Ljava/lang/String;
    .end local v4    # "sso":Ljava/lang/String;
    .end local v5    # "item":Ljava/lang/String;
    .end local v7    # "oldUid":Ljava/lang/String;
    .end local v9    # "toknizer":Ljava/util/StringTokenizer;
    :cond_f5
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 588
    sget-boolean v0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v0, :cond_114

    const-string v0, "EnterpriseUserSpaceSSOPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaving onPreAdminRemoval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_114
    return-void
.end method

.method public pushSSODataInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .param p3, "dataBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 462
    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v5, :cond_27

    .line 463
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "pushSSODataInUserSpace called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_27
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 467
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 470
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v1, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 473
    if-eqz p1, :cond_42

    if-nez p2, :cond_44

    :cond_42
    move-object v1, v4

    .line 486
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_43
    :goto_43
    return-object v1

    .line 474
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_44
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    move-object v1, v4

    goto :goto_43

    .line 476
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 478
    .local v3, "userId":I
    :try_start_5a
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .line 479
    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_43

    .line 480
    invoke-interface {v2, p3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->pushSSOData(Landroid/os/Bundle;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 481
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_70} :catch_71

    goto :goto_43

    .line 483
    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_71
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public registerReciever()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBroadCastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 154
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mBReciever:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method public setCustomerInfoInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .param p3, "companyName"    # Ljava/lang/String;
    .param p4, "logoFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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

    const/4 v8, 0x1

    .line 372
    sget-boolean v5, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v5, :cond_27

    .line 373
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "setCustomerInfo called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallerUID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_27
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 377
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 380
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v1, v8, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 382
    if-eqz p1, :cond_42

    if-nez p2, :cond_44

    :cond_42
    move-object v1, v4

    .line 399
    .end local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_43
    :goto_43
    return-object v1

    .line 383
    .restart local v1    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_44
    const-string v5, "com.centrify.sso.samsung"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    move-object v1, v4

    goto :goto_43

    .line 385
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 387
    .local v3, "userId":I
    :try_start_5a
    sget-boolean v4, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v4, :cond_89

    .line 388
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "forceReauthenticate called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CallerUID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_89
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v2

    .line 392
    .local v2, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v2, :cond_43

    .line 393
    invoke-interface {v2, p3, p4}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setCustomerInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 394
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_9f} :catch_a0

    goto :goto_43

    .line 396
    .end local v2    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_a0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public setSSOWhiteListInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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
    .line 256
    .local p3, "packageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_25

    .line 257
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setSSOWhiteListInUserSpace called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CallerUID : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_25
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 261
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 263
    const/4 v5, 0x0

    .line 264
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 265
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 266
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 268
    if-eqz p1, :cond_44

    if-eqz p2, :cond_44

    if-nez p3, :cond_4d

    .line 269
    :cond_44
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setSSOWhiteList: wrong parameter !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v5, 0x0

    .line 298
    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_4c
    :goto_4c
    return-object v5

    .line 272
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_4d
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    const/4 v5, 0x0

    goto :goto_4c

    .line 274
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 276
    .local v7, "userId":I
    :try_start_63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v1, "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 279
    .local v4, "pName":Ljava/lang/String;
    if-eqz v4, :cond_6c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6c

    .line 280
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_83} :catch_84

    goto :goto_6c

    .line 295
    .end local v1    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pName":Ljava/lang/String;
    :catch_84
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "Failed at EnterpriseSSOPolicy API setCustomerInfo-Exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 284
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "containerizedPackageName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8d
    :try_start_8d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9c

    .line 285
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setSSOWhiteList: packageName list is empty"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v5, 0x0

    goto :goto_4c

    .line 289
    :cond_9c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 290
    .local v0, "addPackageList":[Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v6

    .line 291
    .local v6, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v6, :cond_4c

    .line 292
    const/4 v8, 0x1

    invoke-interface {v6, v0, v8}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->setAppAllowedState([Ljava/lang/String;Z)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 293
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_bf} :catch_84

    goto :goto_4c
.end method

.method public setupSSOInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_24

    .line 202
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "setupSSOInUserSpace called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "solutionPackageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_24
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 208
    const/4 v5, 0x0

    .line 209
    .local v5, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 210
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 211
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 213
    .local v7, "userId":I
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v8, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->isExistingOrFirstClient(II)Z

    move-result v0

    .line 214
    .local v0, "bFirstOrExistingClient":Z
    const/4 v8, 0x1

    if-ne v0, v8, :cond_52

    if-eqz p2, :cond_52

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_54

    :cond_52
    const/4 v5, 0x0

    .line 252
    .end local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :goto_53
    return-object v5

    .line 215
    .restart local v5    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_54
    const-string v8, "com.centrify.sso.samsung"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    const-string v8, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    const/4 v5, 0x0

    goto :goto_53

    .line 217
    :cond_66
    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 218
    .local v1, "bIsContainKey":Z
    if-eqz v1, :cond_a6

    .line 219
    sget-object v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->mSSOTypeMap:Ljava/util/Map;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/utils/SSOTypeMapData;

    .line 221
    .local v4, "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getSSOInterface()Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v8

    if-eqz v8, :cond_a6

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getContainerId()I

    move-result v8

    if-ne v8, v7, :cond_a6

    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/SSOTypeMapData;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 223
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 224
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_53

    .line 230
    .end local v4    # "mSSOTypeMapData":Lcom/android/server/enterprise/utils/SSOTypeMapData;
    :cond_a6
    :try_start_a6
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v8, v7, p2}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    move-result v6

    .line 231
    .local v6, "result":Z
    sget-boolean v8, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v8, :cond_d2

    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setupSSO() userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " /  result of sso binding : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_d2
    if-eqz v6, :cond_155

    .line 233
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 234
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "clientHandle":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13b

    .line 237
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " setupSSO: adding cilentHandle :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->removeClintEntry(I)V

    .line 239
    iget-object v8, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->writeListToFile()V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_12f} :catch_131

    goto/16 :goto_53

    .line 248
    .end local v2    # "clientHandle":Ljava/lang/String;
    .end local v6    # "result":Z
    :catch_131
    move-exception v3

    .line 249
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    const-string v9, "Failed at EnterpriseSSOPolicy API setupSSO-Exception"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    .line 242
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "clientHandle":Ljava/lang/String;
    .restart local v6    # "result":Z
    :cond_13b
    :try_start_13b
    const-string v8, "EnterpriseUserSpaceSSOPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " setupSSO: already present cilentHandle :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 245
    .end local v2    # "clientHandle":Ljava/lang/String;
    :cond_155
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 246
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_162} :catch_131

    goto/16 :goto_53
.end method

.method public systemReady()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 503
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, "inside systemReady laoding list from file."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->loadListFromFile()V

    .line 506
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_49

    .line 511
    :goto_e
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_55

    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_55

    .line 512
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_55

    .line 513
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->clientsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, "items":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_46

    .line 515
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "clientId":I
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-direct {p0, v0, v6, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->bindSSOInterfaces(IILjava/lang/String;)Z

    .line 512
    .end local v0    # "clientId":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 507
    .end local v2    # "i":I
    .end local v3    # "items":[Ljava/lang/String;
    :catch_49
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseUserSpaceSSOPolicy"

    const-string v5, " Exception occurred while trying to read from file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 520
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_55
    return-void
.end method

.method public unenrollInUserSpace(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "solutionPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
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

    const/4 v9, 0x1

    .line 431
    sget-boolean v6, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->DBG:Z

    if-eqz v6, :cond_39

    .line 432
    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unenrollInUserSpace called for pkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v6, "EnterpriseUserSpaceSSOPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CallerUID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_39
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->printArtifacts()V

    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->enforceEnterpriseSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    .line 439
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v2, v9, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 442
    if-eqz p1, :cond_54

    if-nez p2, :cond_56

    :cond_54
    move-object v2, v5

    .line 458
    .end local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_55
    :goto_55
    return-object v2

    .line 443
    .restart local v2    # "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<Ljava/lang/Integer;>;"
    :cond_56
    const-string v6, "com.centrify.sso.samsung"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    const-string v6, "com.sec.android.service.singlesignon"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    move-object v2, v5

    goto :goto_55

    .line 445
    :cond_68
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 447
    .local v4, "userId":I
    :try_start_6c
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;->getSSOInterface(I)Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;

    move-result-object v3

    .line 448
    .local v3, "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    if-eqz v3, :cond_55

    .line 449
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "calling unenroll on ssointerface.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-interface {v3}, Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;->unenroll()I

    move-result v1

    .line 451
    .local v1, "res":I
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling unenroll on ssointerface.. res= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 453
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_a1} :catch_a2

    goto :goto_55

    .line 455
    .end local v1    # "res":I
    .end local v3    # "ssoInterface":Lcom/sec/android/service/singlesignon/IEnterpriseSecurityManager2;
    :catch_a2
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseUserSpaceSSOPolicy"

    const-string v6, "Failed at EnterpriseSSOPolicy API unenroll-Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55
.end method
