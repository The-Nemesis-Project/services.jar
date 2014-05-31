.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Landroid/app/enterprise/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;,
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_LDAP_INTERFACE_SERVICE:Ljava/lang/String; = "com.android.email.MDM_LDAP"

.field private static final CONNECTION_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/app/enterprise/ILDAPAccountPolicy$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    .line 259
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/os/UserHandle;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/content/Context;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z

    move-result v0

    return v0
.end method

.method private bindLDAPInterfaceService(II)V
    .registers 15
    .param p1, "callingUserId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 294
    const-string v9, "LDAPAccountPolicyService"

    const-string v10, "bindLDAPInterfaceService()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 297
    .local v6, "token":J
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v8

    .line 298
    .local v8, "userContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 300
    .local v2, "isBound":Z
    :try_start_10
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getConnection(I)Landroid/content/ServiceConnection;

    move-result-object v0

    .line 301
    .local v0, "connxn":Landroid/content/ServiceConnection;
    invoke-direct {p0, v8, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->registerLDAPInterfaceReceiver(Landroid/content/Context;I)Landroid/content/BroadcastReceiver;

    move-result-object v3

    .line 303
    .local v3, "ldapReceiver":Landroid/content/BroadcastReceiver;
    new-instance v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    .line 304
    .local v5, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    iput p1, v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 305
    iput-object v0, v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 306
    iput-object v3, v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.email.MDM_LDAP"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 311
    if-nez v2, :cond_4e

    .line 312
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z

    .line 313
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_4a} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_4a} :catch_60
    .catchall {:try_start_10 .. :try_end_4a} :catchall_5b

    .line 323
    .end local v0    # "connxn":Landroid/content/ServiceConnection;
    .end local v3    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :goto_4a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    return-void

    .line 316
    .restart local v0    # "connxn":Landroid/content/ServiceConnection;
    .restart local v3    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .restart local v5    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_4e
    :try_start_4e
    iget-object v9, v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mBindComplete:Landroid/os/ConditionVariable;

    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_55} :catch_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_55} :catch_60
    .catchall {:try_start_4e .. :try_end_55} :catchall_5b

    goto :goto_4a

    .line 317
    .end local v0    # "connxn":Landroid/content/ServiceConnection;
    .end local v3    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .end local v5    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :catch_56
    move-exception v4

    .line 318
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_57
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_4a

    .line 323
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catchall_5b
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 319
    :catch_60
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_61
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 321
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_5b

    goto :goto_4a
.end method

.method private enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getConnection(I)Landroid/content/ServiceConnection;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 198
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)V

    .line 199
    .local v0, "connxn":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 219
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 222
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLDAPReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 121
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    .line 150
    .local v0, "interfaceReceiver":Landroid/content/BroadcastReceiver;
    return-object v0
.end method

.method private getUserContext(I)Landroid/content/Context;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 235
    .local v2, "userHandle":Landroid/os/UserHandle;
    const/4 v1, 0x0

    .line 237
    .local v1, "userContext":Landroid/content/Context;
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentContext() : currentUserID - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentContext() : currentUserHandle - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz p1, :cond_59

    .line 243
    :try_start_37
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 246
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentContext : Guest Context : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_58
    return-object v1

    .line 248
    :cond_59
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 250
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentContext : Owner Context : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_73} :catch_74

    goto :goto_58

    .line 252
    :catch_74
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    goto :goto_58
.end method

.method private getUserHandle(I)Landroid/os/UserHandle;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 227
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 228
    .local v0, "userHandle":Landroid/os/UserHandle;
    const-string v1, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrenUserHandle - currentUserHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v0
.end method

.method private registerLDAPInterfaceReceiver(Landroid/content/Context;I)Landroid/content/BroadcastReceiver;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 492
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "edm.intent.action.ldap.createacct.internal"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 494
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerLDAPInterfaceReceiver - currentUserHandle : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    .line 496
    .local v1, "interfaceReceiver":Landroid/content/BroadcastReceiver;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 499
    return-object v1
.end method

.method private unregisterReceiver(I)Z
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 207
    .local v1, "token":J
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v3

    .line 208
    .local v3, "userContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 209
    const/4 v4, 0x0

    .line 214
    :goto_15
    return v4

    .line 211
    :cond_16
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 212
    .local v0, "connxn":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    iget-object v4, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    const/4 v4, 0x1

    goto :goto_15
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/LDAPAccount;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ldap"    # Landroid/app/enterprise/LDAPAccount;

    .prologue
    .line 337
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 338
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 339
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 341
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 342
    .local v5, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 343
    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_99

    .line 347
    :cond_20
    :try_start_20
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a1

    .line 348
    iget-object v9, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 349
    .local v4, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v3

    .line 350
    .local v3, "service":Landroid/app/enterprise/ILDAPInterface;
    const-string v9, "LDAPAccountPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " EDM LDAP service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-eqz v3, :cond_a1

    .line 352
    const-string v9, "LDAPAccountPolicyService"

    const-string v10, " EDM LDAP service not null "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-interface {v3, p2}, Landroid/app/enterprise/ILDAPInterface;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_60} :catch_65
    .catchall {:try_start_20 .. :try_end_60} :catchall_9c

    .line 361
    :try_start_60
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_99

    .line 376
    .end local v3    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v4    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :goto_63
    monitor-exit p0

    return-void

    .line 358
    :catch_65
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    const-string v9, "LDAPAccountPolicyService"

    const-string v10, "Failed talking to EDM LDAP service "

    invoke-static {v9, v10, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_9c

    .line 361
    :try_start_6d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_70
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v7

    .line 367
    .local v7, "userContext":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 368
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "edm.intent.extra.ldap.result"

    const/4 v10, -0x8

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v9, "edm.intent.extra.ldap.acct.id"

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v7, v2, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 374
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_98
    .catchall {:try_start_6d .. :try_end_98} :catchall_99

    goto :goto_63

    .line 337
    .end local v0    # "callingUserId":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "token":J
    .end local v7    # "userContext":Landroid/content/Context;
    .end local v8    # "userId":I
    :catchall_99
    move-exception v9

    monitor-exit p0

    throw v9

    .line 361
    .restart local v0    # "callingUserId":I
    .restart local v5    # "token":J
    .restart local v8    # "userId":I
    :catchall_9c
    move-exception v9

    :try_start_9d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_a1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_99

    goto :goto_70
.end method

.method public declared-synchronized deleteLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 383
    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 385
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 387
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 389
    .local v6, "userId":I
    const-wide/16 v8, 0x1

    cmp-long v8, p2, v8

    if-gez v8, :cond_1d

    .line 390
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "LDAPAccountPolicy.deleteLDAPAccount : ldapId is invalid"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_56

    .line 415
    :goto_1b
    monitor-exit p0

    return v7

    .line 394
    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 396
    .local v4, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 397
    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_56

    .line 401
    :cond_30
    :try_start_30
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6a

    .line 402
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 403
    .local v3, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v2

    .line 404
    .local v2, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v2, :cond_6a

    .line 405
    invoke-interface {v2, p2, p3}, Landroid/app/enterprise/ILDAPInterface;->deleteLDAPAccount(J)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_51} :catch_59
    .catchall {:try_start_30 .. :try_end_51} :catchall_65

    move-result v7

    .line 412
    :try_start_52
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_1b

    .line 383
    .end local v0    # "callingUserId":I
    .end local v2    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v3    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .end local v4    # "token":J
    .end local v6    # "userId":I
    :catchall_56
    move-exception v7

    monitor-exit p0

    throw v7

    .line 409
    .restart local v0    # "callingUserId":I
    .restart local v4    # "token":J
    .restart local v6    # "userId":I
    :catch_59
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5a
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "Failed talking to EDM LDAP service "

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_65

    .line 412
    :try_start_61
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_65
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_6a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_56

    goto :goto_1b
.end method

.method public getAllLDAPAccounts(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/LDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 464
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 465
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 467
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 469
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 470
    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 474
    :cond_1f
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 475
    iget-object v7, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 476
    .local v3, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v2

    .line 477
    .local v2, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v2, :cond_4d

    .line 478
    invoke-interface {v2}, Landroid/app/enterprise/ILDAPInterface;->getAllLDAPAccounts()Ljava/util/List;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_40} :catch_45
    .catchall {:try_start_1f .. :try_end_40} :catchall_52

    move-result-object v7

    .line 484
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    .end local v2    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v3    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :goto_44
    return-object v7

    .line 481
    :catch_45
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_46
    const-string v7, "LDAPAccountPolicyService"

    const-string v8, "Failed talking to EDM LDAP service "

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_52

    .line 484
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    const/4 v7, 0x0

    goto :goto_44

    .line 484
    :catchall_52
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/LDAPAccount;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # J

    .prologue
    const/4 v7, 0x0

    .line 423
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 425
    .local v0, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 427
    const-wide/16 v8, 0x1

    cmp-long v8, p2, v8

    if-gez v8, :cond_17

    .line 428
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "LDAPAccountPolicy.getLDAPAccount : ldapId is invalid"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_16
    return-object v7

    .line 432
    :cond_17
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 434
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 436
    .local v4, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    .line 437
    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 441
    :cond_2e
    :try_start_2e
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_50

    .line 442
    iget-object v8, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 443
    .local v3, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v2

    .line 444
    .local v2, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v2, :cond_50

    .line 445
    invoke-interface {v2, p2, p3}, Landroid/app/enterprise/ILDAPInterface;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4f} :catch_54
    .catchall {:try_start_2e .. :try_end_4f} :catchall_5d

    move-result-object v7

    .line 451
    .end local v2    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v3    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_50
    :goto_50
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 448
    :catch_54
    move-exception v1

    .line 449
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_55
    const-string v8, "LDAPAccountPolicyService"

    const-string v9, "Failed talking to EDM LDAP service "

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5d

    goto :goto_50

    .line 451
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_5d
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 515
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 520
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 525
    return-void
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 504
    const-string v1, "LDAPAccountPolicyService"

    const-string v2, "LDAPAccountPolicy:systemReady()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 507
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 510
    return-void
.end method
