.class public Lcom/android/server/enterprise/PayloadVerifier;
.super Ljava/lang/Object;
.source "PayloadVerifier.java"


# static fields
.field private static final CLASSES_FILE:Ljava/lang/String; = "classes.dex"

.field public static final ENTERPRISE_PRELOAD_APK:Ljava/lang/String; = "com.sec.enterprise.permissions"

.field private static final LICENSE_FILE:Ljava/lang/String; = "license.dat"

.field private static final MANIFEST_FILE:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final PAYLOAD_BUNDLE_PATH:Ljava/lang/String; = "assets/payload/"

.field private static final PAYLOAD_FILE:Ljava/lang/String; = "sec.android.payload"

.field private static final RESOURCES_FILE:Ljava/lang/String; = "resources.arsc"

.field private static final SPKPath:Ljava/lang/String; = "/data/system/enterprise/vpkp"

.field private static final TAG:Ljava/lang/String; = "PayloadVerifier"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    const/4 v3, 0x0

    .line 415
    .local v3, "enterprisePkg":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 417
    .local v0, "adminPkg":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.enterprise.permissions"

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1b} :catch_3b

    move-result-object v0

    .line 427
    :goto_1c
    if-eqz v3, :cond_70

    if-eqz v0, :cond_70

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_70

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_70

    .line 430
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 431
    .local v6, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_31
    if-ge v4, v5, :cond_55

    aget-object v8, v1, v4

    .line 432
    .local v8, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 422
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :catch_3b
    move-exception v2

    .line 424
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 434
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "arr$":[Landroid/content/pm/Signature;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_55
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 435
    .local v7, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_5e
    if-ge v4, v5, :cond_68

    aget-object v8, v1, v4

    .line 436
    .restart local v8    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 439
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :cond_68
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 440
    const/4 v9, 0x1

    .line 444
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v7    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :goto_6f
    return v9

    :cond_70
    const/4 v9, 0x0

    goto :goto_6f
.end method

.method public static extractLicense(Ljava/lang/String;)[B
    .registers 11
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 206
    .local v4, "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_38
    .catchall {:try_start_3 .. :try_end_8} :catchall_4d

    .line 207
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_8
    const-string v7, "assets/payload/license.dat"

    invoke-virtual {v3, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 209
    .local v5, "je":Ljava/util/jar/JarEntry;
    if-nez v5, :cond_1d

    .line 210
    const/4 v7, 0x0

    new-array v0, v7, [B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_a4
    .catchall {:try_start_8 .. :try_end_13} :catchall_a1

    .line 221
    if-eqz v4, :cond_16

    .line 222
    :try_start_15
    throw v4
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_7d

    .line 227
    :cond_16
    :goto_16
    if-eqz v3, :cond_1b

    .line 228
    :try_start_18
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_86

    :cond_1b
    :goto_1b
    move-object v2, v3

    .line 233
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    :goto_1c
    return-object v0

    .line 211
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :cond_1d
    :try_start_1d
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v7

    long-to-int v6, v7

    .line 212
    .local v6, "size":I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 213
    new-array v0, v6, [B

    .line 214
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_a4
    .catchall {:try_start_1d .. :try_end_2b} :catchall_a1

    move-result v6

    .line 221
    if-eqz v4, :cond_31

    .line 222
    :try_start_2e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_8f

    .line 227
    :cond_31
    :goto_31
    if-eqz v3, :cond_36

    .line 228
    :try_start_33
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_98

    :cond_36
    :goto_36
    move-object v2, v3

    .line 216
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_1c

    .line 217
    .end local v0    # "buf":[B
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catch_38
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    :goto_39
    :try_start_39
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4d

    .line 221
    if-eqz v4, :cond_45

    .line 222
    :try_start_42
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_6b

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    if-eqz v2, :cond_4a

    .line 228
    :try_start_47
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_74

    .line 233
    :cond_4a
    :goto_4a
    new-array v0, v9, [B

    goto :goto_1c

    .line 220
    :catchall_4d
    move-exception v7

    .line 221
    :goto_4e
    if-eqz v4, :cond_53

    .line 222
    :try_start_50
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_59

    .line 227
    :cond_53
    :goto_53
    if-eqz v2, :cond_58

    .line 228
    :try_start_55
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_62

    .line 220
    :cond_58
    :goto_58
    throw v7

    .line 223
    :catch_59
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :catch_62
    move-exception v1

    .line 230
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    :catch_6b
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :catch_74
    move-exception v1

    .line 230
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :catch_7d
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :catch_86
    move-exception v1

    .line 230
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v6    # "size":I
    :catch_8f
    move-exception v1

    .line 224
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :catch_98
    move-exception v1

    .line 230
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    .line 220
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catchall_a1
    move-exception v7

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_4e

    .line 217
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_a4
    move-exception v1

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_39
.end method

.method private static extractPayload(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v4, 0x0

    .line 166
    .local v4, "is":Ljava/io/InputStream;
    :try_start_3
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_67
    .catchall {:try_start_3 .. :try_end_8} :catchall_83

    .line 167
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v5

    .line 169
    .local v5, "je":Ljava/util/jar/JarEntry;
    if-nez v5, :cond_44

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assets/payload/sec.android.payload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_d1
    .catchall {:try_start_8 .. :try_end_37} :catchall_ce

    move-result-object v5

    .line 172
    if-nez v5, :cond_44

    .line 187
    if-eqz v4, :cond_3d

    .line 188
    :try_start_3c
    throw v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_aa

    .line 193
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_42

    .line 194
    :try_start_3f
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_b3

    :cond_42
    :goto_42
    move-object v2, v3

    .line 199
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    :cond_43
    :goto_43
    return-object v7

    .line 176
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :cond_44
    :try_start_44
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    .line 177
    .local v6, "size":I
    invoke-virtual {v3, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 178
    new-array v0, v6, [B

    .line 179
    .local v0, "buf":[B
    if-eqz v4, :cond_55

    .line 180
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 182
    :cond_55
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5a} :catch_d1
    .catchall {:try_start_44 .. :try_end_5a} :catchall_ce

    .line 187
    if-eqz v4, :cond_5f

    .line 188
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_bc

    .line 193
    :cond_5f
    :goto_5f
    if-eqz v3, :cond_64

    .line 194
    :try_start_61
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_c5

    :cond_64
    :goto_64
    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    move-object v7, v8

    .line 182
    goto :goto_43

    .line 183
    .end local v0    # "buf":[B
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catch_67
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/IOException;
    :goto_68
    :try_start_68
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_83

    .line 187
    if-eqz v4, :cond_74

    .line 188
    :try_start_71
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_a1

    .line 193
    :cond_74
    :goto_74
    if-eqz v2, :cond_43

    .line 194
    :try_start_76
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_43

    .line 195
    :catch_7a
    move-exception v1

    .line 196
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43

    .line 186
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_83
    move-exception v7

    .line 187
    :goto_84
    if-eqz v4, :cond_89

    .line 188
    :try_start_86
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8f

    .line 193
    :cond_89
    :goto_89
    if-eqz v2, :cond_8e

    .line 194
    :try_start_8b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_98

    .line 186
    :cond_8e
    :goto_8e
    throw v7

    .line 189
    :catch_8f
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_98
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8e

    .line 189
    :catch_a1
    move-exception v1

    .line 190
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v5    # "je":Ljava/util/jar/JarEntry;
    :catch_aa
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_b3
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[B
    .restart local v6    # "size":I
    :catch_bc
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v7, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c5
    move-exception v1

    .line 196
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "PayloadVerifier"

    const-string v9, ""

    invoke-static {v7, v9, v1}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64

    .line 186
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "je":Ljava/util/jar/JarEntry;
    .end local v6    # "size":I
    :catchall_ce
    move-exception v7

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_84

    .line 183
    .end local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_d1
    move-exception v1

    move-object v2, v3

    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v2    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_68
.end method

.method private static getFileData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "apkFile"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "ipJarFile":Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 123
    .local v5, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_62
    .catchall {:try_start_2 .. :try_end_7} :catchall_92

    .line 124
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .local v4, "ipJarFile":Ljava/util/jar/JarFile;
    :try_start_7
    invoke-virtual {v4, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v6

    .line 125
    .local v6, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v6}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v9

    long-to-int v8, v9

    .line 126
    .local v8, "total_size":I
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 128
    new-array v0, v8, [B

    .line 129
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 130
    .local v1, "count":I
    const/4 v7, 0x0

    .line 132
    .local v7, "read_size":I
    :cond_34
    sub-int v9, v8, v1

    invoke-virtual {v5, v0, v1, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 133
    add-int/2addr v1, v7

    .line 138
    if-gtz v7, :cond_34

    .line 140
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total read size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_56} :catch_d7
    .catchall {:try_start_7 .. :try_end_56} :catchall_d4

    .line 147
    if-eqz v5, :cond_5b

    .line 148
    :try_start_58
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_c2

    .line 153
    :cond_5b
    :goto_5b
    if-eqz v4, :cond_60

    .line 154
    :try_start_5d
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_cb

    :cond_60
    :goto_60
    move-object v3, v4

    .line 159
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "read_size":I
    .end local v8    # "total_size":I
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    :goto_61
    return-object v0

    .line 142
    :catch_62
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    :goto_63
    :try_start_63
    const-string v9, "PayloadVerifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v9, "PayloadVerifier"

    const-string v10, "Check private key"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_63 .. :try_end_86} :catchall_92

    .line 147
    if-eqz v5, :cond_8b

    .line 148
    :try_start_88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_b0

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8b
    :goto_8b
    if-eqz v3, :cond_90

    .line 154
    :try_start_8d
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_b9

    .line 159
    :cond_90
    :goto_90
    const/4 v0, 0x0

    goto :goto_61

    .line 146
    :catchall_92
    move-exception v9

    .line 147
    :goto_93
    if-eqz v5, :cond_98

    .line 148
    :try_start_95
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9e

    .line 153
    :cond_98
    :goto_98
    if-eqz v3, :cond_9d

    .line 154
    :try_start_9a
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a7

    .line 146
    :cond_9d
    :goto_9d
    throw v9

    .line 149
    :catch_9e
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "PayloadVerifier"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_98

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a7
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "PayloadVerifier"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9d

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    :catch_b0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_b9
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    .restart local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v6    # "je":Ljava/util/jar/JarEntry;
    .restart local v7    # "read_size":I
    .restart local v8    # "total_size":I
    :catch_c2
    move-exception v2

    .line 150
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    :catch_cb
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "PayloadVerifier"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60

    .line 146
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "je":Ljava/util/jar/JarEntry;
    .end local v7    # "read_size":I
    .end local v8    # "total_size":I
    :catchall_d4
    move-exception v9

    move-object v3, v4

    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_93

    .line 142
    .end local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    :catch_d7
    move-exception v2

    move-object v3, v4

    .end local v4    # "ipJarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "ipJarFile":Ljava/util/jar/JarFile;
    goto :goto_63
.end method

.method public static getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 400
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "end":I
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 403
    .local v2, "start":I
    if-eq v1, v4, :cond_18

    if-eq v2, v4, :cond_18

    .line 404
    add-int/lit8 v3, v2, 0x1

    :try_start_13
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 408
    :goto_17
    return-object v3

    .line 406
    :cond_18
    const-string v3, "null"
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_17

    .line 407
    :catch_1b
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "null"

    goto :goto_17
.end method

.method private static declared-synchronized getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 363
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "path":Ljava/lang/String;
    const-string v2, "PayloadVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_54

    move-result-object v2

    .line 369
    :goto_50
    monitor-exit v3

    return-object v2

    :cond_52
    const/4 v2, 0x0

    goto :goto_50

    .line 363
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static varargs joinBytes([[B)[B
    .registers 9
    .param p0, "bytes"    # [[B

    .prologue
    .line 106
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    move-object v0, p0

    .local v0, "arr$":[[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v5, :cond_21

    aget-object v1, v0, v4

    .line 108
    .local v1, "b":[B
    if-eqz v1, :cond_11

    array-length v6, v1

    if-nez v6, :cond_14

    .line 107
    :cond_11
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 111
    :cond_14
    :try_start_14
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_11

    .line 112
    :catch_18
    move-exception v3

    .line 113
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "PayloadVerifier"

    const-string v7, ""

    invoke-static {v6, v7, v3}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 116
    .end local v1    # "b":[B
    .end local v3    # "e":Ljava/io/IOException;
    :cond_21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 74
    const/4 v1, 0x0

    .line 78
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_62
    .catchall {:try_start_2 .. :try_end_b} :catchall_a0

    .line 79
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :cond_b
    const/4 v4, 0x0

    :try_start_c
    array-length v5, p2

    invoke-virtual {v2, p2, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 82
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_19} :catch_bd
    .catchall {:try_start_c .. :try_end_19} :catchall_ba

    move-result-object v3

    .line 95
    :cond_1a
    if-eqz v2, :cond_1f

    .line 96
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_b0

    :cond_1f
    :goto_1f
    move-object v1, v2

    .line 102
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_20
    :goto_20
    return-object v3

    .line 83
    :catch_21
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    :goto_22
    :try_start_22
    const-string v4, "PayloadVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_22 .. :try_end_53} :catchall_a0

    .line 95
    if-eqz v1, :cond_20

    .line 96
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_20

    .line 98
    :catch_59
    move-exception v0

    .line 99
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    :goto_5e
    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catch_62
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_63
    :try_start_63
    const-string v4, "PayloadVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_94
    .catchall {:try_start_63 .. :try_end_94} :catchall_a0

    .line 95
    if-eqz v1, :cond_20

    .line 96
    :try_start_96
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_20

    .line 98
    :catch_9a
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    goto :goto_5e

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a0
    move-exception v3

    .line 95
    :goto_a1
    if-eqz v1, :cond_a6

    .line 96
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 94
    :cond_a6
    :goto_a6
    throw v3

    .line 98
    :catch_a7
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a6

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_b0
    move-exception v0

    .line 99
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "PayloadVerifier"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ba
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_a1

    .line 88
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_bd
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_63

    .line 83
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_c0
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_22
.end method

.method public static declared-synchronized removeStoredPublicKeyPath(Ljava/lang/String;)V
    .registers 7
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 392
    const-class v3, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "path":Ljava/lang/String;
    const-string v2, "PayloadVerifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PATH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/enterprise/vpkp/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_42

    .line 397
    :cond_40
    monitor-exit v3

    return-void

    .line 392
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "toApkPath"    # Ljava/lang/String;
    .param p1, "fromApkPath"    # Ljava/lang/String;

    .prologue
    .line 374
    const-class v5, Lcom/android/server/enterprise/PayloadVerifier;

    monitor-enter v5

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getPackageNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "path":Ljava/lang/String;
    const-string v4, "PayloadVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PATH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/vpkp/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v3, "to":Ljava/io/File;
    if-eqz v3, :cond_40

    .line 379
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 382
    :cond_40
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_53

    .line 385
    .local v1, "from":Ljava/io/File;
    :try_start_45
    invoke-static {v1, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4a
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    .line 389
    :goto_48
    monitor-exit v5

    return-void

    .line 386
    :catch_4a
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v4, "PayloadVerifier"

    const-string v6, ""

    invoke-static {v4, v6, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_53

    goto :goto_48

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "from":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "to":Ljava/io/File;
    :catchall_53
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static verify(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 12
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "enterpriseApkPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 305
    .local v5, "storedEnterpriseApkPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 308
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->getStoredPublicKeyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    :try_start_b
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 312
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_16} :catch_23

    .line 317
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_16
    if-nez v1, :cond_3d

    if-nez v5, :cond_3d

    .line 318
    const-string v7, "PayloadVerifier"

    const-string v8, "Enterprise APK Path is NULL , cannot proceed with payload verification."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 356
    :cond_22
    :goto_22
    return v4

    .line 313
    :catch_23
    move-exception v0

    .line 314
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PayloadVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 322
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3d
    const/4 v4, 0x0

    .line 325
    .local v4, "result":Z
    if-eqz v5, :cond_4b

    .line 326
    :try_start_40
    const-string v7, "PayloadVerifier"

    const-string v8, "USING STORED PUBLIC KEY"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {v5, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4a} :catch_6e

    move-result v4

    .line 335
    :cond_4b
    :goto_4b
    if-nez v4, :cond_60

    .line 336
    :try_start_4d
    const-string v7, "PayloadVerifier"

    const-string v8, "USING FIXED PUBLIC KEY"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {p0}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    .line 338
    invoke-static {v1, p0}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 339
    if-eqz v4, :cond_60

    .line 340
    invoke-static {p0, v1}, Lcom/android/server/enterprise/PayloadVerifier;->setStoredPublicKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_60} :catch_78

    .line 348
    :cond_60
    if-nez v4, :cond_22

    .line 349
    :try_start_62
    const-string v7, "PayloadVerifier"

    const-string v8, "COMPARING ENTERPRISE SIGNATURE"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p0, p1}, Lcom/android/server/enterprise/PayloadVerifier;->compareEnterpriseSignature(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6c} :catch_82

    move-result v4

    goto :goto_22

    .line 329
    :catch_6e
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    const/4 v4, 0x0

    goto :goto_4b

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_78
    move-exception v0

    .line 343
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "PayloadVerifier"

    const-string v8, ""

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v6

    .line 344
    goto :goto_22

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_82
    move-exception v0

    .line 353
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "PayloadVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 354
    goto :goto_22
.end method

.method private static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .param p0, "enterpriseApkPath"    # Ljava/lang/String;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v7, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 262
    .local v7, "jarFile":Ljava/util/jar/JarFile;
    const/16 v13, 0x2000

    new-array v10, v13, [B

    .line 263
    .local v10, "readBuffer":[B
    const-string v13, "AndroidManifest.xml"

    invoke-virtual {v7, v13}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    invoke-static {v7, v13, v10}, Lcom/android/server/enterprise/PayloadVerifier;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 266
    .local v2, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 268
    if-nez v2, :cond_1c

    .line 269
    const/4 v13, 0x0

    .line 298
    :goto_1b
    return v13

    .line 272
    :cond_1c
    const-string v13, "AndroidManifest.xml"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    .line 273
    .local v9, "manifestData":[B
    const-string v13, "classes.dex"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 274
    .local v3, "classesData":[B
    const-string v13, "resources.arsc"

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/android/server/enterprise/PayloadVerifier;->getFileData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 275
    .local v11, "rsrcData":[B
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/PayloadVerifier;->extractLicense(Ljava/lang/String;)[B

    move-result-object v8

    .line 276
    .local v8, "licenseData":[B
    const/4 v13, 0x4

    new-array v13, v13, [[B

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v11, v13, v14

    const/4 v14, 0x3

    aput-object v8, v13, v14

    invoke-static {v13}, Lcom/android/server/enterprise/PayloadVerifier;->joinBytes([[B)[B

    move-result-object v12

    .line 277
    .local v12, "totalData":[B
    const/4 v13, 0x0

    aget-object v1, v2, v13

    .line 278
    .local v1, "cert":Ljava/security/cert/Certificate;
    const/4 v6, 0x1

    .line 279
    .local v6, "index":I
    const/4 v5, 0x0

    .line 281
    .local v5, "extractedb64Signature":Ljava/lang/String;
    :goto_50
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/server/enterprise/PayloadVerifier;->extractPayload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f2

    .line 282
    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") Size : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Extracted Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v13, 0x0

    invoke-static {v5, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 286
    .local v4, "extractedSignature":[B
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-static {v12, v4, v13}, Lcom/android/server/enterprise/PayloadVerifier;->verify([B[BLjava/security/PublicKey;)Z

    move-result v13

    if-eqz v13, :cond_d0

    .line 287
    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Verification SUCCESS for Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v13, 0x1

    goto/16 :goto_1b

    .line 290
    :cond_d0
    const-string v13, "PayloadVerifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature Verification FAILURE for Payload("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    add-int/lit8 v6, v6, 0x1

    .line 293
    goto/16 :goto_50

    .line 295
    .end local v4    # "extractedSignature":[B
    :cond_f2
    if-nez v5, :cond_fb

    .line 296
    const-string v13, "PayloadVerifier"

    const-string v14, "No more payloads"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_fb
    const/4 v13, 0x0

    goto/16 :goto_1b
.end method

.method private static verify([B[BLjava/security/PublicKey;)Z
    .registers 8
    .param p0, "data"    # [B
    .param p1, "inSignature"    # [B
    .param p2, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 243
    .local v1, "ret":Z
    :try_start_1
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 244
    .local v2, "verify":Ljava/security/Signature;
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 245
    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 246
    invoke-virtual {v2, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_1b
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_10} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_2d

    move-result v1

    .line 256
    .end local v2    # "verify":Ljava/security/Signature;
    :goto_11
    return v1

    .line 247
    :catch_12
    move-exception v0

    .line 248
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 249
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1b
    move-exception v0

    .line 250
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 251
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_24
    move-exception v0

    .line 252
    .local v0, "e":Ljava/security/SignatureException;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 253
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_2d
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PayloadVerifier"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
