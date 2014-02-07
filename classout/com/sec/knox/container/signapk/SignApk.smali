.class public Lcom/sec/knox/container/signapk/SignApk;
.super Ljava/lang/Object;
.source "SignApk.java"


# static fields
.field private static final CERT_RSA_NAME:Ljava/lang/String; = "META-INF/CERT.RSA"

.field private static final CERT_SF_NAME:Ljava/lang/String; = "META-INF/CERT.SF"

.field public static final TAG:Ljava/lang/String; = "ContainerSignApk"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static stripPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mSecurityError:Ljava/lang/Object;

.field private privateKey:Ljava/security/PrivateKey;

.field private publicKey:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const-string v0, "^META-INF/(.*)[.](SF|RSA|DSA)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/knox/container/signapk/SignApk;->stripPattern:Ljava/util/regex/Pattern;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/knox/container/signapk/SignApk;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertSignaturesToString([Lcom/sec/knox/container/signapk/CertSignature;)[Ljava/lang/String;
    .registers 5
    .param p1, "mStringSignatures"    # [Lcom/sec/knox/container/signapk/CertSignature;

    .prologue
    .line 463
    if-nez p1, :cond_4

    .line 464
    const/4 v1, 0x0

    .line 471
    :cond_3
    return-object v1

    .line 466
    :cond_4
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 468
    .local v1, "mSignature":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 469
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sec/knox/container/signapk/CertSignature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private getSignaturesInternal(Ljava/lang/String;)[Lcom/sec/knox/container/signapk/CertSignature;
    .registers 22
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 333
    move-object/from16 v13, p1

    .line 334
    .local v13, "mArchiveSourcePath":Ljava/lang/String;
    const/4 v14, 0x0

    .line 338
    .local v14, "mSignatures":[Lcom/sec/knox/container/signapk/CertSignature;
    const/4 v15, 0x0

    .line 339
    .local v15, "readBuffer":[B
    sget-object v18, Lcom/sec/knox/container/signapk/SignApk;->mSync:Ljava/lang/Object;

    monitor-enter v18

    .line 340
    :try_start_7
    sget-object v16, Lcom/sec/knox/container/signapk/SignApk;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 341
    .local v16, "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v16, :cond_18

    .line 342
    const/16 v17, 0x0

    sput-object v17, Lcom/sec/knox/container/signapk/SignApk;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 343
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v15, v0

    .line 345
    :cond_18
    if-nez v15, :cond_27

    .line 346
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 347
    new-instance v16, Ljava/lang/ref/WeakReference;

    .end local v16    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 349
    .restart local v16    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_27
    monitor-exit v18
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_91

    .line 352
    :try_start_28
    new-instance v10, Ljava/util/jar/JarFile;

    invoke-direct {v10, v13}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 353
    .local v10, "jarFile":Ljava/util/jar/JarFile;
    const/4 v3, 0x0

    .line 355
    .local v3, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 356
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_32
    :goto_32
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_f4

    .line 357
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/jar/JarEntry;

    .line 358
    .local v11, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_32

    .line 361
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "AndroidManifest.xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_57

    .line 362
    const-string v17, "ContainerSignApk"

    const-string v18, "Found AndroidManifest file"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_57
    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "META-INF/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_32

    .line 368
    invoke-static {v10, v11, v15}, Lcom/sec/knox/container/signapk/SignApk;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v12

    .line 370
    .local v12, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v12, :cond_94

    .line 371
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V
    :try_end_8e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_28 .. :try_end_8e} :catch_122
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_8e} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_8e} :catch_169

    .line 375
    const/16 v17, 0x0

    .line 432
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v10    # "jarFile":Ljava/util/jar/JarFile;
    .end local v11    # "je":Ljava/util/jar/JarEntry;
    .end local v12    # "localCerts":[Ljava/security/cert/Certificate;
    :goto_90
    return-object v17

    .line 349
    .end local v16    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :catchall_91
    move-exception v17

    :try_start_92
    monitor-exit v18
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v17

    .line 376
    .restart local v3    # "certs":[Ljava/security/cert/Certificate;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v10    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v11    # "je":Ljava/util/jar/JarEntry;
    .restart local v12    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v16    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_94
    if-nez v3, :cond_98

    .line 377
    move-object v3, v12

    goto :goto_32

    .line 380
    :cond_98
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_99
    :try_start_99
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_32

    .line 381
    const/4 v7, 0x0

    .line 382
    .local v7, "found":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_a2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_b8

    .line 383
    aget-object v17, v3, v8

    if-eqz v17, :cond_ee

    aget-object v17, v3, v8

    aget-object v18, v12, v9

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ee

    .line 385
    const/4 v7, 0x1

    .line 389
    :cond_b8
    if-eqz v7, :cond_c6

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f1

    .line 390
    :cond_c6
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package has mismatched certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    .line 394
    const/16 v17, 0x0

    goto :goto_90

    .line 382
    :cond_ee
    add-int/lit8 v9, v9, 0x1

    goto :goto_a2

    .line 380
    :cond_f1
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 400
    .end local v7    # "found":Z
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "je":Ljava/util/jar/JarEntry;
    .end local v12    # "localCerts":[Ljava/security/cert/Certificate;
    :cond_f4
    invoke-virtual {v10}, Ljava/util/jar/JarFile;->close()V

    .line 402
    sget-object v18, Lcom/sec/knox/container/signapk/SignApk;->mSync:Ljava/lang/Object;

    monitor-enter v18
    :try_end_fa
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_99 .. :try_end_fa} :catch_122
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_fa} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_fa} :catch_169

    .line 403
    :try_start_fa
    sput-object v16, Lcom/sec/knox/container/signapk/SignApk;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 404
    monitor-exit v18
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_11f

    .line 406
    if-eqz v3, :cond_130

    :try_start_ff
    array-length v0, v3

    move/from16 v17, v0

    if-lez v17, :cond_130

    .line 407
    array-length v2, v3

    .line 408
    .local v2, "N":I
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v14, v0, [Lcom/sec/knox/container/signapk/CertSignature;

    .line 410
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_10d
    if-ge v8, v2, :cond_12c

    .line 411
    new-instance v17, Lcom/sec/knox/container/signapk/CertSignature;

    aget-object v18, v3, v8

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/sec/knox/container/signapk/CertSignature;-><init>([B)V

    aput-object v17, v14, v8
    :try_end_11c
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_ff .. :try_end_11c} :catch_122
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_11c} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_11c} :catch_169

    .line 410
    add-int/lit8 v8, v8, 0x1

    goto :goto_10d

    .line 404
    .end local v2    # "N":I
    .end local v8    # "i":I
    :catchall_11f
    move-exception v17

    :try_start_120
    monitor-exit v18
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_11f

    :try_start_121
    throw v17
    :try_end_122
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_121 .. :try_end_122} :catch_122
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_122} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_121 .. :try_end_122} :catch_169

    .line 418
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v10    # "jarFile":Ljava/util/jar/JarFile;
    :catch_122
    move-exception v6

    .line 419
    .local v6, "ex":Ljava/security/cert/CertificateEncodingException;
    const-string v17, "ContainerSignApk"

    invoke-virtual {v6}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "ex":Ljava/security/cert/CertificateEncodingException;
    :cond_12c
    move-object/from16 v17, v14

    .line 432
    goto/16 :goto_90

    .line 414
    .restart local v3    # "certs":[Ljava/security/cert/Certificate;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v10    # "jarFile":Ljava/util/jar/JarFile;
    :cond_130
    :try_start_130
    const-string v17, "ContainerSignApk"

    const-string v18, "Package has no certificates; ignoring!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_130 .. :try_end_137} :catch_122
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_137} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_130 .. :try_end_137} :catch_169

    .line 416
    const/16 v17, 0x0

    goto/16 :goto_90

    .line 421
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v10    # "jarFile":Ljava/util/jar/JarFile;
    :catch_13b
    move-exception v4

    .line 422
    .local v4, "e":Ljava/io/IOException;
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    const/16 v17, 0x0

    goto/16 :goto_90

    .line 426
    .end local v4    # "e":Ljava/io/IOException;
    :catch_169
    move-exception v4

    .line 427
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v17, "ContainerSignApk"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 430
    const/16 v17, 0x0

    goto/16 :goto_90
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 9
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 439
    :goto_6
    const/4 v2, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_54

    .line 441
    const-string v2, "ContainerSignApk"

    const-string v4, "loadCertificates going in while loop"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_17
    .catchall {:try_start_2 .. :try_end_16} :catchall_65

    goto :goto_6

    .line 444
    :catch_17
    move-exception v0

    .line 445
    .local v0, "e":Ljava/io/IOException;
    :try_start_18
    const-string v2, "SecurityHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_18 .. :try_end_4c} :catchall_65

    .line 448
    if-eqz v1, :cond_52

    .line 449
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_6f

    .line 450
    :goto_51
    const/4 v1, 0x0

    :cond_52
    move-object v2, v3

    .line 453
    .end local v0    # "e":Ljava/io/IOException;
    :cond_53
    :goto_53
    return-object v2

    .line 443
    :cond_54
    if-eqz p1, :cond_63

    :try_start_56
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    :goto_5a
    check-cast v2, [Ljava/security/cert/Certificate;
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_17
    .catchall {:try_start_56 .. :try_end_5c} :catchall_65

    .line 448
    if-eqz v1, :cond_53

    .line 449
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_71

    .line 450
    :goto_61
    const/4 v1, 0x0

    goto :goto_53

    :cond_63
    move-object v2, v3

    .line 443
    goto :goto_5a

    .line 448
    :catchall_65
    move-exception v2

    if-eqz v1, :cond_6c

    .line 449
    :try_start_68
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6d

    .line 450
    :goto_6b
    const/4 v1, 0x0

    .line 448
    :cond_6c
    throw v2

    .line 449
    :catch_6d
    move-exception v3

    goto :goto_6b

    .restart local v0    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v2

    goto :goto_51

    .end local v0    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v3

    goto :goto_61
.end method

.method private static readBytes(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 113
    .local v0, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :goto_a
    array-length v3, v0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "num":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    .line 116
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 117
    :cond_16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getSignatures(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/sec/knox/container/signapk/SignApk;->getSignaturesInternal(Ljava/lang/String;)[Lcom/sec/knox/container/signapk/CertSignature;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/knox/container/signapk/SignApk;->convertSignaturesToString([Lcom/sec/knox/container/signapk/CertSignature;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
