.class public Lcom/android/server/enterprise/certificate/CertificatePolicy;
.super Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;
.source "CertificatePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final CERT_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.certinstaller"

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field private static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field private static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field private static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field private static final PACKAGE_INSTALLER_PKGNAME:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PERM_APP_PKEY_HOST_WILDCARD:Ljava/lang/String; = "*"

.field private static final PERM_APP_PKEY_PORT_WILDCARD:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CertificatePolicy"

.field private static final TRUSTED_POLICY_MASK:I = 0x1

.field private static final UNTRUSTED_POLICY_MASK:I = 0x2


# instance fields
.field private mBootCompleted:Z

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private final mCacheTrustedCertLock:Ljava/lang/Object;

.field private final mCacheUntrustedCertLock:Ljava/lang/Object;

.field private mCachedTrustedCertAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedUntrustedCertAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private mCheckRevocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRandom:Ljava/util/Random;

.field private final mRefreshRollbackLock:Ljava/lang/Object;

.field private mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private miAdminNotification:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;-><init>()V

    .line 194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    .line 212
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 214
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 215
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;

    .line 217
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;

    .line 229
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    .line 1533
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 239
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRandom:Ljava/util/Random;

    .line 240
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 241
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 242
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 248
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 249
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 250
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 251
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/org/conscrypt/TrustedCertificateStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1500([B)Ljava/security/cert/X509Certificate;
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 169
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/security/cert/X509Certificate;)[B
    .registers 2
    .param p0, "x0"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertX509ToPem(Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;
    .param p2, "x2"    # I

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    return v0
.end method

.method private addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z
    .registers 11
    .param p1, "uid"    # I
    .param p3, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1140
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1141
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, p1, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "previouslist":Ljava/lang/String;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4a

    .line 1144
    :cond_15
    const-string v2, ""

    .line 1149
    :goto_17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1150
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 1146
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1154
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_61
    const-string v0, ""

    .line 1156
    .local v0, "finalList":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_78

    .line 1157
    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1159
    :cond_78
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, p1, v6, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1310
    if-nez p1, :cond_b

    .line 1311
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1313
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1314
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1319
    :goto_1f
    return-void

    .line 1318
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    goto :goto_1f
.end method

.method private clearPermissionApplicationPrivateKey(I)Z
    .registers 11
    .param p1, "adminUid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2022
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2023
    .local v3, "selectionValues":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2025
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "pkgName"

    aput-object v7, v2, v6

    const-string v7, "alias"

    aput-object v7, v2, v5

    .line 2030
    .local v2, "returnColumns":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 2035
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2036
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "pkgName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "alias"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_27

    .line 2043
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_43
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    if-lez v7, :cond_4e

    :goto_4d
    return v5

    :cond_4e
    move v5, v6

    goto :goto_4d
.end method

.method private clearTrustedCertificates(I)Z
    .registers 9
    .param p1, "adminUid"    # I

    .prologue
    .line 503
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 504
    const/4 v2, 0x1

    .line 515
    :cond_9
    :goto_9
    return v2

    .line 506
    :cond_a
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string/jumbo v5, "trustedCaList"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "oldList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string/jumbo v5, "trustedCaList"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 510
    .local v2, "result":Z
    if-eqz v2, :cond_9

    .line 512
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 513
    .local v1, "removedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V

    goto :goto_9
.end method

.method private clearUntrustedCertificates(I)Z
    .registers 9
    .param p1, "adminUid"    # I

    .prologue
    .line 639
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 640
    const/4 v2, 0x1

    .line 652
    :cond_9
    :goto_9
    return v2

    .line 643
    :cond_a
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string/jumbo v5, "untrustedCertsList"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "oldList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string/jumbo v5, "untrustedCertsList"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 648
    .local v2, "result":Z
    if-eqz v2, :cond_9

    .line 649
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 650
    .local v1, "removedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUntrustedCerts(ILjava/util/List;)V

    goto :goto_9
.end method

.method private convertListToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1208
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1209
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1210
    .local v2, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1212
    .end local v2    # "str":Ljava/lang/String;
    :cond_2c
    const-string v1, ""

    .line 1213
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3f

    .line 1214
    const/4 v4, 0x0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1216
    :cond_3f
    return-object v1
.end method

.method private static convertPemToX509([B)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p0, "certBytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1232
    const/4 v3, 0x0

    .line 1235
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_2
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_17
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_5} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_29

    move-result-object v3

    .line 1247
    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_47

    .line 1248
    :cond_f
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert one certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :goto_16
    return-object v4

    .line 1236
    :catch_17
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1239
    .end local v1    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 1240
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1242
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_29
    move-exception v2

    .line 1243
    .local v2, "ile":Ljava/lang/IllegalArgumentException;
    const-string v5, "CertificatePolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a certificate "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1251
    .end local v2    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_47
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    goto :goto_16
.end method

.method private convertStringToList(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1197
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1a

    .line 1199
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_1a

    aget-object v5, v0, v2

    .line 1201
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1204
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_1a
    return-object v4
.end method

.method private convertToX509List(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p1, "certInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/CertificateInfo;

    .line 1222
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1224
    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1f
    return-object v2
.end method

.method private static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 1256
    const/4 v0, 0x0

    .line 1258
    .local v0, "certBytes":[B
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_b} :catch_17

    move-result-object v0

    move-object v2, v0

    .line 1266
    :goto_d
    return-object v2

    .line 1259
    :catch_e
    move-exception v1

    .line 1260
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "CertificatePolicy"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1262
    .end local v1    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v1

    .line 1263
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "CertificatePolicy"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private displayAppSignature(Ljava/lang/String;)V
    .registers 29
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1410
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v23

    if-eqz v23, :cond_186

    .line 1411
    const/4 v15, 0x0

    .line 1413
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x2240

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_22} :catch_c8

    move-result-object v15

    .line 1420
    :goto_23
    if-eqz v15, :cond_186

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_186

    .line 1421
    const/4 v3, 0x0

    .line 1423
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_42} :catch_d2

    move-result-object v3

    .line 1427
    :goto_43
    const/16 v16, 0x0

    .line 1428
    .local v16, "strRes":Ljava/lang/String;
    if-eqz v3, :cond_70

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1430
    .local v4, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1040285

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1433
    .end local v4    # "appName":Ljava/lang/String;
    :cond_70
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1434
    .local v19, "toast":Ljava/lang/StringBuilder;
    const/16 v23, 0x0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v10

    .line 1435
    .local v10, "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_89
    :goto_89
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_dc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 1436
    .local v11, "identity":[Ljava/lang/String;
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    const/16 v23, 0x0

    aget-object v23, v11, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    const/16 v23, 0x1

    aget-object v23, v11, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_89

    .line 1439
    const-string v23, " / "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    const/16 v23, 0x1

    aget-object v23, v11, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 1417
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v11    # "identity":[Ljava/lang/String;
    .end local v16    # "strRes":Ljava/lang/String;
    .end local v19    # "toast":Ljava/lang/StringBuilder;
    :catch_c8
    move-exception v6

    .line 1418
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "CertificatePolicy"

    const-string v24, "Name not found"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1424
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_d2
    move-exception v6

    .line 1425
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "CertificatePolicy"

    const-string v24, "Name not found"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    .line 1443
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v16    # "strRes":Ljava/lang/String;
    .restart local v19    # "toast":Ljava/lang/StringBuilder;
    :cond_dc
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1444
    .local v20, "toast2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "notification"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 1446
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v7, v20

    .line 1447
    .local v7, "header":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1448
    .local v21, "when":J
    move-object/from16 v18, v16

    .line 1449
    .local v18, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "\n"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 1450
    .local v17, "text":Ljava/lang/CharSequence;
    const v9, 0x1080078

    .line 1451
    .local v9, "icon":I
    new-instance v12, Landroid/app/Notification;

    move-wide/from16 v0, v21

    invoke-direct {v12, v9, v7, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1452
    .local v12, "notification":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 1453
    new-instance v13, Landroid/content/Intent;

    const-string v23, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v24, "package"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1456
    .local v13, "notificationIntent":Landroid/content/Intent;
    const-string v23, "appInfoPkgName"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1461
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRandom:Ljava/util/Random;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1466
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "header":Ljava/lang/CharSequence;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "icon":I
    .end local v10    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "notificationIntent":Landroid/content/Intent;
    .end local v14    # "notificationManager":Landroid/app/NotificationManager;
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "strRes":Ljava/lang/String;
    .end local v17    # "text":Ljava/lang/CharSequence;
    .end local v18    # "title":Ljava/lang/CharSequence;
    .end local v19    # "toast":Ljava/lang/StringBuilder;
    .end local v20    # "toast2":Ljava/lang/String;
    .end local v21    # "when":J
    :cond_186
    return-void
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 284
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_12
    return-void
.end method

.method private fromContentValues(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .registers 14
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 2165
    const/4 v7, 0x0

    .line 2166
    .local v7, "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_40

    .line 2168
    :try_start_9
    const-string v9, "adminUid"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2169
    .local v0, "adminUid":J
    const-string v9, "pkgName"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2170
    .local v5, "pkgName":Ljava/lang/String;
    const-string v9, "host"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2171
    .local v4, "host":Ljava/lang/String;
    const-string v9, "port"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2172
    .local v6, "port":I
    const-string v9, "alias"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2173
    .local v2, "alias":Ljava/lang/String;
    new-instance v8, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    invoke-direct {v8, v5, v4, v6, v2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_41

    .line 2175
    .end local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .local v8, "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :try_start_34
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->setAdminPkgName(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_5b

    move-object v7, v8

    .line 2181
    .end local v0    # "adminUid":J
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v8    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_40
    :goto_40
    return-object v7

    .line 2177
    :catch_41
    move-exception v3

    .line 2178
    .local v3, "e":Ljava/lang/Exception;
    :goto_42
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parsing ContentValues error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 2177
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v0    # "adminUid":J
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v8    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :catch_5b
    move-exception v3

    move-object v7, v8

    .end local v8    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .restart local v7    # "privKeyAppPermission":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    goto :goto_42
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .prologue
    .line 1734
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1942
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    const/4 v2, 0x0

    .line 1946
    .local v2, "i":I
    :goto_9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1947
    .local v0, "auxCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1960
    return-object v1

    .line 1951
    :cond_1e
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v4, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 1952
    .local v3, "issuer":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_4e

    .line 1953
    const-string v4, "CertificatePolicy"

    const-string v5, "getCertificateChain error. Could not find certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not build certificate chain; certificate not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1958
    :cond_4e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1945
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 255
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 258
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getGenericList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPackageForPid(I)Ljava/lang/String;
    .registers 8
    .param p1, "pid"    # I

    .prologue
    .line 1739
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1740
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1741
    .local v2, "listRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_27

    .line 1742
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1743
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_14

    .line 1744
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1748
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_26
    return-object v4

    :cond_27
    const/4 v4, 0x0

    goto :goto_26
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1469
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1470
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2148
    if-nez p0, :cond_4

    .line 2152
    :cond_3
    :goto_3
    return-object v1

    .line 2148
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 2149
    :catch_10
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private initUntrustedCertCache()V
    .registers 14

    .prologue
    .line 656
    iget-object v11, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v11

    .line 657
    :try_start_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    .line 659
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "adminUid"

    aput-object v12, v4, v10

    const/4 v10, 0x1

    const-string/jumbo v12, "untrustedCertsList"

    aput-object v12, v4, v10

    .line 661
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "CERTIFICATE"

    invoke-virtual {v10, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 663
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_78

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 665
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "untrustedCertsList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 666
    .local v9, "stringList":Ljava/lang/String;
    if-eqz v9, :cond_24

    .line 668
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 670
    .local v0, "adminUid":Ljava/lang/Integer;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 671
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 672
    .local v2, "certAlias":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 674
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 684
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :catchall_67
    move-exception v10

    monitor-exit v11
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw v10

    .line 677
    .restart local v0    # "adminUid":Ljava/lang/Integer;
    .restart local v2    # "certAlias":Ljava/lang/String;
    .restart local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "stringList":Ljava/lang/String;
    :cond_6a
    :try_start_6a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 678
    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 684
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :cond_78
    monitor-exit v11
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_67

    .line 685
    return-void
.end method

.method private isNativeKeyStoreUnlocked()Z
    .registers 6

    .prologue
    .line 1270
    const/4 v1, 0x0

    .line 1272
    .local v1, "isUnlocked":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_9} :catch_d

    if-ne v2, v3, :cond_c

    .line 1273
    const/4 v1, 0x1

    .line 1281
    :cond_c
    :goto_c
    return v1

    .line 1275
    :catch_d
    move-exception v0

    .line 1278
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "CertificatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private loadCache()V
    .registers 13

    .prologue
    .line 467
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    .line 469
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "trustedCaList"

    aput-object v11, v4, v10

    .line 472
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 475
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_72

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 478
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "trustedCaList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, "stringList":Ljava/lang/String;
    if-eqz v9, :cond_21

    .line 481
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 483
    .local v0, "adminUid":Ljava/lang/Integer;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 484
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    .local v2, "certAlias":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 487
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 490
    :cond_64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 491
    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 499
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :cond_72
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initUntrustedCertCache()V

    .line 500
    return-void
.end method

.method private obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1549
    const-string v9, "CertificatePolicy"

    const-string v10, "obtainMsgFromModule"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .line 1552
    .local v4, "moduleMsgName":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104028b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 1554
    const/4 v6, -0x1

    .line 1556
    .local v6, "reason":I
    const-string/jumbo v9, "wifi_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 1557
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040287

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1560
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "eventReason":[Ljava/lang/String;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eventReason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    array-length v9, v1

    if-le v9, v12, :cond_7b

    .line 1564
    aget-object v8, v1, v12

    .line 1565
    .local v8, "reasonStr":Ljava/lang/String;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reasonStr "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    const-string v7, "reason="

    .line 1567
    .local v7, "reasonPrefix":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 1569
    :try_start_6f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_7a} :catch_b5

    move-result v6

    .line 1666
    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_7b
    :goto_7b
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    packed-switch v6, :pswitch_data_370

    .line 1720
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104028c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 1724
    :goto_b4
    return-object v4

    .line 1570
    .restart local v1    # "eventReason":[Ljava/lang/String;
    .restart local v7    # "reasonPrefix":Ljava/lang/String;
    .restart local v8    # "reasonStr":Ljava/lang/String;
    :catch_b5
    move-exception v2

    .line 1571
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    const/4 v6, -0x1

    goto :goto_7b

    .line 1576
    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_d0
    const-string v9, "browser_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 1577
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040288

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1578
    if-eqz p2, :cond_7b

    .line 1579
    const/4 v0, -0x1

    .line 1581
    .local v0, "errorCode":I
    :try_start_e6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_e6 .. :try_end_e9} :catch_108

    move-result v0

    .line 1585
    :goto_ea
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "errorCode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    packed-switch v0, :pswitch_data_38e

    .line 1597
    const/4 v6, 0x0

    goto/16 :goto_7b

    .line 1582
    :catch_108
    move-exception v2

    .line 1583
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ea

    .line 1588
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_122
    const/16 v6, 0xd

    .line 1589
    goto/16 :goto_7b

    .line 1591
    :pswitch_126
    const/4 v6, 0x2

    .line 1592
    goto/16 :goto_7b

    .line 1594
    :pswitch_129
    const/4 v6, 0x1

    .line 1595
    goto/16 :goto_7b

    .line 1601
    .end local v0    # "errorCode":I
    :cond_12c
    const-string v9, "package_manager_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_176

    .line 1602
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040289

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1603
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 1604
    const/4 v5, -0x1

    .line 1606
    .local v5, "parserError":I
    :try_start_146
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_149} :catch_150

    move-result v5

    .line 1610
    :goto_14a
    packed-switch v5, :pswitch_data_398

    .line 1622
    const/4 v6, 0x0

    goto/16 :goto_7b

    .line 1607
    :catch_150
    move-exception v2

    .line 1608
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    .line 1612
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_16a
    const/16 v6, 0xa

    .line 1613
    goto/16 :goto_7b

    .line 1615
    :pswitch_16e
    const/16 v6, 0xc

    .line 1616
    goto/16 :goto_7b

    .line 1618
    :pswitch_172
    const/16 v6, 0xb

    .line 1619
    goto/16 :goto_7b

    .line 1626
    .end local v5    # "parserError":I
    :cond_176
    const-string v9, "installer_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 1627
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104028a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1628
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 1629
    const/4 v3, -0x1

    .line 1631
    .local v3, "installerError":I
    :try_start_190
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_190 .. :try_end_193} :catch_19a

    move-result v3

    .line 1635
    :goto_194
    packed-switch v3, :pswitch_data_3a2

    .line 1661
    :pswitch_197
    const/4 v6, 0x0

    goto/16 :goto_7b

    .line 1632
    :catch_19a
    move-exception v2

    .line 1633
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v9, "CertificatePolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error converting reason to integer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_194

    .line 1637
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_1b4
    const/4 v6, 0x1

    .line 1638
    goto/16 :goto_7b

    .line 1640
    :pswitch_1b7
    const/4 v6, 0x2

    .line 1641
    goto/16 :goto_7b

    .line 1643
    :pswitch_1ba
    const/16 v6, 0xd

    .line 1644
    goto/16 :goto_7b

    .line 1646
    :pswitch_1be
    const/16 v6, 0x8

    .line 1647
    goto/16 :goto_7b

    .line 1649
    :pswitch_1c2
    const/4 v6, 0x4

    .line 1650
    goto/16 :goto_7b

    .line 1652
    :pswitch_1c5
    const/4 v6, 0x3

    .line 1653
    goto/16 :goto_7b

    .line 1655
    :pswitch_1c8
    const/16 v6, 0xa

    .line 1656
    goto/16 :goto_7b

    .line 1658
    :pswitch_1cc
    const/16 v6, 0xb

    .line 1659
    goto/16 :goto_7b

    .line 1669
    .end local v3    # "installerError":I
    :pswitch_1d0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104028d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1673
    :pswitch_1f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040291

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1677
    :pswitch_210
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040294

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1681
    :pswitch_230
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104028e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1684
    :pswitch_250
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104028f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1688
    :pswitch_270
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040290

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1691
    :pswitch_290
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040293

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1695
    :pswitch_2b0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040292

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1699
    :pswitch_2d0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040295

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1703
    :pswitch_2f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040296

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1707
    :pswitch_310
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040297

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1711
    :pswitch_330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040298

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1715
    :pswitch_350
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040299

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b4

    .line 1667
    :pswitch_data_370
    .packed-switch 0x1
        :pswitch_1d0
        :pswitch_230
        :pswitch_250
        :pswitch_270
        :pswitch_1f0
        :pswitch_2b0
        :pswitch_290
        :pswitch_210
        :pswitch_2d0
        :pswitch_2f0
        :pswitch_330
        :pswitch_310
        :pswitch_350
    .end packed-switch

    .line 1586
    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_122
        :pswitch_126
        :pswitch_129
    .end packed-switch

    .line 1610
    :pswitch_data_398
    .packed-switch -0x69
        :pswitch_172
        :pswitch_16e
        :pswitch_16a
    .end packed-switch

    .line 1635
    :pswitch_data_3a2
    .packed-switch 0x1
        :pswitch_1b4
        :pswitch_1b7
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_197
        :pswitch_197
        :pswitch_197
        :pswitch_1be
        :pswitch_197
        :pswitch_1c8
        :pswitch_1cc
        :pswitch_197
        :pswitch_1ba
    .end packed-switch
.end method

.method private putGenericList(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1193
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertListToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1194
    return-void
.end method

.method private registerPackageChangeReceiver()V
    .registers 5

    .prologue
    .line 1376
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_25

    .line 1377
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1378
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1380
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1400
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1401
    const-string v2, "CertificatePolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 1406
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_25
    :goto_25
    return-void

    .line 1403
    :catch_26
    move-exception v0

    .line 1404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V
    .registers 11
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 441
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v2, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    monitor-enter v4

    .line 443
    :try_start_a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 445
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 446
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 447
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 452
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_49

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4c
    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 454
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_58

    .line 455
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 459
    :cond_58
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_6b

    .line 460
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    invoke-direct {v3, p0, v6, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 464
    :goto_6a
    return-void

    .line 462
    :cond_6b
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6a
.end method

.method private removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z
    .registers 13
    .param p1, "uid"    # I
    .param p3, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1164
    .local p2, "listToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, "previousList":Ljava/lang/String;
    if-eqz v5, :cond_64

    .line 1168
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1170
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1171
    .local v1, "certAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1173
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 1174
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1177
    .end local v0    # "alias":Ljava/lang/String;
    :cond_45
    const/4 v3, 0x0

    .line 1178
    .local v3, "finalList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5b

    .line 1179
    const/4 v7, 0x0

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1181
    :cond_5b
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1184
    .end local v1    # "certAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "finalList":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_63
    return v7

    :cond_64
    const/4 v7, 0x1

    goto :goto_63
.end method

.method private removeUntrustedCerts(ILjava/util/List;)V
    .registers 10
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v2, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v4

    .line 580
    :try_start_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 581
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 582
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 583
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 584
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 589
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_48

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4b
    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_48

    .line 591
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_57

    .line 592
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 595
    :cond_57
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v6, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 596
    return-void
.end method

.method private retrieveAppPermissionsFromDb(II)Ljava/util/List;
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2103
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2106
    .local v5, "storedPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    const/4 v7, 0x5

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "pkgName"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "host"

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "port"

    aput-object v8, v3, v7

    const/4 v7, 0x4

    const-string v8, "alias"

    aput-object v8, v3, v7

    .line 2115
    .local v3, "returnColumns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2116
    .local v4, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "#SelectClause#"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PermAppPrivateKey"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 2123
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2124
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->fromContentValues(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object v0

    .line 2125
    .local v0, "appPerm":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    if-eqz v0, :cond_3b

    .line 2126
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 2130
    .end local v0    # "appPerm":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_51
    return-object v5
.end method

.method private sendIntentToSettings()V
    .registers 5

    .prologue
    .line 741
    iget-boolean v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    if-eqz v3, :cond_1a

    .line 742
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 743
    .local v1, "token":J
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v0, "refreshUi":Landroid/content/Intent;
    const-string v3, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 746
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    .end local v0    # "refreshUi":Landroid/content/Intent;
    .end local v1    # "token":J
    :cond_1a
    return-void
.end method

.method private setPrivateKeyGrant(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "grant"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2188
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_26

    .line 2192
    .local v0, "appUid":I
    const/4 v1, 0x0

    .line 2194
    .local v1, "connection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_28

    move-result-object v1

    .line 2198
    const/4 v3, 0x0

    .line 2200
    .local v3, "result":Z
    if-eqz v1, :cond_20

    .line 2201
    :try_start_18
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v4

    invoke-interface {v4, v0, p2, p3}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_2a
    .catchall {:try_start_18 .. :try_end_1f} :catchall_2f

    .line 2202
    const/4 v3, 0x1

    .line 2207
    :cond_20
    if-eqz v1, :cond_25

    .line 2208
    :goto_22
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2211
    .end local v0    # "appUid":I
    .end local v1    # "connection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "result":Z
    :cond_25
    :goto_25
    return v3

    .line 2189
    :catch_26
    move-exception v2

    .line 2190
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_25

    .line 2195
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appUid":I
    .restart local v1    # "connection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_28
    move-exception v2

    .line 2196
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_25

    .line 2204
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "result":Z
    :catch_2a
    move-exception v2

    .line 2205
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 2207
    if-eqz v1, :cond_25

    goto :goto_22

    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_2f
    move-exception v4

    if-eqz v1, :cond_35

    .line 2208
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2207
    :cond_35
    throw v4
.end method

.method private toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;
    .registers 5
    .param p1, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    .line 2156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2157
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "pkgName"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v1, "host"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    const-string v1, "port"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2160
    const-string v1, "alias"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    return-object v0
.end method

.method private validateAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 2090
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2091
    .local v0, "aliasArray":[Ljava/lang/String;
    if-nez v0, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2095
    .local v1, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2098
    .end local p1    # "alias":Ljava/lang/String;
    :goto_14
    return-object p1

    .line 2091
    .end local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "alias":Ljava/lang/String;
    :cond_15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_e

    .line 2098
    .restart local v1    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    const/4 p1, 0x0

    goto :goto_14
.end method

.method private varargs validateCerts([Ljava/security/cert/X509Certificate;)I
    .registers 22
    .param p1, "arrayCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 1838
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1839
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    .line 1840
    .local v4, "certPath":Ljava/security/cert/CertPath;
    const/16 v16, 0x0

    .line 1844
    .local v16, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1845
    .local v7, "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_88

    .line 1847
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 1848
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    .line 1855
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :goto_28
    const/4 v13, 0x0

    .line 1856
    .local v13, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_aa

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1859
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 1865
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :goto_4e
    new-instance v15, Ljava/security/cert/TrustAnchor;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v13, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 1866
    .local v15, "trustAnchor":Ljava/security/cert/TrustAnchor;
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 1869
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 1870
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_64
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_64} :catch_8c

    move-result-object v4

    .line 1879
    :try_start_65
    new-instance v11, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_65 .. :try_end_6c} :catch_c8

    .line 1886
    .local v11, "params":Ljava/security/cert/PKIXParameters;
    const/4 v5, 0x0

    .line 1888
    .local v5, "certPathValidator":Ljava/security/cert/CertPathValidator;
    :try_start_6d
    const-string v17, "PKIX"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_72
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6d .. :try_end_72} :catch_e5

    move-result-object v5

    .line 1895
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1898
    const/4 v12, 0x0

    .line 1900
    .local v12, "result":I
    :try_start_7b
    invoke-virtual {v5, v4, v11}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v8

    .line 1902
    .local v8, "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    const-string v17, "CertificatePolicy"

    const-string v18, "Validation success"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7b .. :try_end_86} :catch_102
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7b .. :try_end_86} :catch_120

    .line 1903
    const/4 v12, -0x1

    .line 1937
    .end local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    .end local v12    # "result":I
    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_87
    return v12

    .line 1851
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_88
    :try_start_88
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8b
    .catch Ljava/security/cert/CertificateException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_28

    .line 1871
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_8c
    move-exception v9

    .line 1872
    .local v9, "e":Ljava/security/cert/CertificateException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failure generating cert path: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const/16 v12, 0x8

    goto :goto_87

    .line 1862
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :cond_aa
    :try_start_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1863
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;
    :try_end_c7
    .catch Ljava/security/cert/CertificateException; {:try_start_aa .. :try_end_c7} :catch_8c

    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    goto :goto_4e

    .line 1880
    .restart local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_c8
    move-exception v9

    .line 1881
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const/4 v12, 0x0

    goto :goto_87

    .line 1889
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .restart local v11    # "params":Ljava/security/cert/PKIXParameters;
    :catch_e5
    move-exception v9

    .line 1890
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const/4 v12, 0x0

    goto :goto_87

    .line 1904
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v12    # "result":I
    :catch_102
    move-exception v9

    .line 1905
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Should not happen!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const/4 v12, 0x0

    .line 1935
    goto/16 :goto_87

    .line 1907
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_120
    move-exception v9

    .line 1908
    .local v9, "e":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1909
    .local v10, "errorMessage":Ljava/lang/String;
    const-string v17, "CertificatePolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Validation failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    const-string v17, "Additional certificate path checker failed."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_159

    .line 1912
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    .line 1913
    .local v14, "t":Ljava/lang/Throwable;
    if-eqz v14, :cond_159

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_159

    .line 1914
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1917
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_159
    const-string v17, "is revoked"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_16d

    const-string v17, "Certificate revocation after"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_170

    .line 1919
    :cond_16d
    const/4 v12, 0x2

    goto/16 :goto_87

    .line 1920
    :cond_170
    const-string v17, "OCSP check failed!"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b6

    const-string v17, "Certificate status could not be determined."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b6

    const-string v17, "CRL distribution point extension could not be read"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b6

    const-string v17, "No additional CRL locations could be decoded from CRL distribution point extension."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b6

    const-string v17, "Distribution points could not be read."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b6

    const-string v17, "No valid CRL found."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b6

    const-string v17, "Unable to get CRL for certificate"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1ba

    .line 1927
    :cond_1b6
    const/16 v12, 0xd

    goto/16 :goto_87

    .line 1928
    :cond_1ba
    const-string v17, ", expiration time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1c7

    .line 1929
    const/4 v12, 0x4

    goto/16 :goto_87

    .line 1930
    :cond_1c7
    const-string v17, ", validation time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1d4

    .line 1931
    const/4 v12, 0x3

    goto/16 :goto_87

    .line 1933
    :cond_1d4
    const/4 v12, 0x0

    goto/16 :goto_87
.end method

.method private validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    .registers 7
    .param p1, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    .line 2134
    if-eqz p1, :cond_2a

    .line 2135
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2136
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2137
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2138
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v3

    .line 2139
    .local v3, "port":I
    if-eqz v2, :cond_2a

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 2140
    new-instance v4, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    invoke-direct {v4, v2, v1, v3, v0}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2143
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "port":I
    :goto_29
    return-object v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 696
    const/4 v0, 0x1

    .line 697
    .local v0, "result":Z
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_15

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 700
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 702
    :cond_15
    if-eqz v0, :cond_2d

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 705
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_2e

    :goto_2c
    and-int/2addr v0, v1

    .line 707
    :cond_2d
    return v0

    .line 705
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public addPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    iget v0, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1982
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1983
    .local v2, "result":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object p2

    .line 1985
    if-eqz p2, :cond_29

    .line 1987
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1988
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PermAppPrivateKey"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2a

    const/4 v2, 0x1

    .line 1991
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_29
    :goto_29
    return v2

    .line 1989
    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method

.method public addTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 294
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 295
    .local v0, "adminUid":I
    const/4 v7, 0x1

    .line 296
    .local v7, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v6

    .line 298
    .local v6, "prevSize":I
    if-nez p2, :cond_11

    .line 299
    const/4 v9, 0x0

    .line 335
    :goto_10
    return v9

    .line 300
    :cond_11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_19

    .line 301
    const/4 v9, 0x1

    goto :goto_10

    .line 303
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 304
    .local v4, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 306
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_21

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 307
    const/4 v9, 0x0

    goto :goto_10

    .line 310
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3b
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 313
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_7b

    const/4 v9, 0x1

    :goto_4c
    and-int/2addr v7, v9

    .line 315
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    monitor-enter v10

    .line 316
    :try_start_50
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .local v1, "alias":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 318
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 325
    .end local v1    # "alias":Ljava/lang/String;
    :catchall_78
    move-exception v9

    monitor-exit v10
    :try_end_7a
    .catchall {:try_start_50 .. :try_end_7a} :catchall_78

    throw v9

    .line 313
    :cond_7b
    const/4 v9, 0x0

    goto :goto_4c

    .line 320
    .restart local v1    # "alias":Ljava/lang/String;
    :cond_7d
    :try_start_7d
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 321
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 325
    .end local v1    # "alias":Ljava/lang/String;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_8f
    monitor-exit v10
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_78

    .line 326
    const-string/jumbo v9, "trustedCaList"

    invoke-direct {p0, v0, v2, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v7, v9

    .line 330
    if-nez v6, :cond_aa

    .line 331
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_a7
    move v9, v7

    .line 335
    goto/16 :goto_10

    .line 333
    :cond_aa
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a7
.end method

.method public addUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 520
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 522
    .local v0, "adminUid":I
    if-nez p2, :cond_b

    .line 549
    :goto_a
    return v8

    .line 524
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_13

    move v8, v7

    .line 525
    goto :goto_a

    .line 528
    :cond_13
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 531
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_5e

    move v4, v7

    .line 533
    .local v4, "result":Z
    :goto_28
    const-string/jumbo v6, "untrustedCertsList"

    invoke-direct {p0, v0, v2, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 536
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v9

    .line 537
    :try_start_33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 538
    .local v1, "alias":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 539
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 546
    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_5b
    move-exception v6

    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_5b

    throw v6

    .end local v4    # "result":Z
    :cond_5e
    move v4, v8

    .line 531
    goto :goto_28

    .line 541
    .restart local v1    # "alias":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Z
    :cond_60
    :try_start_60
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 542
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 546
    .end local v1    # "alias":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_72
    monitor-exit v9
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_5b

    .line 548
    new-instance v6, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v8, v4

    .line 549
    goto :goto_a
.end method

.method public allowUserRemoveCertificates(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 713
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string v4, "allowUserRemoveCertificate"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 715
    .local v0, "ret":Z
    if-eqz v0, :cond_15

    .line 716
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings()V

    .line 718
    :cond_15
    return v0
.end method

.method public clearPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2016
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2017
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearPermissionApplicationPrivateKey(I)Z

    move-result v0

    return v0
.end method

.method public clearTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 401
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustedCertificates(I)Z

    move-result v0

    return v0
.end method

.method public clearUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 635
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearUntrustedCertificates(I)Z

    move-result v0

    return v0
.end method

.method public enableCertificateFailureNotification(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1478
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1479
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string v3, "notificateSignatureFailureToUser"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableCertificateValidationAtInstall(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1790
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1791
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "CERTIFICATE"

    const-string/jumbo v3, "validateCertificateAtInstall"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableSignatureIdentityInformation(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1289
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1290
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "CERTIFICATE"

    const-string/jumbo v4, "signatureIdentityInformationEnabled"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1292
    .local v0, "ret":Z
    return v0
.end method

.method public getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    move-object/from16 v0, p2

    array-length v15, v0

    if-ge v6, v15, :cond_66

    .line 1325
    aget-object v15, p2, v6

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1326
    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1328
    .local v7, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1330
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_17
    const-string v15, "X509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1c} :catch_5e

    move-result-object v3

    .line 1335
    const/4 v1, 0x0

    .line 1337
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_1e
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/security/cert/CertificateException; {:try_start_1e .. :try_end_24} :catch_67

    .line 1342
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1343
    .local v9, "mSslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, "cn":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v10

    .line 1345
    .local v10, "o":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v11

    .line 1348
    .local v11, "ou":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_73

    .line 1349
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_70

    .line 1350
    move-object v13, v10

    .line 1351
    .local v13, "subjectPrimary":Ljava/lang/String;
    move-object v14, v4

    .line 1365
    .local v14, "subjectSecondary":Ljava/lang/String;
    :goto_4f
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    .line 1366
    .local v8, "item":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v13, v8, v15

    .line 1367
    const/4 v15, 0x1

    aput-object v14, v8, v15

    .line 1368
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1331
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cn":Ljava/lang/String;
    .end local v8    # "item":[Ljava/lang/String;
    .end local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .end local v10    # "o":Ljava/lang/String;
    .end local v11    # "ou":Ljava/lang/String;
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :catch_5e
    move-exception v5

    .line 1332
    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "CertificateFactory error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .end local v2    # "cert":[B
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_66
    :goto_66
    return-object v12

    .line 1338
    .restart local v2    # "cert":[B
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_67
    move-exception v5

    .line 1339
    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "X509Certificate error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1353
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cn":Ljava/lang/String;
    .restart local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .restart local v10    # "o":Ljava/lang/String;
    .restart local v11    # "ou":Ljava/lang/String;
    :cond_70
    move-object v13, v10

    .line 1354
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    move-object v14, v11

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f

    .line 1357
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7d

    .line 1358
    move-object v13, v4

    .line 1359
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f

    .line 1361
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_7d
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v13

    .line 1362
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f
.end method

.method public getListPermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2049
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    iget v0, v2, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2050
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2052
    .local v1, "userId":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_11

    .line 372
    :cond_10
    return-object v1

    .line 347
    :cond_11
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "trustedCaList"

    aput-object v11, v4, v10

    .line 350
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 353
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 354
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "trustedCaList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 356
    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2b

    .line 357
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .line 359
    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 360
    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_5b

    .line 361
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 364
    :cond_5b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 366
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 369
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method

.method public getUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_11

    .line 630
    :cond_10
    return-object v1

    .line 606
    :cond_11
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "untrustedCertsList"

    aput-object v11, v4, v10

    .line 608
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 611
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 612
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "untrustedCertsList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2b

    .line 615
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .line 617
    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 618
    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_5b

    .line 619
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 622
    :cond_5b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 624
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 625
    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 627
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method

.method public isCaCertificateDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certAlias"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string/jumbo v1, "systemDisabledList"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 433
    .local v0, "disabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isCaCertificateTrusted(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certificate"    # Landroid/app/enterprise/CertificateInfo;
    .param p3, "showMsg"    # Z

    .prologue
    const/4 v2, 0x1

    .line 377
    const-string v3, "com.android.certinstaller"

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_18

    move v0, v2

    .line 394
    :cond_17
    :goto_17
    return v0

    .line 382
    :cond_18
    const/4 v0, 0x1

    .line 383
    .local v0, "ret":Z
    invoke-virtual {p2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 384
    .local v1, "x509cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v3, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/security/cert/X509Certificate;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 385
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    and-int/2addr v0, v2

    .line 390
    :goto_2d
    if-eqz p3, :cond_17

    if-nez v0, :cond_17

    .line 391
    const v2, 0x1040284

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_17

    .line 387
    :cond_38
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_2d
.end method

.method public isCertificateFailureNotificationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1485
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "notificateSignatureFailureToUser"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1488
    .local v2, "notificateUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1489
    .local v1, "notificateUser":Z
    if-eqz v1, :cond_11

    .line 1490
    const/4 v3, 0x1

    .line 1493
    .end local v1    # "notificateUser":Z
    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method

.method public isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1796
    const/4 v1, 0x0

    .line 1797
    .local v1, "validate":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string/jumbo v6, "validateCertificateAtInstall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1799
    .local v3, "validateCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1800
    .local v2, "validateCert":Z
    if-eqz v2, :cond_10

    .line 1801
    const/4 v1, 0x1

    .line 1805
    .end local v2    # "validateCert":Z
    :cond_23
    return v1
.end method

.method public isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 1769
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageForPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1772
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_26

    const-string v3, "com.android.certinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1773
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1781
    :cond_25
    :goto_25
    return v2

    .line 1776
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .line 1777
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 1778
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "*"

    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_3c
    const/4 v2, 0x1

    goto :goto_25
.end method

.method public isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I

    .prologue
    .line 2057
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2058
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2059
    .local v5, "userId":I
    const/4 v4, 0x0

    .line 2060
    .local v4, "result":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_66

    .line 2062
    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(II)Ljava/util/List;

    move-result-object v2

    .line 2064
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .line 2065
    .local v3, "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2067
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2069
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    .line 2072
    :cond_40
    invoke-static {p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2073
    if-eqz p3, :cond_15

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2075
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5d

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPort()I

    move-result v6

    if-ne p4, v6, :cond_15

    .line 2078
    :cond_5d
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    .line 2085
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;>;"
    .end local v3    # "pkey":Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;
    :cond_66
    return-object v4
.end method

.method public isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 1752
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageForPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_26

    const-string v3, "com.android.certinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1756
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1764
    :cond_25
    :goto_25
    return v2

    .line 1759
    :cond_26
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .line 1760
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 1761
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "*"

    invoke-virtual {v0, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_3c
    const/4 v2, 0x1

    goto :goto_25
.end method

.method public isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1296
    const-string v4, "com.android.packageinstaller"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 1297
    const/4 v1, 0x0

    .line 1298
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string/jumbo v6, "signatureIdentityInformationEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1300
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1301
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1302
    const/4 v1, 0x1

    .line 1306
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_28
    return v1
.end method

.method public isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 722
    const/4 v1, 0x1

    .line 723
    .local v1, "allowed":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string v6, "allowUserRemoveCertificate"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 725
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 726
    .local v0, "adminValue":Z
    if-eq v0, v1, :cond_f

    .line 727
    move v1, v0

    .line 731
    .end local v0    # "adminValue":Z
    :cond_22
    return v1
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1498
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1501
    .local v6, "userMsgModName":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.certificate.action.certificate.failure"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1502
    .local v2, "iAdminNotification":Landroid/content/Intent;
    const-string v7, "certificate_failure_module"

    aget-object v8, v6, v10

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    const-string v7, "certificate_failure_message"

    aget-object v8, v6, v11

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;

    .line 1507
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    .line 1512
    .local v0, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1515
    const/4 v3, 0x0

    .line 1516
    .local v3, "isNotificationEnabled":Z
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    const-string v9, "notificateSignatureFailureToUser"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1519
    .local v5, "notificateUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1520
    .local v4, "notificateUser":Z
    if-eqz v4, :cond_34

    .line 1521
    move v3, v4

    .line 1526
    .end local v4    # "notificateUser":Z
    :cond_47
    if-eqz v3, :cond_7c

    if-eqz p3, :cond_7c

    .line 1527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v9, 0x1040286

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 1531
    :cond_7c
    return-void
.end method

.method public notifyCertificateRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 1964
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceSystemUser()V

    .line 1965
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.knox.certificate.CertificatePolicy.ACTION_CERTIFICATE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1966
    .local v0, "intentNotification":Landroid/content/Intent;
    const-string v1, "certificate_removed_subject"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1967
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1968
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v2, "CertificatePolicy/certificateRemoved"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1972
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2227
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2231
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 2240
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustedCertificates(I)Z

    .line 2241
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearUntrustedCertificates(I)Z

    .line 2242
    return-void
.end method

.method public removePermissionApplicationPrivateKey(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkey"    # Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    .prologue
    const/4 v3, 0x0

    .line 1996
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v4

    iget v0, v4, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1997
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1998
    .local v1, "result":Z
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;

    move-result-object p2

    .line 2000
    if-eqz p2, :cond_35

    .line 2002
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    move-result-object v2

    .line 2003
    .local v2, "selectionValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2004
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PermAppPrivateKey"

    invoke-virtual {v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    if-lez v4, :cond_36

    const/4 v1, 0x1

    .line 2008
    :goto_26
    if-eqz v1, :cond_35

    .line 2009
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/certificate/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    .line 2012
    .end local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_35
    return v1

    .restart local v2    # "selectionValues":Landroid/content/ContentValues;
    :cond_36
    move v1, v3

    .line 2004
    goto :goto_26
.end method

.method public removeTrustedCaCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 407
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 409
    .local v0, "adminUid":I
    if-nez p2, :cond_a

    .line 410
    const/4 v4, 0x0

    .line 424
    :cond_9
    :goto_9
    return v4

    .line 411
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_12

    .line 412
    const/4 v4, 0x1

    goto :goto_9

    .line 415
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    .line 417
    .local v2, "cert":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 419
    .end local v2    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_37
    const-string/jumbo v5, "trustedCaList"

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 421
    .local v4, "result":Z
    if-eqz v4, :cond_9

    .line 422
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V

    goto :goto_9
.end method

.method public removeUntrustedCertificateList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 553
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceOwnerOnlyAndCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 554
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 556
    .local v0, "adminUid":I
    if-nez p2, :cond_a

    .line 557
    const/4 v4, 0x0

    .line 573
    :cond_9
    :goto_9
    return v4

    .line 558
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_12

    .line 559
    const/4 v4, 0x1

    goto :goto_9

    .line 562
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    .line 564
    .local v2, "cert":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 567
    .end local v2    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_37
    const-string/jumbo v5, "untrustedCertsList"

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 570
    .local v4, "result":Z
    if-eqz v4, :cond_9

    .line 571
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUntrustedCerts(ILjava/util/List;)V

    goto :goto_9
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    .line 2236
    return-void
.end method

.method public validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I
    .registers 5
    .param p1, "certInfo"    # Landroid/app/enterprise/CertificateInfo;

    .prologue
    .line 1812
    invoke-virtual {p1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1813
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v1

    return v1
.end method

.method public validateChainAtInstall(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1820
    .local p1, "listCertInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v4, 0x0

    .line 1822
    .local v4, "result":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1824
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    .line 1825
    const/4 v5, -0x1

    if-ne v4, v5, :cond_54

    .line 1826
    const/4 v4, 0x0

    .line 1828
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1829
    .local v3, "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/CertificateInfo;

    .line 1830
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1832
    .end local v1    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    .line 1834
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_54
    return v4
.end method
