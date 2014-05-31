.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mCertStore:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 95
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCertStore:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    .line 97
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 98
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    return-void
.end method

.method private static convertStoreTypeToUid(I)I
    .registers 3
    .param p0, "storeType"    # I

    .prologue
    .line 335
    const/4 v0, -0x1

    .line 336
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_6

    .line 337
    const/4 v0, -0x1

    .line 341
    :cond_5
    :goto_5
    return v0

    .line 338
    :cond_6
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    .line 339
    const/16 v0, 0x3f2

    goto :goto_5
.end method

.method private extractPkcs12([BLjava/lang/String;)Z
    .registers 13
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 264
    if-nez p2, :cond_4

    .line 289
    :cond_3
    :goto_3
    return v6

    .line 268
    :cond_4
    :try_start_4
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 269
    .local v4, "keystore":Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 270
    .local v5, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 272
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 273
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    :cond_29
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 282
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_29

    .line 283
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_44

    move-result v6

    goto :goto_3

    .line 286
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "keystore":Ljava/security/KeyStore;
    .end local v5    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catch_44
    move-exception v2

    .line 287
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CertificateUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractPkcs12(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .registers 19
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    const-string v14, "certificate_policy"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b3

    move-result-object v6

    .line 297
    .local v6, "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    const/4 v14, 0x0

    :try_start_c
    invoke-interface {v6, v14}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 298
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 299
    .local v2, "arrayChain":[Ljava/security/cert/Certificate;
    new-instance v11, Ljava/util/ArrayList;

    array-length v14, v2

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v11, "listChain":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    move-object v1, v2

    .local v1, "arr$":[Ljava/security/cert/Certificate;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1f
    if-ge v9, v10, :cond_30

    aget-object v5, v1, v9

    .line 301
    .local v5, "cert":Ljava/security/cert/Certificate;
    new-instance v14, Landroid/app/enterprise/CertificateInfo;

    check-cast v5, Ljava/security/cert/X509Certificate;

    .end local v5    # "cert":Ljava/security/cert/Certificate;
    invoke-direct {v14, v5}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 303
    :cond_30
    invoke-interface {v6, v11}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v13

    .line 304
    .local v13, "resultCode":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_56

    .line 305
    const-string v14, "CertificateUtil"

    const-string v15, "certificate failed during validation"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v14, "installer_module"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v14, v15, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_4b} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_4b} :catch_aa
    .catchall {:try_start_c .. :try_end_4b} :catchall_b3

    .line 308
    const/4 v14, 0x0

    .line 330
    .end local v2    # "arrayChain":[Ljava/security/cert/Certificate;
    .end local v11    # "listChain":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v13    # "resultCode":I
    :goto_4c
    monitor-exit p0

    return v14

    .line 311
    .end local v1    # "arr$":[Ljava/security/cert/Certificate;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :catch_4e
    move-exception v8

    .line 312
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v14, "CertificateUtil"

    const-string v15, "Failed talking to certificate policy"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_56
    :goto_56
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 318
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 320
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    .line 321
    .local v7, "certs":[Ljava/security/cert/Certificate;
    const-string v14, "CertificateUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "# certs extracted = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    array-length v14, v7

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 323
    .local v4, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v1, v7

    .restart local v1    # "arr$":[Ljava/security/cert/Certificate;
    array-length v10, v1

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_94
    if-ge v9, v10, :cond_b6

    aget-object v3, v1, v9

    .line 324
    .local v3, "c":Ljava/security/cert/Certificate;
    move-object v0, v3

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 325
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v14

    if-eqz v14, :cond_a7

    .line 326
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_a7
    add-int/lit8 v9, v9, 0x1

    goto :goto_94

    .line 313
    .end local v1    # "arr$":[Ljava/security/cert/Certificate;
    .end local v3    # "c":Ljava/security/cert/Certificate;
    .end local v4    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "certs":[Ljava/security/cert/Certificate;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :catch_aa
    move-exception v12

    .line 314
    .local v12, "nex":Ljava/lang/NullPointerException;
    const-string v14, "CertificateUtil"

    const-string v15, "Certificate policy not found"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_4f .. :try_end_b2} :catchall_b3

    goto :goto_56

    .line 294
    .end local v6    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v12    # "nex":Ljava/lang/NullPointerException;
    :catchall_b3
    move-exception v14

    monitor-exit p0

    throw v14

    .line 328
    .restart local v1    # "arr$":[Ljava/security/cert/Certificate;
    .restart local v4    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .restart local v7    # "certs":[Ljava/security/cert/Certificate;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    :cond_b6
    :try_start_b6
    const-string v14, "CertificateUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "# ca certs extracted = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_b6 .. :try_end_d8} :catchall_b3

    .line 330
    const/4 v14, 0x1

    goto/16 :goto_4c
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 249
    :try_start_1
    const-string v6, "2.5.29.19"

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 250
    .local v0, "asn1EncodedBytes":[B
    if-nez v0, :cond_a

    .line 259
    .end local v0    # "asn1EncodedBytes":[B
    :goto_9
    return v5

    .line 253
    .restart local v0    # "asn1EncodedBytes":[B
    :cond_a
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 255
    .local v1, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 256
    .local v3, "octets":[B
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 257
    .local v4, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result v5

    goto :goto_9

    .line 258
    .end local v0    # "asn1EncodedBytes":[B
    .end local v1    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3    # "octets":[B
    .end local v4    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2d
    move-exception v2

    .line 259
    .local v2, "e":Ljava/io/IOException;
    goto :goto_9
.end method

.method private parseCert([B)Z
    .registers 14
    .param p1, "bytes"    # [B

    .prologue
    const/4 v8, 0x0

    .line 205
    const/4 v7, 0x0

    .line 207
    .local v7, "ret":Z
    :try_start_2
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 208
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 212
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v9, "certificate_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1c} :catch_68

    move-result-object v3

    .line 215
    .local v3, "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    const/4 v9, 0x0

    :try_start_1e
    invoke-interface {v3, v9}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 216
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 217
    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-interface {v3, v2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v6

    .line 218
    .local v6, "resultCode":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_4a

    .line 219
    const-string v9, "CertificateUtil"

    const-string v10, "certificate failed during validation"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v9, "installer_module"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v9, v10, v11}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_41} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_41} :catch_5f
    .catch Ljava/security/cert/CertificateException; {:try_start_1e .. :try_end_41} :catch_68

    .line 244
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v6    # "resultCode":I
    :goto_41
    return v8

    .line 225
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :catch_42
    move-exception v4

    .line 226
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_43
    const-string v8, "CertificateUtil"

    const-string v9, "Failed talking to certificate policy"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4a
    :goto_4a
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 232
    const-string v8, "CertificateUtil"

    const-string v9, "got a CA cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v7, 0x1

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :goto_5d
    move v8, v7

    .line 244
    goto :goto_41

    .line 227
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :catch_5f
    move-exception v5

    .line 228
    .local v5, "nex":Ljava/lang/NullPointerException;
    const-string v8, "CertificateUtil"

    const-string v9, "Certificate policy not found"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/security/cert/CertificateException; {:try_start_43 .. :try_end_67} :catch_68

    goto :goto_4a

    .line 240
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v5    # "nex":Ljava/lang/NullPointerException;
    :catch_68
    move-exception v4

    .line 241
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCert(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v7, 0x0

    goto :goto_5d

    .line 236
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :cond_83
    :try_start_83
    const-string v8, "CertificateUtil"

    const-string v9, "got a user cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_8c
    .catch Ljava/security/cert/CertificateException; {:try_start_83 .. :try_end_8c} :catch_68

    .line 238
    const/4 v7, 0x1

    goto :goto_5d
.end method


# virtual methods
.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "keystoreUid"    # I

    .prologue
    .line 109
    const/4 v4, 0x1

    .line 113
    .local v4, "ret":Z
    const-string v5, ".crt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "CERT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 115
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([B)Z

    move-result v5

    and-int/2addr v4, v5

    .line 123
    .end local v4    # "ret":Z
    :goto_16
    if-eqz v4, :cond_251

    .line 125
    :try_start_18
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_109

    .line 126
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 128
    .local v1, "caCerts":[Ljava/security/cert/X509Certificate;
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_70

    .line 129
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    and-int/2addr v4, v5

    .line 133
    .restart local v4    # "ret":Z
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaCerts put state for wifi keystore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v4    # "ret":Z
    :cond_70
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_b0

    .line 136
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    and-int/2addr v4, v5

    .line 140
    .restart local v4    # "ret":Z
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaCerts put state for vpn and apps keystore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v4    # "ret":Z
    :cond_b0
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_f1

    .line 144
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_c6} :catch_252

    .line 146
    .local v0, "ca":Ljava/security/cert/X509Certificate;
    :try_start_c6
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCertStore:Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/adapterlayer/TrustedCertStoreAdapter;->installCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_cc

    goto :goto_ba

    .line 147
    :catch_cc
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cd
    const-string v5, "CertificateUtil"

    const-string v6, "Failed installing to System User Trust Store"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d4} :catch_252

    .line 149
    const/4 v4, 0x0

    .restart local v4    # "ret":Z
    goto :goto_ba

    .line 116
    .end local v0    # "ca":Ljava/security/cert/X509Certificate;
    .end local v1    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_d6
    const-string v5, ".p12"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e6

    const-string v5, "PKCS12"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 118
    :cond_e6
    invoke-direct {p0, p2, p4}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;)Z

    move-result v5

    and-int/2addr v4, v5

    goto/16 :goto_16

    .line 120
    :cond_ed
    and-int/lit8 v4, v4, 0x0

    .local v4, "ret":I
    goto/16 :goto_16

    .line 153
    .end local v4    # "ret":I
    .restart local v1    # "caCerts":[Ljava/security/cert/X509Certificate;
    :cond_f1
    :try_start_f1
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaCerts put state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "caCerts":[Ljava/security/cert/X509Certificate;
    :cond_109
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_1b3

    .line 156
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_155

    .line 157
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/security/cert/Certificate;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v9, v7, v8

    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    and-int/2addr v4, v5

    .line 161
    .local v4, "ret":Z
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserCert put state for wifi keystore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v4    # "ret":Z
    :cond_155
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_19d

    .line 164
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/security/cert/Certificate;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v9, v7, v8

    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v5

    and-int/2addr v4, v5

    .line 168
    .restart local v4    # "ret":Z
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserCert put state for vpn and apps keystore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v4    # "ret":Z
    :cond_19d
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_1b3

    const-string v5, ".crt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1b1

    const-string v5, "CERT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b3

    .line 173
    :cond_1b1
    and-int/lit8 v4, v4, 0x0

    .line 176
    :cond_1b3
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v5, :cond_251

    .line 177
    and-int/lit8 v5, p5, 0x2

    if-eqz v5, :cond_1f9

    .line 178
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v7}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5

    and-int/2addr v4, v5

    .line 181
    .restart local v4    # "ret":Z
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserPKey put state for wifi keystore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v4    # "ret":Z
    :cond_1f9
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_23b

    .line 184
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v7}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v5

    and-int/2addr v4, v5

    .line 188
    .restart local v4    # "ret":Z
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v4    # "ret":Z
    :cond_23b
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_251

    const-string v5, ".crt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24f

    const-string v5, "CERT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_24c} :catch_252

    move-result v5

    if-eqz v5, :cond_251

    .line 193
    :cond_24f
    and-int/lit8 v4, v4, 0x0

    .line 200
    :cond_251
    :goto_251
    return v4

    .line 196
    :catch_252
    move-exception v2

    .line 197
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "CertificateUtil"

    const-string v6, "install(): "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_251
.end method
