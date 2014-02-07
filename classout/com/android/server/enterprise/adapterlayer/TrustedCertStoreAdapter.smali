.class public Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;
.super Ljava/lang/Object;
.source "TrustedCertStoreAdapter.java"


# static fields
.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

.field private static mTrustCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;
    .registers 2

    .prologue
    .line 51
    const-class v1, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    if-nez v0, :cond_e

    .line 52
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    .line 54
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteCertificateEntry(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->deleteCertificateEntry(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    .line 67
    return-void
.end method

.method public installCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->mTrustCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 59
    return-void
.end method
