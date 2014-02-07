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

.field private final mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

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
    .line 220
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;-><init>()V

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    .line 187
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    .line 198
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 200
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;

    .line 203
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;

    .line 212
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    .line 1459
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$4;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 222
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRandom:Ljava/util/Random;

    .line 223
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 224
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 225
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->registerPackageChangeReceiver()V

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 231
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 232
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 233
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 234
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;
    .param p2, "x2"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    return-object v0
.end method

.method static synthetic access$1600([B)Ljava/security/cert/X509Certificate;
    .registers 2
    .param p0, "x0"    # [B

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->displayAppSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/security/cert/X509Certificate;)[B
    .registers 2
    .param p0, "x0"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertX509ToPem(Ljava/security/cert/X509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/certificate/CertificatePolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 1070
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, p1, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "previouslist":Ljava/lang/String;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4a

    .line 1074
    :cond_15
    const-string v2, ""

    .line 1079
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

    .line 1080
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1081
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

    .line 1076
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

    .line 1084
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_61
    const-string v0, ""

    .line 1086
    .local v0, "finalList":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_78

    .line 1087
    const/4 v5, 0x0

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1089
    :cond_78
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CERTIFICATE"

    invoke-virtual {v5, p1, v6, p3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method private checkPackageCallerOrEnforcePermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1241
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1246
    :goto_16
    return-void

    .line 1245
    :cond_17
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    goto :goto_16
.end method

.method private clearTrustedCertificates(I)Z
    .registers 9
    .param p1, "adminUid"    # I

    .prologue
    .line 477
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 478
    const/4 v2, 0x1

    .line 489
    :cond_9
    :goto_9
    return v2

    .line 480
    :cond_a
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "trustedCaList"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "oldList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "trustedCaList"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 484
    .local v2, "result":Z
    if-eqz v2, :cond_9

    .line 486
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 487
    .local v1, "removedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V

    goto :goto_9
.end method

.method private clearUntrustedCertificates(I)Z
    .registers 9
    .param p1, "adminUid"    # I

    .prologue
    .line 611
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 612
    const/4 v2, 0x1

    .line 624
    :cond_9
    :goto_9
    return v2

    .line 615
    :cond_a
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "untrustedCertsList"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "oldList":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "untrustedCertsList"

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 620
    .local v2, "result":Z
    if-eqz v2, :cond_9

    .line 621
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 622
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
    .line 1138
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
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

    .line 1140
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

    .line 1142
    .end local v2    # "str":Ljava/lang/String;
    :cond_2c
    const-string v1, ""

    .line 1143
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3f

    .line 1144
    const/4 v4, 0x0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1146
    :cond_3f
    return-object v1
.end method

.method private static convertPemToX509([B)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p0, "certBytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1162
    const/4 v3, 0x0

    .line 1165
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_2
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_17
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_5} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_29

    move-result-object v3

    .line 1177
    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_47

    .line 1178
    :cond_f
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert one certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_16
    return-object v4

    .line 1166
    :catch_17
    move-exception v1

    .line 1167
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1169
    .end local v1    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 1170
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v5, "CertificatePolicy"

    const-string v6, "Could not convert certificate."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 1172
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_29
    move-exception v2

    .line 1173
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

    .line 1181
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
    .line 1127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1a

    .line 1129
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1130
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

    .line 1131
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1134
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
    .line 1150
    .local p1, "certInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1151
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

    .line 1152
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1154
    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_1f
    return-object v2
.end method

.method private static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 1186
    const/4 v0, 0x0

    .line 1188
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

    .line 1196
    :goto_d
    return-object v2

    .line 1189
    :catch_e
    move-exception v1

    .line 1190
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "CertificatePolicy"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1192
    .end local v1    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v1

    .line 1193
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
    .line 1337
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v23

    if-eqz v23, :cond_17a

    .line 1338
    const/4 v15, 0x0

    .line 1340
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x2240

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1e} :catch_bc

    move-result-object v15

    .line 1347
    :goto_1f
    if-eqz v15, :cond_17a

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_17a

    .line 1348
    const/4 v3, 0x0

    .line 1350
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_3e} :catch_c6

    move-result-object v3

    .line 1354
    :goto_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1355
    .local v4, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const v24, 0x1040279

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1357
    .local v16, "strRes":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1358
    .local v19, "toast":Ljava/lang/StringBuilder;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v10

    .line 1359
    .local v10, "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_7d
    :goto_7d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 1360
    .local v11, "identity":[Ljava/lang/String;
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    const/16 v23, 0x0

    aget-object v23, v11, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    const/16 v23, 0x1

    aget-object v23, v11, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_7d

    .line 1363
    const-string v23, " / "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    const/16 v23, 0x1

    aget-object v23, v11, v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1344
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v11    # "identity":[Ljava/lang/String;
    .end local v16    # "strRes":Ljava/lang/String;
    .end local v19    # "toast":Ljava/lang/StringBuilder;
    :catch_bc
    move-exception v6

    .line 1345
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "CertificatePolicy"

    const-string v24, "Name not found"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1351
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_c6
    move-exception v6

    .line 1352
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "CertificatePolicy"

    const-string v24, "Name not found"

    invoke-static/range {v23 .. v24}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1367
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "identities":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .restart local v16    # "strRes":Ljava/lang/String;
    .restart local v19    # "toast":Ljava/lang/StringBuilder;
    :cond_d0
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

    .line 1368
    .local v20, "toast2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "notification"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 1370
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v7, v20

    .line 1371
    .local v7, "header":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1372
    .local v21, "when":J
    move-object/from16 v18, v16

    .line 1373
    .local v18, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "\n"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 1374
    .local v17, "text":Ljava/lang/CharSequence;
    const v9, 0x1080078

    .line 1375
    .local v9, "icon":I
    new-instance v12, Landroid/app/Notification;

    move-wide/from16 v0, v21

    invoke-direct {v12, v9, v7, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1376
    .local v12, "notification":Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x10

    move/from16 v0, v23

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 1377
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

    .line 1380
    .local v13, "notificationIntent":Landroid/content/Intent;
    const-string v23, "appInfoPkgName"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1381
    const/high16 v23, 0x10000000

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1383
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

    .line 1385
    .local v5, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRandom:Ljava/util/Random;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1390
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appName":Ljava/lang/String;
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
    :cond_17a
    return-void
.end method

.method private enforceCertificatePermission()I
    .registers 3

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 258
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_12
    return-void
.end method

.method private getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2

    .prologue
    .line 1660
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
    .line 1868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1871
    const/4 v2, 0x0

    .line 1872
    .local v2, "i":I
    :goto_9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1873
    .local v0, "auxCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1886
    return-object v1

    .line 1877
    :cond_1e
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 1878
    .local v3, "issuer":Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_4e

    .line 1879
    const-string v4, "CertificatePolicy"

    const-string v5, "getCertificateChain error. Could not find certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
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

    .line 1884
    :cond_4e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1871
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 238
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 241
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
    .line 1118
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getPackageForPid(I)Ljava/lang/String;
    .registers 8
    .param p1, "pid"    # I

    .prologue
    .line 1665
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1666
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1667
    .local v2, "listRapi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_27

    .line 1668
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

    .line 1669
    .local v3, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_14

    .line 1670
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1674
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
    .line 1393
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1394
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
    .line 1158
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initUntrustedCertCache()V
    .registers 14

    .prologue
    .line 628
    iget-object v11, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v11

    .line 629
    :try_start_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    .line 631
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "adminUid"

    aput-object v12, v4, v10

    const/4 v10, 0x1

    const-string v12, "untrustedCertsList"

    aput-object v12, v4, v10

    .line 633
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "CERTIFICATE"

    invoke-virtual {v10, v12, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 635
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 637
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "untrustedCertsList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 638
    .local v9, "stringList":Ljava/lang/String;
    if-eqz v9, :cond_23

    .line 640
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 642
    .local v0, "adminUid":Ljava/lang/Integer;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 643
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    .local v2, "certAlias":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 646
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 656
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :catchall_65
    move-exception v10

    monitor-exit v11
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v10

    .line 649
    .restart local v0    # "adminUid":Ljava/lang/Integer;
    .restart local v2    # "certAlias":Ljava/lang/String;
    .restart local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "stringList":Ljava/lang/String;
    :cond_68
    :try_start_68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 650
    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 656
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :cond_76
    monitor-exit v11
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_65

    .line 657
    return-void
.end method

.method private isNativeKeyStoreUnlocked()Z
    .registers 6

    .prologue
    .line 1200
    const/4 v1, 0x0

    .line 1202
    .local v1, "isUnlocked":Z
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_9} :catch_d

    if-ne v2, v3, :cond_c

    .line 1203
    const/4 v1, 0x1

    .line 1211
    :cond_c
    :goto_c
    return v1

    .line 1205
    :catch_d
    move-exception v0

    .line 1208
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

    .line 1209
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private loadCache()V
    .registers 13

    .prologue
    .line 441
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    .line 443
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "trustedCaList"

    aput-object v11, v4, v10

    .line 446
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 449
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_70

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 452
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "trustedCaList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "stringList":Ljava/lang/String;
    if-eqz v9, :cond_20

    .line 455
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 457
    .local v0, "adminUid":Ljava/lang/Integer;
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 458
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    .local v2, "certAlias":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 461
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 464
    :cond_62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 465
    .local v1, "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 473
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "admins":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "certAlias":Ljava/lang/String;
    .end local v3    # "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "stringList":Ljava/lang/String;
    :cond_70
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initUntrustedCertCache()V

    .line 474
    return-void
.end method

.method private obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1475
    const-string v9, "CertificatePolicy"

    const-string v10, "obtainMsgFromModule"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    .line 1478
    .local v4, "moduleMsgName":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104027f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 1480
    const/4 v6, -0x1

    .line 1482
    .local v6, "reason":I
    const-string v9, "wifi_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cf

    .line 1483
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104027b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1486
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1487
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

    .line 1488
    array-length v9, v1

    if-le v9, v12, :cond_7a

    .line 1490
    aget-object v8, v1, v12

    .line 1491
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

    .line 1492
    const-string v7, "reason="

    .line 1493
    .local v7, "reasonPrefix":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 1495
    :try_start_6e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_79} :catch_b4

    move-result v6

    .line 1592
    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_7a
    :goto_7a
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

    .line 1593
    packed-switch v6, :pswitch_data_370

    .line 1646
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040280

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    .line 1650
    :goto_b3
    return-object v4

    .line 1496
    .restart local v1    # "eventReason":[Ljava/lang/String;
    .restart local v7    # "reasonPrefix":Ljava/lang/String;
    .restart local v8    # "reasonStr":Ljava/lang/String;
    :catch_b4
    move-exception v2

    .line 1497
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

    .line 1498
    const/4 v6, -0x1

    goto :goto_7a

    .line 1502
    .end local v1    # "eventReason":[Ljava/lang/String;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "reasonPrefix":Ljava/lang/String;
    .end local v8    # "reasonStr":Ljava/lang/String;
    :cond_cf
    const-string v9, "browser_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12b

    .line 1503
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104027c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1504
    if-eqz p2, :cond_7a

    .line 1505
    const/4 v0, -0x1

    .line 1507
    .local v0, "errorCode":I
    :try_start_e5
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_e8} :catch_107

    move-result v0

    .line 1511
    :goto_e9
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

    .line 1512
    packed-switch v0, :pswitch_data_38e

    .line 1523
    const/4 v6, 0x0

    goto/16 :goto_7a

    .line 1508
    :catch_107
    move-exception v2

    .line 1509
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

    goto :goto_e9

    .line 1514
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_121
    const/16 v6, 0xd

    .line 1515
    goto/16 :goto_7a

    .line 1517
    :pswitch_125
    const/4 v6, 0x2

    .line 1518
    goto/16 :goto_7a

    .line 1520
    :pswitch_128
    const/4 v6, 0x1

    .line 1521
    goto/16 :goto_7a

    .line 1527
    .end local v0    # "errorCode":I
    :cond_12b
    const-string v9, "package_manager_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_175

    .line 1528
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104027d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1529
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7a

    .line 1530
    const/4 v5, -0x1

    .line 1532
    .local v5, "parserError":I
    :try_start_145
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_145 .. :try_end_148} :catch_14f

    move-result v5

    .line 1536
    :goto_149
    packed-switch v5, :pswitch_data_398

    .line 1548
    const/4 v6, 0x0

    goto/16 :goto_7a

    .line 1533
    :catch_14f
    move-exception v2

    .line 1534
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

    goto :goto_149

    .line 1538
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_169
    const/16 v6, 0xa

    .line 1539
    goto/16 :goto_7a

    .line 1541
    :pswitch_16d
    const/16 v6, 0xc

    .line 1542
    goto/16 :goto_7a

    .line 1544
    :pswitch_171
    const/16 v6, 0xb

    .line 1545
    goto/16 :goto_7a

    .line 1552
    .end local v5    # "parserError":I
    :cond_175
    const-string v9, "installer_module"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 1553
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v10, 0x104027e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v11

    .line 1554
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7a

    .line 1555
    const/4 v3, -0x1

    .line 1557
    .local v3, "installerError":I
    :try_start_18f
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_192
    .catch Ljava/lang/NumberFormatException; {:try_start_18f .. :try_end_192} :catch_199

    move-result v3

    .line 1561
    :goto_193
    packed-switch v3, :pswitch_data_3a2

    .line 1587
    :pswitch_196
    const/4 v6, 0x0

    goto/16 :goto_7a

    .line 1558
    :catch_199
    move-exception v2

    .line 1559
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

    goto :goto_193

    .line 1563
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_1b3
    const/4 v6, 0x1

    .line 1564
    goto/16 :goto_7a

    .line 1566
    :pswitch_1b6
    const/4 v6, 0x2

    .line 1567
    goto/16 :goto_7a

    .line 1569
    :pswitch_1b9
    const/16 v6, 0xd

    .line 1570
    goto/16 :goto_7a

    .line 1572
    :pswitch_1bd
    const/16 v6, 0x8

    .line 1573
    goto/16 :goto_7a

    .line 1575
    :pswitch_1c1
    const/4 v6, 0x4

    .line 1576
    goto/16 :goto_7a

    .line 1578
    :pswitch_1c4
    const/4 v6, 0x3

    .line 1579
    goto/16 :goto_7a

    .line 1581
    :pswitch_1c7
    const/16 v6, 0xa

    .line 1582
    goto/16 :goto_7a

    .line 1584
    :pswitch_1cb
    const/16 v6, 0xb

    .line 1585
    goto/16 :goto_7a

    .line 1595
    .end local v3    # "installerError":I
    :pswitch_1cf
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040281

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1599
    :pswitch_1ef
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040285

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1603
    :pswitch_20f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040288

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1607
    :pswitch_22f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040282

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1610
    :pswitch_24f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040283

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1614
    :pswitch_26f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040284

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1617
    :pswitch_28f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040287

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1621
    :pswitch_2af
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040286

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1625
    :pswitch_2cf
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x1040289

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1629
    :pswitch_2ef
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104028a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1633
    :pswitch_30f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104028b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v12

    goto/16 :goto_b3

    .line 1637
    :pswitch_32f
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

    goto/16 :goto_b3

    .line 1641
    :pswitch_34f
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

    goto/16 :goto_b3

    .line 1593
    nop

    :pswitch_data_370
    .packed-switch 0x1
        :pswitch_1cf
        :pswitch_22f
        :pswitch_24f
        :pswitch_26f
        :pswitch_1ef
        :pswitch_2af
        :pswitch_28f
        :pswitch_20f
        :pswitch_2cf
        :pswitch_2ef
        :pswitch_32f
        :pswitch_30f
        :pswitch_34f
    .end packed-switch

    .line 1512
    :pswitch_data_38e
    .packed-switch 0x2
        :pswitch_121
        :pswitch_125
        :pswitch_128
    .end packed-switch

    .line 1536
    :pswitch_data_398
    .packed-switch -0x69
        :pswitch_171
        :pswitch_16d
        :pswitch_169
    .end packed-switch

    .line 1561
    :pswitch_data_3a2
    .packed-switch 0x1
        :pswitch_1b3
        :pswitch_1b6
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_196
        :pswitch_196
        :pswitch_196
        :pswitch_1bd
        :pswitch_196
        :pswitch_1c7
        :pswitch_1cb
        :pswitch_196
        :pswitch_1b9
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
    .line 1123
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertListToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1124
    return-void
.end method

.method private registerPackageChangeReceiver()V
    .registers 5

    .prologue
    .line 1303
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_25

    .line 1304
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1307
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1327
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1328
    const-string v2, "CertificatePolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 1333
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_25
    :goto_25
    return-void

    .line 1330
    :catch_26
    move-exception v0

    .line 1331
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

    .line 415
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v2, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    monitor-enter v4

    .line 417
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

    .line 418
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 419
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 420
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 421
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 426
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

    .line 428
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_58

    .line 429
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 433
    :cond_58
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_6b

    .line 434
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    invoke-direct {v3, p0, v6, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    :goto_6a
    return-void

    .line 436
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
    .line 1094
    .local p2, "listToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .local v6, "strBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1097
    .local v5, "previousList":Ljava/lang/String;
    if-eqz v5, :cond_64

    .line 1098
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1100
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1101
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

    .line 1103
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 1104
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

    .line 1107
    .end local v0    # "alias":Ljava/lang/String;
    :cond_45
    const/4 v3, 0x0

    .line 1108
    .local v3, "finalList":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5b

    .line 1109
    const/4 v7, 0x0

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1111
    :cond_5b
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CERTIFICATE"

    invoke-virtual {v7, p1, v8, p3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1114
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

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v2, "removedAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v4

    .line 552
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

    .line 553
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 554
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_d

    .line 556
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 561
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

    .line 563
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_57

    .line 564
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    .line 567
    :cond_57
    new-instance v3, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v6, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    return-void
.end method

.method private varargs validateCerts([Ljava/security/cert/X509Certificate;)I
    .registers 22
    .param p1, "arrayCerts"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 1764
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 1765
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x0

    .line 1766
    .local v4, "certPath":Ljava/security/cert/CertPath;
    const/16 v16, 0x0

    .line 1770
    .local v16, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v7, "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_88

    .line 1773
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 1774
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v7

    .line 1781
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :goto_28
    const/4 v13, 0x0

    .line 1782
    .local v13, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_aa

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1785
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 1791
    .restart local v13    # "rootCert":Ljava/security/cert/X509Certificate;
    :goto_4e
    new-instance v15, Ljava/security/cert/TrustAnchor;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v13, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 1792
    .local v15, "trustAnchor":Ljava/security/cert/TrustAnchor;
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v16

    .line 1795
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 1796
    .local v3, "certFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_64
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_64} :catch_8c

    move-result-object v4

    .line 1805
    :try_start_65
    new-instance v11, Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_65 .. :try_end_6c} :catch_c8

    .line 1812
    .local v11, "params":Ljava/security/cert/PKIXParameters;
    const/4 v5, 0x0

    .line 1814
    .local v5, "certPathValidator":Ljava/security/cert/CertPathValidator;
    :try_start_6d
    const-string v17, "PKIX"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_72
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6d .. :try_end_72} :catch_e5

    move-result-object v5

    .line 1821
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1824
    const/4 v12, 0x0

    .line 1826
    .local v12, "result":I
    :try_start_7b
    invoke-virtual {v5, v4, v11}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v8

    .line 1828
    .local v8, "cpvResult":Ljava/security/cert/CertPathValidatorResult;
    const-string v17, "CertificatePolicy"

    const-string v18, "Validation success"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7b .. :try_end_86} :catch_102
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7b .. :try_end_86} :catch_120

    .line 1829
    const/4 v12, -0x1

    .line 1863
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

    .line 1777
    .restart local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_88
    :try_start_88
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8b
    .catch Ljava/security/cert/CertificateException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_28

    .line 1797
    .end local v7    # "chainList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_8c
    move-exception v9

    .line 1798
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

    .line 1799
    const/16 v12, 0x8

    goto :goto_87

    .line 1788
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

    .line 1789
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

    .line 1806
    .restart local v3    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v15    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_c8
    move-exception v9

    .line 1807
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

    .line 1808
    const/4 v12, 0x0

    goto :goto_87

    .line 1815
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v5    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .restart local v11    # "params":Ljava/security/cert/PKIXParameters;
    :catch_e5
    move-exception v9

    .line 1816
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

    .line 1817
    const/4 v12, 0x0

    goto :goto_87

    .line 1830
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v12    # "result":I
    :catch_102
    move-exception v9

    .line 1831
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

    .line 1832
    const/4 v12, 0x0

    .line 1861
    goto/16 :goto_87

    .line 1833
    .end local v9    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_120
    move-exception v9

    .line 1834
    .local v9, "e":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1835
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

    .line 1836
    const-string v17, "Additional certificate path checker failed."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_159

    .line 1838
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    .line 1839
    .local v14, "t":Ljava/lang/Throwable;
    if-eqz v14, :cond_159

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_159

    .line 1840
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1843
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

    .line 1845
    :cond_16d
    const/4 v12, 0x2

    goto/16 :goto_87

    .line 1846
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

    .line 1853
    :cond_1b6
    const/16 v12, 0xd

    goto/16 :goto_87

    .line 1854
    :cond_1ba
    const-string v17, ", expiration time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1c7

    .line 1855
    const/4 v12, 0x4

    goto/16 :goto_87

    .line 1856
    :cond_1c7
    const-string v17, ", validation time"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1d4

    .line 1857
    const/4 v12, 0x3

    goto/16 :goto_87

    .line 1859
    :cond_1d4
    const/4 v12, 0x0

    goto/16 :goto_87
.end method

.method private verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 668
    const/4 v0, 0x1

    .line 669
    .local v0, "result":Z
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_15

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 672
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 674
    :cond_15
    if-eqz v0, :cond_2d

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 677
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_2e

    :goto_2c
    and-int/2addr v0, v1

    .line 679
    :cond_2d
    return v0

    .line 677
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public addTrustedCaCertificateList(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 268
    .local v0, "adminUid":I
    const/4 v7, 0x1

    .line 269
    .local v7, "ret":Z
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v6

    .line 271
    .local v6, "prevSize":I
    if-nez p1, :cond_f

    .line 272
    const/4 v9, 0x0

    .line 308
    :goto_e
    return v9

    .line 273
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_17

    .line 274
    const/4 v9, 0x1

    goto :goto_e

    .line 276
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 277
    .local v4, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 279
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-static {v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 280
    const/4 v9, 0x0

    goto :goto_e

    .line 283
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_39
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 286
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_79

    const/4 v9, 0x1

    :goto_4a
    and-int/2addr v7, v9

    .line 288
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheTrustedCertLock:Ljava/lang/Object;

    monitor-enter v10

    .line 289
    :try_start_4e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    .local v1, "alias":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 291
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 298
    .end local v1    # "alias":Ljava/lang/String;
    :catchall_76
    move-exception v9

    monitor-exit v10
    :try_end_78
    .catchall {:try_start_4e .. :try_end_78} :catchall_76

    throw v9

    .line 286
    :cond_79
    const/4 v9, 0x0

    goto :goto_4a

    .line 293
    .restart local v1    # "alias":Ljava/lang/String;
    :cond_7b
    :try_start_7b
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v9, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 298
    .end local v1    # "alias":Ljava/lang/String;
    .end local v8    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_8d
    monitor-exit v10
    :try_end_8e
    .catchall {:try_start_7b .. :try_end_8e} :catchall_76

    .line 299
    const-string v9, "trustedCaList"

    invoke-direct {p0, v0, v2, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v7, v9

    .line 303
    if-nez v6, :cond_a7

    .line 304
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_a4
    move v9, v7

    .line 308
    goto/16 :goto_e

    .line 306
    :cond_a7
    new-instance v9, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a4
.end method

.method public addUntrustedCertificateList(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 493
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 495
    .local v0, "adminUid":I
    if-nez p1, :cond_9

    .line 522
    :goto_8
    return v8

    .line 497
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_11

    move v8, v7

    .line 498
    goto :goto_8

    .line 501
    :cond_11
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertToX509List(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_5b

    move v4, v7

    .line 506
    .local v4, "result":Z
    :goto_26
    const-string v6, "untrustedCertsList"

    invoke-direct {p0, v0, v2, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addListAsStringOnDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 509
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCacheUntrustedCertLock:Ljava/lang/Object;

    monitor-enter v9

    .line 510
    :try_start_30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 511
    .local v1, "alias":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 512
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 519
    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_58
    move-exception v6

    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_58

    throw v6

    .end local v4    # "result":Z
    :cond_5b
    move v4, v8

    .line 504
    goto :goto_26

    .line 514
    .restart local v1    # "alias":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Z
    :cond_5d
    :try_start_5d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 515
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    .line 519
    .end local v1    # "alias":Ljava/lang/String;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6f
    monitor-exit v9
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_58

    .line 521
    new-instance v6, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v8, v4

    .line 522
    goto :goto_8
.end method

.method public clearTrustedCaCertificateList()Z
    .registers 3

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 376
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustedCertificates(I)Z

    move-result v1

    return v1
.end method

.method public clearUntrustedCertificateList()Z
    .registers 3

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 607
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearUntrustedCertificates(I)Z

    move-result v1

    return v1
.end method

.method public enableCertificateFailureNotification(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 1403
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CERTIFICATE"

    const-string v3, "notificateSignatureFailureToUser"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public enableCertificateValidationAtInstall(Z)Z
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 1716
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 1717
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "CERTIFICATE"

    const-string v3, "validateCertificateAtInstall"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public enableSignatureIdentityInformation(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 1220
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "CERTIFICATE"

    const-string v4, "signatureIdentityInformationEnabled"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1222
    .local v1, "ret":Z
    return v1
.end method

.method public getIdentitiesFromSignatures([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 19
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1249
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    .local v12, "ret":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v6, v15, :cond_66

    .line 1252
    aget-object v15, p1, v6

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 1253
    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1255
    .local v7, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1257
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_17
    const-string v15, "X509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_1c} :catch_5e

    move-result-object v3

    .line 1262
    const/4 v1, 0x0

    .line 1264
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_1e
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/security/cert/CertificateException; {:try_start_1e .. :try_end_24} :catch_67

    .line 1269
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 1270
    .local v9, "mSslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v4

    .line 1271
    .local v4, "cn":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v10

    .line 1272
    .local v10, "o":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v11

    .line 1275
    .local v11, "ou":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_73

    .line 1276
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_70

    .line 1277
    move-object v13, v10

    .line 1278
    .local v13, "subjectPrimary":Ljava/lang/String;
    move-object v14, v4

    .line 1292
    .local v14, "subjectSecondary":Ljava/lang/String;
    :goto_4f
    const/4 v15, 0x2

    new-array v8, v15, [Ljava/lang/String;

    .line 1293
    .local v8, "item":[Ljava/lang/String;
    const/4 v15, 0x0

    aput-object v13, v8, v15

    .line 1294
    const/4 v15, 0x1

    aput-object v14, v8, v15

    .line 1295
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1258
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

    .line 1259
    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "CertificateFactory error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    .end local v2    # "cert":[B
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_66
    :goto_66
    return-object v12

    .line 1265
    .restart local v2    # "cert":[B
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_67
    move-exception v5

    .line 1266
    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    const-string v15, "CertificatePolicy"

    const-string v16, "X509Certificate error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1280
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    .restart local v4    # "cn":Ljava/lang/String;
    .restart local v9    # "mSslCert":Landroid/net/http/SslCertificate;
    .restart local v10    # "o":Ljava/lang/String;
    .restart local v11    # "ou":Ljava/lang/String;
    :cond_70
    move-object v13, v10

    .line 1281
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    move-object v14, v11

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f

    .line 1284
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_73
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7d

    .line 1285
    move-object v13, v4

    .line 1286
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f

    .line 1288
    .end local v13    # "subjectPrimary":Ljava/lang/String;
    .end local v14    # "subjectSecondary":Ljava/lang/String;
    :cond_7d
    invoke-virtual {v9}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v13

    .line 1289
    .restart local v13    # "subjectPrimary":Ljava/lang/String;
    const-string v14, ""

    .restart local v14    # "subjectSecondary":Ljava/lang/String;
    goto :goto_4f
.end method

.method public getTrustedCaCertificateList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_11

    .line 345
    :cond_10
    return-object v1

    .line 320
    :cond_11
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "trustedCaList"

    aput-object v11, v4, v10

    .line 323
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 326
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 327
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "trustedCaList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 330
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .line 332
    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 333
    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_59

    .line 334
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 337
    :cond_59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 339
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 342
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method public getUntrustedCertificateList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    .line 572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v1, "certList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_11

    .line 602
    :cond_10
    return-object v1

    .line 578
    :cond_11
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "untrustedCertsList"

    aput-object v11, v4, v10

    .line 580
    .local v4, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 583
    .local v6, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 584
    .local v5, "cv":Landroid/content/ContentValues;
    const-string v10, "untrustedCertsList"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 586
    .local v8, "stringList":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2a

    .line 587
    new-instance v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;-><init>()V

    .line 589
    .local v0, "certInfo":Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;
    const-string v10, "adminUid"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 590
    .local v9, "uid":Ljava/lang/Integer;
    if-eqz v9, :cond_59

    .line 591
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 594
    :cond_59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v2, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 596
    .local v3, "certsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 597
    iput-object v2, v0, Lcom/sec/enterprise/knox/certificate/CertificateControlInfo;->entries:Ljava/util/List;

    .line 599
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method public isCaCertificateDisabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "certAlias"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string v1, "systemDisabledList"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "disabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isCaCertificateTrusted(Landroid/app/enterprise/CertificateInfo;Z)Z
    .registers 9
    .param p1, "certificate"    # Landroid/app/enterprise/CertificateInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v3, 0x1

    .line 350
    const-string v4, "com.android.certinstaller"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedTrustedCertAliases:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCachedUntrustedCertAliases:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_18

    move v1, v3

    .line 369
    :cond_17
    :goto_17
    return v1

    .line 355
    :cond_18
    const/4 v1, 0x1

    .line 356
    .local v1, "ret":Z
    invoke-virtual {p1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 357
    .local v2, "x509cert":Ljava/security/cert/X509Certificate;
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v4, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isSystem(Ljava/security/cert/X509Certificate;Z)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 358
    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    and-int/2addr v1, v3

    .line 363
    :goto_2d
    if-eqz p2, :cond_17

    if-nez v1, :cond_17

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "message"

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040278

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_17

    .line 360
    .end local v0    # "i":Landroid/content/Intent;
    :cond_4c
    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_2d
.end method

.method public isCertificateFailureNotificationEnabled()Z
    .registers 7

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    .line 1409
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CERTIFICATE"

    const-string v5, "notificateSignatureFailureToUser"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1412
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

    .line 1413
    .local v1, "notificateUser":Z
    if-eqz v1, :cond_11

    .line 1414
    const/4 v3, 0x1

    .line 1417
    .end local v1    # "notificateUser":Z
    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method

.method public isCertificateValidationAtInstallEnabled()Z
    .registers 8

    .prologue
    .line 1722
    const/4 v1, 0x0

    .line 1723
    .local v1, "validate":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string v6, "validateCertificateAtInstall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1725
    .local v3, "validateCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1726
    .local v2, "validateCert":Z
    if-eqz v2, :cond_f

    .line 1727
    const/4 v1, 0x1

    .line 1731
    .end local v2    # "validateCert":Z
    :cond_22
    return v1
.end method

.method public isOcspCheckEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1695
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageForPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1698
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "com.android.certinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1699
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1707
    :cond_23
    :goto_23
    return v2

    .line 1702
    :cond_24
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .line 1703
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 1704
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "*"

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_3a
    const/4 v2, 0x1

    goto :goto_23
.end method

.method public isRevocationCheckEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1678
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackageForPid(I)Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, "pkgName":Ljava/lang/String;
    const-string v3, "com.android.certinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1682
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1690
    :cond_23
    :goto_23
    return v2

    .line 1685
    :cond_24
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    .line 1686
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 1687
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "*"

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_3a
    const/4 v2, 0x1

    goto :goto_23
.end method

.method public isSignatureIdentityInformationEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z

    .prologue
    .line 1226
    const-string v4, "com.android.packageinstaller"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->checkPackageCallerOrEnforcePermission(Ljava/lang/String;)V

    .line 1227
    const/4 v1, 0x0

    .line 1228
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CERTIFICATE"

    const-string v6, "signatureIdentityInformationEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1230
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1231
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1232
    const/4 v1, 0x1

    .line 1236
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_27
    return v1
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 1422
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->obtainMsgFromModule(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1425
    .local v7, "userMsgModName":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.certificate.action.certificate.failure"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v2, "iAdminNotification":Landroid/content/Intent;
    const-string v8, "certificate_failure_module"

    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1427
    const-string v8, "certificate_failure_message"

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    iput-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->miAdminNotification:Landroid/content/Intent;

    .line 1431
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;)V

    .line 1436
    .local v0, "broadcastThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1439
    const/4 v4, 0x0

    .line 1440
    .local v4, "isNotificationEnabled":Z
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CERTIFICATE"

    const-string v10, "notificateSignatureFailureToUser"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1443
    .local v6, "notificateUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1444
    .local v5, "notificateUser":Z
    if-eqz v5, :cond_34

    .line 1445
    move v4, v5

    .line 1450
    .end local v5    # "notificateUser":Z
    :cond_47
    if-eqz v4, :cond_8c

    if-eqz p3, :cond_8c

    .line 1451
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1452
    .local v3, "iUserNotification":Landroid/content/Intent;
    const-string v8, "message"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    const v11, 0x104027a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1457
    .end local v3    # "iUserNotification":Landroid/content/Intent;
    :cond_8c
    return-void
.end method

.method public notifyCertificateRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 1890
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceSystemUser()V

    .line 1891
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.knox.certificate.CertificatePolicy.ACTION_CERTIFICATE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .local v0, "intentNotification":Landroid/content/Intent;
    const-string v1, "certificate_removed_subject"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1894
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1898
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1902
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1911
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearTrustedCertificates(I)Z

    .line 1912
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearUntrustedCertificates(I)Z

    .line 1913
    return-void
.end method

.method public removeTrustedCaCertificateList(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 383
    .local v0, "adminUid":I
    if-nez p1, :cond_8

    .line 384
    const/4 v4, 0x0

    .line 398
    :cond_7
    :goto_7
    return v4

    .line 385
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    .line 386
    const/4 v4, 0x1

    goto :goto_7

    .line 389
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    .line 391
    .local v2, "cert":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 393
    .end local v2    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_35
    const-string v5, "trustedCaList"

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 395
    .local v4, "result":Z
    if-eqz v4, :cond_7

    .line 396
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliasesFromCacheAndKeyStore(ILjava/util/List;)V

    goto :goto_7
.end method

.method public removeUntrustedCertificateList(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission()I

    move-result v0

    .line 528
    .local v0, "adminUid":I
    if-nez p1, :cond_8

    .line 529
    const/4 v4, 0x0

    .line 545
    :cond_7
    :goto_7
    return v4

    .line 530
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    .line 531
    const/4 v4, 0x1

    goto :goto_7

    .line 534
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/CertificateInfo;

    .line 536
    .local v2, "cert":Landroid/app/enterprise/CertificateInfo;
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v2}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 539
    .end local v2    # "cert":Landroid/app/enterprise/CertificateInfo;
    :cond_35
    const-string v5, "untrustedCertsList"

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeListFromDatabase(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    .line 542
    .local v4, "result":Z
    if-eqz v4, :cond_7

    .line 543
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUntrustedCerts(ILjava/util/List;)V

    goto :goto_7
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1906
    invoke-direct {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->loadCache()V

    .line 1907
    return-void
.end method

.method public validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I
    .registers 5
    .param p1, "certInfo"    # Landroid/app/enterprise/CertificateInfo;

    .prologue
    .line 1738
    invoke-virtual {p1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1739
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
    .line 1746
    .local p1, "listCertInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    const/4 v4, 0x0

    .line 1748
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

    .line 1750
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts([Ljava/security/cert/X509Certificate;)I

    move-result v4

    .line 1751
    const/4 v5, -0x1

    if-ne v4, v5, :cond_54

    .line 1752
    const/4 v4, 0x0

    .line 1754
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1755
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

    .line 1756
    .local v1, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1758
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

    .line 1760
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listX509":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_54
    return v4
.end method
