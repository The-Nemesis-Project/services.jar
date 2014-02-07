.class public Lcom/lguplus/common_api/permission/PermissionsProxy;
.super Ljava/lang/Object;
.source "PermissionsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;
    }
.end annotation


# static fields
.field static final PERMS_CLS_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl.permission.PermissionsImpl"

.field static final PERMS_PKG_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl"


# instance fields
.field mPerms:Lcom/lguplus/common_api/permission/Permissions;

.field mPkgMgr:Landroid/content/pm/IPackageManager$Stub;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager$Stub;)V
    .registers 3
    .param p1, "pkgMgr"    # Landroid/content/pm/IPackageManager$Stub;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    .line 20
    iput-object p1, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    .line 21
    return-void
.end method

.method private getPerms()V
    .registers 8

    .prologue
    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    const-string v4, "com.lguplus.common_api_impl"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 35
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v3, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v4, "com.lguplus.common_api_impl.permission.PermissionsImpl"

    invoke-virtual {v3, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 37
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lguplus/common_api/permission/Permissions;

    iput-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 41
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_31
    return-void

    .line 38
    :catch_32
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "uplus_common_api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPerms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method


# virtual methods
.method public afterAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 107
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v1, "com.lguplus.common_api_impl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 108
    :cond_d
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Lcom/lguplus/common_api/permission/Permissions;->afterAdd(Ljava/lang/String;I)V

    .line 109
    :cond_1c
    return-void
.end method

.method public beforeAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 18
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 59
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_cd

    if-eqz v12, :cond_87

    .line 60
    const/4 v9, 0x0

    .line 61
    .local v9, "token":Ljava/lang/String;
    const/4 v1, 0x0

    .line 62
    .local v1, "am":Landroid/content/res/AssetManager;
    const/4 v6, 0x0

    .line 64
    .local v6, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_eb
    .catchall {:try_start_9 .. :try_end_e} :catchall_12e

    .line 65
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .local v2, "am":Landroid/content/res/AssetManager;
    :try_start_e
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    .line 66
    .local v4, "cookie":I
    if-eqz v4, :cond_2d

    .line 67
    const-string v12, "assets/uplus_common_api_perm_token.txt"

    invoke-virtual {v2, v4, v12}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 68
    const/16 v12, 0x1000

    new-array v3, v12, [B

    .local v3, "bytes":[B
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 69
    .local v8, "n":I
    new-instance v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v10, v3, v12, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2c} :catch_177
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_173
    .catchall {:try_start_e .. :try_end_2c} :catchall_170

    .end local v9    # "token":Ljava/lang/String;
    .local v10, "token":Ljava/lang/String;
    move-object v9, v10

    .line 78
    .end local v3    # "bytes":[B
    .end local v8    # "n":I
    .end local v10    # "token":Ljava/lang/String;
    .restart local v9    # "token":Ljava/lang/String;
    :cond_2d
    if-eqz v6, :cond_17b

    .line 80
    :try_start_2f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_88
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_cd

    move-object v1, v2

    .line 86
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v4    # "cookie":I
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    :cond_33
    :goto_33
    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 87
    :cond_38
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v9, v14}, Lcom/lguplus/common_api/permission/Permissions;->beforeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "userName":Ljava/lang/String;
    if-eqz v11, :cond_59

    const-string v12, "INVALID-TOKEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_153

    :cond_59
    const/4 v7, 0x1

    .line 89
    .local v7, "isValidToken":Z
    :goto_5a
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v12, :cond_168

    .line 90
    if-eqz v7, :cond_156

    .line 91
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_87

    .line 92
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".uplus_common_api"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 104
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "isValidToken":Z
    .end local v9    # "token":Ljava/lang/String;
    .end local v11    # "userName":Ljava/lang/String;
    :cond_87
    :goto_87
    return-void

    .line 81
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "cookie":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "token":Ljava/lang/String;
    :catch_88
    move-exception v5

    .line 82
    .local v5, "e":Ljava/io/IOException;
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg(finally):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a5} :catch_cd

    move-object v1, v2

    .line 83
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto :goto_33

    .line 72
    .end local v4    # "cookie":I
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a7
    move-exception v12

    .line 78
    :goto_a8
    if-eqz v6, :cond_33

    .line 80
    :try_start_aa
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_cd

    goto :goto_33

    .line 81
    :catch_ae
    move-exception v5

    .line 82
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_af
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg(finally):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_cb} :catch_cd

    goto/16 :goto_33

    .line 101
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "token":Ljava/lang/String;
    :catch_cd
    move-exception v5

    .line 102
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 74
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "token":Ljava/lang/String;
    :catch_eb
    move-exception v5

    .line 75
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_ec
    :try_start_ec
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_ec .. :try_end_108} :catchall_12e

    .line 78
    if-eqz v6, :cond_33

    .line 80
    :try_start_10a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_cd

    goto/16 :goto_33

    .line 81
    :catch_10f
    move-exception v5

    .line 82
    .local v5, "e":Ljava/io/IOException;
    :try_start_110
    const-string v12, "uplus_common_api"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "beforeAddPkg(finally):"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_12c} :catch_cd

    goto/16 :goto_33

    .line 78
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_12e
    move-exception v12

    :goto_12f
    if-eqz v6, :cond_134

    .line 80
    :try_start_131
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_135
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_cd

    .line 83
    :cond_134
    :goto_134
    :try_start_134
    throw v12

    .line 81
    :catch_135
    move-exception v5

    .line 82
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "beforeAddPkg(finally):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    .line 88
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v11    # "userName":Ljava/lang/String;
    :cond_153
    const/4 v7, 0x0

    goto/16 :goto_5a

    .line 94
    .restart local v7    # "isValidToken":Z
    :cond_156
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    const-string v13, ".uplus_common_api$"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    goto/16 :goto_87

    .line 97
    :cond_168
    if-eqz v7, :cond_87

    move-object/from16 v0, p1

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_16e} :catch_cd

    goto/16 :goto_87

    .line 78
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v7    # "isValidToken":Z
    .end local v11    # "userName":Ljava/lang/String;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catchall_170
    move-exception v12

    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto :goto_12f

    .line 74
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catch_173
    move-exception v5

    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_ec

    .line 72
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    :catch_177
    move-exception v12

    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_a8

    .end local v1    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "cookie":I
    :cond_17b
    move-object v1, v2

    .end local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "am":Landroid/content/res/AssetManager;
    goto/16 :goto_33
.end method

.method public checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 48
    :cond_7
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public checkByUid(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByUid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getGids(Ljava/lang/String;)[I
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->getGids(Ljava/lang/String;)[I

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSystemUid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->isSystemUid(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onDelPkg(Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lguplus/common_api/permission/Permissions;->del(Ljava/lang/String;)Z

    .line 113
    :cond_b
    return-void
.end method

.method public reorderApkFiles([Ljava/lang/String;)V
    .registers 7
    .param p1, "files"    # [Ljava/lang/String;

    .prologue
    .line 115
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_20

    .line 116
    aget-object v3, p1, v1

    const-string v4, "LGUPlusLinuxCommonApi.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 117
    aget-object v0, p1, v1

    .line 118
    .local v0, "f":Ljava/lang/String;
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_12
    if-ltz v2, :cond_1d

    .line 119
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    .line 118
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 120
    :cond_1d
    const/4 v3, 0x0

    aput-object v0, p1, v3

    .line 124
    .end local v0    # "f":Ljava/lang/String;
    .end local v2    # "j":I
    :cond_20
    return-void

    .line 115
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
