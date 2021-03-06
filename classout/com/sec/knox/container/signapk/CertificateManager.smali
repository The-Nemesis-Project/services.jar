.class public Lcom/sec/knox/container/signapk/CertificateManager;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# static fields
.field public static final CERTIFICATE_PREFIX:Ljava/lang/String; = "cert-"

.field public static final CERT_PATH:Ljava/lang/String; = "/data/system/container/certs"

.field public static final PRIVATEKEY_PREFIX:Ljava/lang/String; = "privatekey-"

.field private static TAG:Ljava/lang/String;

.field private static mCertificateManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/signapk/CertificateManager;",
            ">;"
        }
    .end annotation
.end field

.field private static mManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/signapk/CertificateManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mCreationTime:Ljava/lang/String;

.field private mOriginalCert:[Ljava/lang/String;

.field private mPrivateKey:Ljava/security/PrivateKey;

.field private mX509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "EnterpriseContainerPolicy"

    sput-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mCertificateManagers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .registers 4
    .param p1, "containerid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 81
    iput-object p2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 83
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 84
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p1, "containerid"    # I
    .param p2, "originalCert"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 88
    iput-object p2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mOriginalCert:[Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 91
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 92
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    .line 93
    return-void
.end method

.method private cleanupCertificates()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 161
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 162
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privatekey-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pk8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 164
    return-void
.end method

.method private cleanupCertificatesForApk()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 168
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 169
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/container/certs"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privatekey-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pk8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    return-void
.end method

.method private static decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;
    .registers 10
    .param p0, "encryptedPrivateKey"    # [B
    .param p1, "passwordStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    new-instance v1, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v1, p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_2f

    .line 222
    .local v1, "epkInfo":Ljavax/crypto/EncryptedPrivateKeyInfo;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 224
    .local v4, "password":[C
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 225
    .local v5, "skFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v6, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v5, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 227
    .local v3, "key":Ljava/security/Key;
    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 228
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v7

    invoke-virtual {v0, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 231
    :try_start_2a
    invoke-virtual {v1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_2d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2a .. :try_end_2d} :catch_32

    move-result-object v6

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "epkInfo":Ljavax/crypto/EncryptedPrivateKeyInfo;
    .end local v3    # "key":Ljava/security/Key;
    .end local v4    # "password":[C
    .end local v5    # "skFactory":Ljavax/crypto/SecretKeyFactory;
    :goto_2e
    return-object v6

    .line 217
    :catch_2f
    move-exception v2

    .line 219
    .local v2, "ex":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_2e

    .line 232
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "epkInfo":Ljavax/crypto/EncryptedPrivateKeyInfo;
    .restart local v3    # "key":Ljava/security/Key;
    .restart local v4    # "password":[C
    .restart local v5    # "skFactory":Ljavax/crypto/SecretKeyFactory;
    :catch_32
    move-exception v2

    .line 233
    .local v2, "ex":Ljava/security/spec/InvalidKeySpecException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "signapk: Password may be bad."

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    throw v2
.end method

.method public static getInstance(ILandroid/content/Context;)Lcom/sec/knox/container/signapk/CertificateManager;
    .registers 5
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 98
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/signapk/CertificateManager;

    .line 102
    :goto_19
    return-object v1

    .line 100
    :cond_1a
    new-instance v0, Lcom/sec/knox/container/signapk/CertificateManager;

    invoke-direct {v0, p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;-><init>(ILandroid/content/Context;)V

    .line 101
    .local v0, "mgr":Lcom/sec/knox/container/signapk/CertificateManager;
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 102
    goto :goto_19
.end method

.method private initializeKeysForApk(Ljava/lang/String;)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->readPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 148
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->readCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 153
    :goto_c
    return-void

    .line 149
    :catch_d
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private readCertificate()Ljava/security/cert/X509Certificate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/container/certs"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cert-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v0, "certFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 290
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 292
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_36
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 293
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_42} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_42} :catch_55
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_42} :catch_65
    .catchall {:try_start_36 .. :try_end_42} :catchall_60

    .line 303
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 306
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "input":Ljava/io/FileInputStream;
    :goto_45
    return-object v4

    .line 294
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_46
    move-exception v2

    .line 295
    .local v2, "ex":Ljava/security/cert/CertificateException;
    :try_start_47
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_60

    .line 303
    .end local v2    # "ex":Ljava/security/cert/CertificateException;
    :goto_50
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 306
    .end local v3    # "input":Ljava/io/FileInputStream;
    :cond_53
    const/4 v4, 0x0

    goto :goto_45

    .line 297
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_55
    move-exception v2

    .line 298
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_56
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_60

    goto :goto_50

    .line 303
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_60
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v4

    .line 300
    :catch_65
    move-exception v2

    .line 301
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_66
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_60

    goto :goto_50
.end method

.method private readCertificateForApk()Ljava/security/cert/X509Certificate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/container/certs"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cert-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .local v0, "certFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 312
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 314
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_36
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 315
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_42} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_42} :catch_55
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_42} :catch_65
    .catchall {:try_start_36 .. :try_end_42} :catchall_60

    .line 325
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 328
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "input":Ljava/io/FileInputStream;
    :goto_45
    return-object v4

    .line 316
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_46
    move-exception v2

    .line 317
    .local v2, "ex":Ljava/security/cert/CertificateException;
    :try_start_47
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_60

    .line 325
    .end local v2    # "ex":Ljava/security/cert/CertificateException;
    :goto_50
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 328
    .end local v3    # "input":Ljava/io/FileInputStream;
    :cond_53
    const/4 v4, 0x0

    goto :goto_45

    .line 319
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_55
    move-exception v2

    .line 320
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_56
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_60

    goto :goto_50

    .line 325
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_60
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v4

    .line 322
    :catch_65
    move-exception v2

    .line 323
    .local v2, "ex":Ljava/lang/NullPointerException;
    :try_start_66
    sget-object v4, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_60

    goto :goto_50
.end method

.method private readPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/container/certs"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "privatekey-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pk8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 244
    .local v3, "input":Ljava/io/DataInputStream;
    :try_start_35
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 245
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 247
    invoke-static {v0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object v4

    .line 248
    .local v4, "spec":Ljava/security/spec/KeySpec;
    if-nez v4, :cond_4a

    .line 249
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    invoke-direct {v4, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_4a} :catch_64
    .catchall {:try_start_35 .. :try_end_4a} :catchall_73

    .line 253
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    :cond_4a
    :try_start_4a
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_53
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4a .. :try_end_53} :catch_58
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_53} :catch_64
    .catchall {:try_start_4a .. :try_end_53} :catchall_73

    move-result-object v5

    .line 260
    :goto_54
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 262
    .end local v0    # "bytes":[B
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    :goto_57
    return-object v5

    .line 254
    .restart local v0    # "bytes":[B
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    :catch_58
    move-exception v1

    .line 255
    .local v1, "ex":Ljava/security/spec/InvalidKeySpecException;
    :try_start_59
    const-string v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_62} :catch_64
    .catchall {:try_start_59 .. :try_end_62} :catchall_73

    move-result-object v5

    goto :goto_54

    .line 257
    .end local v0    # "bytes":[B
    .end local v1    # "ex":Ljava/security/spec/InvalidKeySpecException;
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    :catch_64
    move-exception v1

    .line 258
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :try_start_65
    sget-object v5, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_73

    .line 260
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 262
    const/4 v5, 0x0

    goto :goto_57

    .line 260
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catchall_73
    move-exception v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    throw v5
.end method

.method private readPrivateKeyForApk(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/container/certs"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "privatekey-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pk8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 269
    .local v3, "input":Ljava/io/DataInputStream;
    :try_start_35
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 270
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 272
    invoke-static {v0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object v4

    .line 273
    .local v4, "spec":Ljava/security/spec/KeySpec;
    if-nez v4, :cond_4a

    .line 274
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    invoke-direct {v4, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_64

    .line 278
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    :cond_4a
    :try_start_4a
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_53
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4a .. :try_end_53} :catch_58
    .catchall {:try_start_4a .. :try_end_53} :catchall_64

    move-result-object v5

    .line 283
    :goto_54
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 280
    return-object v5

    .line 279
    :catch_58
    move-exception v1

    .line 280
    .local v1, "ex":Ljava/security/spec/InvalidKeySpecException;
    :try_start_59
    const-string v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_64

    move-result-object v5

    goto :goto_54

    .line 283
    .end local v0    # "bytes":[B
    .end local v1    # "ex":Ljava/security/spec/InvalidKeySpecException;
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    :catchall_64
    move-exception v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    throw v5
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .prologue
    .line 155
    sget-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->cleanupCertificates()V

    .line 157
    return-void
.end method

.method public generateSelfSignedX509CertificateForApk(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    return-void
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_a

    .line 195
    :try_start_4
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->readCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_d

    .line 201
    :cond_a
    :goto_a
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    return-object v1

    .line 196
    :catch_d
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public getContainerId()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    return v0
.end method

.method public getCreationTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public initializeKeyStore(Ljava/lang/String;)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->readPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 139
    invoke-direct {p0}, Lcom/sec/knox/container/signapk/CertificateManager;->readCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 144
    :goto_c
    return-void

    .line 140
    :catch_d
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public setContainerId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 182
    return-void
.end method

.method public setUpKeys(Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "database"    # Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .prologue
    .line 111
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in setUpKeys"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_3a

    .line 113
    :cond_f
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mOriginalCert:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureCreationTime(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    if-nez v1, :cond_31

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mCreationTime:Ljava/lang/String;

    .line 117
    :try_start_27
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "in setUpKeys generating certificate"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->generateSelfSignedX509CertificateForApk(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_35

    .line 124
    :cond_31
    :goto_31
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/CertificateManager;->initializeKeysForApk(Ljava/lang/String;)V

    .line 129
    :goto_34
    return-void

    .line 120
    :catch_35
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3a
    sget-object v1, Lcom/sec/knox/container/signapk/CertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "Keys are already loaded"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public unload()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 175
    iput-object v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mX509Cert:Ljava/security/cert/X509Certificate;

    .line 176
    sget-object v0, Lcom/sec/knox/container/signapk/CertificateManager;->mManagers:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/signapk/CertificateManager;->mContainerId:I

    .line 178
    return-void
.end method
