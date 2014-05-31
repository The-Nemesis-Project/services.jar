.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$1;,
        Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static final MMAC_DENY:Ljava/lang/String; = "MMAC_DENIAL:"

.field private static final MMAC_ENFORCE_PROPERTY:Ljava/lang/String; = "persist.mmac.enforce"

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field private static final PKG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field private static containerIDTable:[I

.field private static final mContainerAllowPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

.field private static final mNoAuditPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 86
    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    .line 97
    sput-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "security/spota/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/security/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .registers 21
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_6
    if-ge v5, v13, :cond_44c

    aget-object v15, v2, v5

    .line 335
    .local v15, "s":Landroid/content/pm/Signature;
    if-nez v15, :cond_f

    .line 334
    :cond_c
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 338
    :cond_f
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 339
    const-string v17, "SELinuxMMAC"

    const-string v18, "assignSeinfoValue, matching key found"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 341
    .local v16, "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v16, :cond_443

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_443

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 347
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assignSeinfoValue , step 2, pkgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", seinfo:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25b

    .line 352
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 354
    .local v4, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget v0, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 366
    .end local v4    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_106
    :goto_106
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a1

    .line 367
    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 368
    .local v3, "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    check-cast v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .line 370
    .restart local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->certs:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16d

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 374
    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16d

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 378
    :cond_16d
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assignSeinfoValue, step 3, pkgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", seinfo:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v3    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    :cond_1a1
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d7

    .line 384
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 386
    .local v14, "noAuditKey":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d7

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isNoAudit:B

    .line 390
    .end local v14    # "noAuditKey":Ljava/lang/String;
    :cond_1d7
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "assignSeinfoValue, step 4, pkgName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", seinfo:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v17, "platform"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_227

    const-string v17, "shared"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_442

    :cond_227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_442

    .line 398
    const/4 v7, 0x0

    .line 399
    .local v7, "isProvider":Z
    const/4 v9, 0x0

    .line 400
    .local v9, "isSyncer":Z
    const/4 v8, 0x0

    .line 401
    .local v8, "isProxy":Z
    const/4 v6, 0x0

    .line 403
    .local v6, "isFileCopier":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 404
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v12, :cond_442

    .line 405
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 406
    .local v10, "it":Ljava/util/Iterator;
    :cond_243
    :goto_243
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2e4

    .line 407
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 408
    .local v11, "key":Ljava/lang/String;
    const-string v17, "RCPProviderName_"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2bd

    .line 409
    const/4 v7, 0x1

    goto :goto_243

    .line 357
    .end local v6    # "isFileCopier":Z
    .end local v7    # "isProvider":Z
    .end local v8    # "isProxy":Z
    .end local v9    # "isSyncer":Z
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_25b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "sec_container_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_106

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_106

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const-string v18, "container"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto/16 :goto_106

    .line 410
    .restart local v6    # "isFileCopier":Z
    .restart local v7    # "isProvider":Z
    .restart local v8    # "isProxy":Z
    .restart local v9    # "isSyncer":Z
    .restart local v10    # "it":Ljava/util/Iterator;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2bd
    const-string v17, "RCPSyncerName_"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2ca

    .line 411
    const/4 v9, 0x1

    goto/16 :goto_243

    .line 412
    :cond_2ca
    const-string v17, "proxyName"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2d7

    .line 413
    const/4 v8, 0x1

    goto/16 :goto_243

    .line 414
    :cond_2d7
    const-string v17, "rcpFileCopier"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_243

    .line 416
    const/4 v6, 0x1

    goto/16 :goto_243

    .line 421
    .end local v11    # "key":Ljava/lang/String;
    :cond_2e4
    if-nez v7, :cond_2ec

    if-nez v9, :cond_2ec

    if-nez v8, :cond_2ec

    if-eqz v6, :cond_442

    .line 423
    :cond_2ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 425
    if-eqz v7, :cond_342

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 430
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as a Provider Agent App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_342
    if-eqz v9, :cond_38a

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 440
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as a Syncer Agent App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_38a
    if-eqz v8, :cond_3fa

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 452
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as a Proxy Agent App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_3fa
    if-eqz v6, :cond_442

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    .line 464
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " registered as an RCP File Copier App."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v6    # "isFileCopier":Z
    .end local v7    # "isProvider":Z
    .end local v8    # "isProxy":Z
    .end local v9    # "isSyncer":Z
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "s":Landroid/content/pm/Signature;
    .end local v16    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_442
    :goto_442
    return-void

    .line 474
    .restart local v15    # "s":Landroid/content/pm/Signature;
    .restart local v16    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_443
    const-string v17, "SELinuxMMAC"

    const-string v18, "Install policy instance is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 480
    .end local v15    # "s":Landroid/content/pm/Signature;
    .end local v16    # "sigSeContainerInfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_44c
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_47f

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_442

    .line 487
    :cond_47f
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_507

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    goto/16 :goto_442

    .line 495
    :cond_507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x3ff

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->category:I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-byte v0, v1, Landroid/content/pm/ApplicationInfo;->isContainerAllowed:B

    goto/16 :goto_442
.end method

.method protected static createMyContainerID()I
    .registers 4

    .prologue
    .line 163
    const-string v2, "container"

    monitor-enter v2

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1a

    .line 165
    :try_start_8
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    aget v1, v1, v0

    if-nez v1, :cond_17

    .line 166
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    const/4 v3, 0x1

    aput v3, v1, v0

    .line 167
    add-int/lit16 v1, v0, 0xc9

    monitor-exit v2

    .line 170
    :goto_16
    return v1

    .line 164
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 170
    :cond_1a
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_16

    .line 171
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private static determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .registers 44
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "notInsidePackageTag"    # Z
    .param p2, "certs"    # Ljava/lang/String;
    .param p3, "existingPolicy"    # Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 783
    .local v3, "denyPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 785
    .local v10, "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 788
    .local v4, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v32

    .line 789
    .local v32, "outerDepth":I
    const/16 v20, 0x0

    .line 790
    .local v20, "allowAll":Z
    const/16 v29, 0x0

    .line 791
    .local v29, "hasContainerAllowCategory":Z
    const/4 v5, 0x0

    .line 792
    .local v5, "seinfo":Ljava/lang/String;
    const/4 v6, -0x1

    .line 793
    .local v6, "seandroidCategory":I
    const/4 v7, 0x0

    .line 794
    .local v7, "seandroidAllowCategory":Ljava/lang/String;
    const/4 v8, 0x0

    .line 796
    .local v8, "isContainerApp":Z
    :cond_1b
    :goto_1b
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v39

    .local v39, "type":I
    const/4 v9, 0x1

    move/from16 v0, v39

    if-eq v0, v9, :cond_326

    const/4 v9, 0x3

    move/from16 v0, v39

    if-ne v0, v9, :cond_31

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move/from16 v0, v32

    if-le v9, v0, :cond_326

    .line 797
    :cond_31
    const/4 v9, 0x3

    move/from16 v0, v39

    if-eq v0, v9, :cond_1b

    const/4 v9, 0x4

    move/from16 v0, v39

    if-eq v0, v9, :cond_1b

    .line 801
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v37

    .line 802
    .local v37, "tagName":Ljava/lang/String;
    const-string v9, "seinfo"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 803
    const/4 v9, 0x0

    const-string/jumbo v11, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 804
    .local v36, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 805
    move-object/from16 v5, v36

    .line 811
    :goto_5b
    const/4 v9, 0x0

    const-string v11, "category"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 813
    .local v23, "categoryValue":Ljava/lang/String;
    if-eqz v23, :cond_a1

    .line 815
    :try_start_66
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_69} :catch_98

    move-result v6

    .line 824
    :goto_6a
    const/4 v9, 0x0

    const-string v11, "allowcategory"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 826
    .local v21, "allowCategoryValue":Ljava/lang/String;
    if-eqz v21, :cond_ab

    .line 827
    move-object/from16 v7, v21

    .line 940
    .end local v21    # "allowCategoryValue":Ljava/lang/String;
    .end local v23    # "categoryValue":Ljava/lang/String;
    .end local v36    # "seinfoValue":Ljava/lang/String;
    :cond_77
    :goto_77
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1b

    .line 807
    .restart local v36    # "seinfoValue":Ljava/lang/String;
    :cond_7b
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<seinfo> without value at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 816
    .restart local v23    # "categoryValue":Ljava/lang/String;
    :catch_98
    move-exception v28

    .line 817
    .local v28, "e":Ljava/lang/NumberFormatException;
    const-string v9, "SELinuxMMAC"

    const-string v11, " Category value is incorrect"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 820
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :cond_a1
    const/16 v6, 0x3ff

    .line 821
    const-string v9, "SELinuxMMAC"

    const-string v11, "The default (for untrusted app) category value is 1023"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 829
    .restart local v21    # "allowCategoryValue":Ljava/lang/String;
    :cond_ab
    const-string v7, "0,501-1023"

    .line 830
    const-string v9, "SELinuxMMAC"

    const-string v11, "The default (for untrusted app) allowcategory value is 0,501-1023"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 834
    .end local v21    # "allowCategoryValue":Ljava/lang/String;
    .end local v23    # "categoryValue":Ljava/lang/String;
    .end local v36    # "seinfoValue":Ljava/lang/String;
    :cond_b5
    const-string v9, "container"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 835
    const/4 v9, 0x0

    const-string/jumbo v11, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 836
    .local v27, "containerflag":Ljava/lang/String;
    if-eqz v27, :cond_77

    const-string/jumbo v9, "true"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 837
    const/4 v8, 0x1

    goto :goto_77

    .line 839
    .end local v27    # "containerflag":Ljava/lang/String;
    :cond_d8
    const-string v9, "allow-permission"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_111

    .line 840
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 841
    .local v33, "permName":Ljava/lang/String;
    if-eqz v33, :cond_f3

    .line 842
    move-object/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 844
    :cond_f3
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<allow-permission> without name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 848
    .end local v33    # "permName":Ljava/lang/String;
    :cond_111
    const-string v9, "deny-permission"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14b

    .line 849
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 850
    .restart local v33    # "permName":Ljava/lang/String;
    if-eqz v33, :cond_12d

    .line 851
    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_77

    .line 853
    :cond_12d
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<deny-permission> without name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 857
    .end local v33    # "permName":Ljava/lang/String;
    :cond_14b
    const-string v9, "allow-all"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_159

    .line 858
    const/16 v20, 0x1

    goto/16 :goto_77

    .line 859
    :cond_159
    const-string v9, "service"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e5

    .line 860
    new-instance v26, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 861
    .local v26, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 862
    .local v34, "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "category"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 863
    .local v22, "category":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 864
    .local v31, "innerSeinfo":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "allowcategory"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 866
    .local v30, "innerAllowCategory":Ljava/lang/String;
    if-nez v30, :cond_193

    .line 867
    const-string v30, "0,501-1023"

    .line 869
    :cond_193
    if-eqz v34, :cond_77

    if-eqz v22, :cond_77

    .line 871
    :try_start_197
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v26

    iput v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_19f
    .catch Ljava/lang/NumberFormatException; {:try_start_197 .. :try_end_19f} :catch_1b8

    .line 876
    :goto_19f
    if-eqz v31, :cond_1d4

    .line 877
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    .line 878
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 879
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_77

    .line 872
    :catch_1b8
    move-exception v28

    .line 873
    .restart local v28    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not define correct category."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19f

    .line 880
    .end local v28    # "e":Ljava/lang/NumberFormatException;
    :cond_1d4
    if-eqz v5, :cond_77

    .line 881
    move-object/from16 v0, v26

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 882
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_77

    .line 885
    .end local v22    # "category":Ljava/lang/String;
    .end local v26    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v30    # "innerAllowCategory":Ljava/lang/String;
    .end local v31    # "innerSeinfo":Ljava/lang/String;
    .end local v34    # "pkgName":Ljava/lang/String;
    :cond_1e5
    const-string v9, "containerallowpackage"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a1

    .line 886
    new-instance v25, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v9}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 887
    .local v25, "containerAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 888
    .restart local v34    # "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "containerallowcategory"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 890
    .local v24, "contAllowCat":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v11, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 892
    .local v38, "trustInnerSeinfo":Ljava/lang/String;
    if-eqz v34, :cond_77

    if-eqz p2, :cond_77

    .line 893
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->certs:Ljava/lang/String;

    .line 894
    if-eqz v24, :cond_27b

    .line 895
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    .line 899
    :goto_224
    if-eqz v38, :cond_282

    .line 900
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    .line 901
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is trusted, seinfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_24c
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " trusted, trusted by category: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/16 v29, 0x1

    goto/16 :goto_77

    .line 897
    :cond_27b
    const-string v9, "501-1023"

    move-object/from16 v0, v25

    iput-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_224

    .line 904
    :cond_282
    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->seinfo:Ljava/lang/String;

    .line 905
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is trusted, seinfo is outer seinfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24c

    .line 914
    .end local v24    # "contAllowCat":Ljava/lang/String;
    .end local v25    # "containerAllowPackageInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    .end local v34    # "pkgName":Ljava/lang/String;
    .end local v38    # "trustInnerSeinfo":Ljava/lang/String;
    :cond_2a1
    const-string v9, "dontaudit"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2dd

    .line 915
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 917
    .restart local v34    # "pkgName":Ljava/lang/String;
    if-eqz v34, :cond_77

    if-eqz p2, :cond_77

    .line 918
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " noAudit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 921
    .end local v34    # "pkgName":Ljava/lang/String;
    :cond_2dd
    const-string v9, "package"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_77

    if-eqz p1, :cond_77

    .line 922
    const/4 v9, 0x0

    const-string v11, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 923
    .restart local v34    # "pkgName":Ljava/lang/String;
    if-eqz v34, :cond_308

    .line 924
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v11, v12}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v35

    .line 926
    .local v35, "policyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v35, :cond_1b

    .line 927
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    .line 935
    .end local v35    # "policyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_308
    const-string v9, "SELinuxMMAC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<package> inner tag without name at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 945
    .end local v34    # "pkgName":Ljava/lang/String;
    .end local v37    # "tagName":Ljava/lang/String;
    :cond_326
    if-eqz p3, :cond_33a

    if-eqz v29, :cond_33a

    .line 946
    new-instance v9, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p3

    iput-object v9, v0, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->trustedPackageNameList:Ljava/util/ArrayList;

    .line 985
    .end local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p3    # "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :goto_339
    return-object p3

    .line 952
    .restart local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p3    # "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_33a
    const/4 v2, 0x0

    .line 953
    .local v2, "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_365

    .line 954
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    new-instance v9, Ljava/util/ArrayList;

    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v11, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 981
    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_35c
    :goto_35c
    if-eqz v8, :cond_362

    if-eqz v2, :cond_362

    .line 982
    sput-object v2, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    :cond_362
    move-object/from16 p3, v2

    .line 985
    goto :goto_339

    .line 959
    .restart local v10    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_365
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_391

    .line 960
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    new-instance v16, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v17, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v17}, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_35c

    .line 965
    :cond_391
    if-eqz v20, :cond_3bc

    .line 966
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v12, 0x0

    new-instance v18, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v19, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v2

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_35c

    .line 970
    :cond_3bc
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_35c

    .line 975
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v12, 0x0

    new-instance v18, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v19, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v2

    move-object v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto/16 :goto_35c
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 9
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 288
    const-string v5, "SELinuxMMAC"

    const-string v6, "findMacPermEntry_enter"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "existingInstallPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v2, 0x0

    .line 291
    .local v2, "foundAppInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, p0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "newSig":Landroid/content/pm/Signature;
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 293
    const-string v5, "SELinuxMMAC"

    const-string v6, "findMacPermEntry, signature matched."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "existingInstallPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 295
    .restart local v1    # "existingInstallPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v1, :cond_b3

    if-eqz p1, :cond_b3

    .line 296
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    .end local v2    # "foundAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {v2}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 297
    .restart local v2    # "foundAppInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->category:I

    iput v5, v2, Landroid/content/pm/ApplicationInfo;->category:I

    .line 298
    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->allowCategory:Ljava/lang/String;

    iput-object v5, v2, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 299
    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v5, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 301
    if-eqz p1, :cond_51

    const-string v5, "sec_container_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 304
    const-string v5, "container"

    iput-object v5, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 307
    :cond_51
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 308
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    invoke-direct {v0, v4}, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 309
    .local v0, "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;

    .line 312
    .restart local v0    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v4, v2, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 317
    .end local v0    # "containerAllowPackage":Lcom/android/server/pm/SELinuxMMAC$ContainerAllowPackageInfo;
    :goto_6a
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 318
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v4, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 320
    :cond_7e
    const-string v4, "SELinuxMMAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findMacPermEntry, entry found, packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", seinfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allowContCat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 329
    :goto_af
    return-object v4

    .line 314
    :cond_b0
    iput-object v4, v2, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_6a

    .line 327
    :cond_b3
    const-string v5, "SELinuxMMAC"

    const-string v6, "findMacPermEntry, signature did not match existing entries"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af
.end method

.method private static flushInstallPolicy()V
    .registers 3

    .prologue
    .line 119
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 120
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 121
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 122
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerAllowPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 123
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    const/16 v1, 0x12c

    if-ge v0, v1, :cond_24

    .line 125
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 127
    :cond_24
    return-void
.end method

.method protected static getAllPackageNamefromMyContainer()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 193
    const-string v7, "container"

    monitor-enter v7

    .line 194
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v4, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 196
    .local v5, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 198
    .local v3, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 199
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v0, v6, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    .line 200
    .local v0, "category":I
    const/16 v6, 0xc9

    if-lt v0, v6, :cond_18

    const/16 v6, 0x1f5

    if-ge v0, v6, :cond_18

    .line 202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 209
    .end local v0    # "category":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v5    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    :catchall_3c
    move-exception v6

    monitor-exit v7
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v6

    .line 205
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v5    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_48

    .line 206
    const/4 v6, 0x0

    monitor-exit v7

    .line 208
    :goto_47
    return-object v6

    :cond_48
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    monitor-exit v7
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_3c

    goto :goto_47
.end method

.method public static getEnforcingMode()Z
    .registers 2

    .prologue
    .line 511
    const-string v0, "persist.mmac.enforce"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static getMyContainerIDfromPackageName(Ljava/lang/String;)I
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v2, "container"

    monitor-enter v2

    .line 214
    :try_start_3
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 215
    .local v0, "myContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    if-eqz v0, :cond_1d

    iget v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v3, 0xc9

    if-lt v1, v3, :cond_1d

    iget v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v3, 0x1f5

    if-ge v1, v3, :cond_1d

    .line 219
    iget v1, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v2

    .line 221
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_1c

    .line 222
    .end local v0    # "myContainerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, -0x1

    .line 143
    .local v0, "category":I
    if-eqz p0, :cond_1f

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 144
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 145
    .local v2, "dotIndex":I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 146
    .local v1, "categoryStartIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "strCategory":Ljava/lang/String;
    :try_start_1b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result v0

    .line 154
    .end local v1    # "categoryStartIndex":I
    .end local v2    # "dotIndex":I
    .end local v4    # "strCategory":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v0

    .line 150
    .restart local v1    # "categoryStartIndex":I
    .restart local v2    # "dotIndex":I
    .restart local v4    # "strCategory":Ljava/lang/String;
    :catch_20
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define category."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method protected static getPackageNamefromMyContainerID(I)[Ljava/lang/String;
    .registers 8
    .param p0, "containerID"    # I

    .prologue
    .line 175
    const-string v6, "container"

    monitor-enter v6

    .line 176
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v3, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 178
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    sget-object v5, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 180
    .local v2, "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v5, v5, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-ne v5, p0, :cond_18

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 189
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .end local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    :catchall_36
    move-exception v5

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v5

    .line 185
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;>;"
    .restart local v3    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_42

    .line 186
    const/4 v5, 0x0

    monitor-exit v6

    .line 188
    :goto_41
    return-object v5

    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_36

    goto :goto_41
.end method

.method public static isKnoxKey([Landroid/content/pm/Signature;)Z
    .registers 7
    .param p0, "cert"    # [Landroid/content/pm/Signature;

    .prologue
    .line 232
    array-length v2, p0

    .line 233
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/String;

    .line 235
    .local v3, "pubkeys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_24

    .line 236
    :try_start_6
    new-instance v4, Ljava/lang/String;

    aget-object v5, p0, v1

    invoke-virtual {v5}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v1
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_17} :catch_1a

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 238
    :catch_1a
    move-exception v0

    .line 239
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v4, "SELinuxMMAC"

    const-string v5, "isKnoxKey check causes CertificateException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v4, 0x0

    .line 242
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_23
    return v4

    :cond_24
    invoke-static {v3}, Lcom/android/server/pm/SELinuxMMAC;->isKnoxKey([Ljava/lang/String;)Z

    move-result v4

    goto :goto_23
.end method

.method public static isKnoxKey([Ljava/lang/String;)Z
    .registers 15
    .param p0, "pubkeys"    # [Ljava/lang/String;

    .prologue
    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, "ret":Z
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 248
    .local v11, "signatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/Signature;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .local v5, "i$":I
    :goto_b
    if-ge v5, v6, :cond_54

    aget-object v7, v1, v5

    .line 249
    .local v7, "pubkey":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 250
    .local v0, "actualPublicKey":[B
    const/4 v3, 0x0

    .line 251
    .local v3, "expectedPublicKey":[B
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/Signature;

    .line 253
    .local v10, "signature":Landroid/content/pm/Signature;
    :try_start_24
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_2b} :catch_4b

    move-result-object v3

    .line 258
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 259
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 261
    .local v9, "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    iget-object v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_46

    iget-boolean v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v12, :cond_47

    .line 263
    :cond_46
    const/4 v8, 0x1

    .line 248
    .end local v9    # "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :cond_47
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_b

    .line 254
    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    .restart local v10    # "signature":Landroid/content/pm/Signature;
    :catch_4b
    move-exception v2

    .line 255
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v12, "SELinuxMMAC"

    const-string v13, "isKnoxKey check causes CertificateException"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v8, 0x0

    .line 269
    .end local v0    # "actualPublicKey":[B
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "expectedPublicKey":[B
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "pubkey":Ljava/lang/String;
    .end local v8    # "ret":Z
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :cond_54
    return v8
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "seInfo"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static passInstallPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z
    .registers 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x0

    .line 1191
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_2a

    aget-object v5, v0, v1

    .line 1192
    .local v5, "s":Landroid/content/pm/Signature;
    if-nez v5, :cond_e

    .line 1191
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1197
    :cond_e
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1198
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1199
    .local v4, "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1200
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1205
    .local v6, "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1243
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v5    # "s":Landroid/content/pm/Signature;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_29
    :goto_29
    return v3

    .line 1211
    :cond_2a
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1212
    const/4 v3, 0x0

    .line 1213
    .local v3, "passed":Z
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1214
    .restart local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1215
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1221
    .restart local v6    # "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_29

    .line 1227
    .end local v3    # "passed":Z
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_51
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 1228
    const/4 v3, 0x0

    .line 1229
    .restart local v3    # "passed":Z
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 1230
    .restart local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1231
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1237
    .restart local v6    # "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_29

    .line 1243
    .end local v3    # "passed":Z
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_74
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static readInstallPolicy()Z
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .registers 4
    .param p0, "policyFile"    # Ljava/io/File;

    .prologue
    .line 533
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readInstallPolicy([Ljava/io/File;)Z
    .registers 29
    .param p0, "policyFiles"    # [Ljava/io/File;

    .prologue
    .line 538
    const/16 v16, 0x0

    .line 539
    .local v16, "policyFile":Ljava/io/FileReader;
    const/16 v18, 0x0

    .line 540
    .local v18, "priorityPolicyFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 541
    .local v9, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v11

    .line 542
    .local v11, "index":I
    packed-switch v11, :pswitch_data_418

    .line 607
    :cond_c
    :goto_c
    if-nez v16, :cond_116

    .line 608
    const-string v24, "SELinuxMMAC"

    const-string v25, "MMAC install disabled."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v24, 0x0

    .line 774
    :goto_17
    return v24

    .line 552
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .local v17, "policyFile":Ljava/io/FileReader;
    :catch_18
    move-exception v6

    move-object/from16 v16, v17

    .line 553
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_1b
    :try_start_1b
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Couldn\'t find install policy "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, p0, v9

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_409

    .line 557
    if-eqz v16, :cond_3e

    .line 558
    :try_start_3b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3e8

    .line 564
    :cond_3e
    :goto_3e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v16

    .line 545
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :goto_42
    if-nez v17, :cond_40f

    if-eqz p0, :cond_40f

    aget-object v24, p0, v9

    if-eqz v24, :cond_40f

    .line 547
    :try_start_4a
    new-instance v16, Ljava/io/FileReader;

    aget-object v24, p0, v9

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_55} :catch_18
    .catchall {:try_start_4a .. :try_end_55} :catchall_79

    .line 548
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :try_start_55
    aget-object v18, p0, v9

    .line 549
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Load mac_permissions.xml policy "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, p0, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_71} :catch_40c
    .catchall {:try_start_55 .. :try_end_71} :catchall_409

    .line 557
    if-eqz v16, :cond_c

    .line 558
    :try_start_73
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_c

    .line 560
    :catch_77
    move-exception v24

    goto :goto_c

    .line 556
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :catchall_79
    move-exception v24

    move-object/from16 v16, v17

    .line 557
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_7c
    if-eqz v16, :cond_81

    .line 558
    :try_start_7e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_3e5

    .line 556
    :cond_81
    :goto_81
    throw v24

    .line 571
    :pswitch_82
    :try_start_82
    new-instance v17, Ljava/io/FileReader;

    add-int/lit8 v24, v11, -0x1

    aget-object v24, p0, v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_8f} :catch_97

    .line 572
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    add-int/lit8 v24, v11, -0x1

    :try_start_91
    aget-object v18, p0, v24
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_93} :catch_406

    move-object/from16 v16, v17

    .line 574
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_c

    .line 575
    :catch_97
    move-exception v6

    move-object/from16 v17, v16

    .line 576
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :goto_9a
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Couldn\'t find install policy "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v11, -0x1

    aget-object v26, p0, v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    if-nez v17, :cond_10a

    .line 580
    const/16 v19, 0x0

    .line 582
    .local v19, "selinux_new_priority":I
    :try_start_be
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_compare_spd_ram()I

    move-result v19

    .line 583
    new-instance v16, Ljava/io/FileReader;

    aget-object v24, p0, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_cd} :catch_d9
    .catchall {:try_start_be .. :try_end_cd} :catchall_101

    .line 584
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :try_start_cd
    aget-object v18, p0, v19
    :try_end_cf
    .catch Ljava/io/FileNotFoundException; {:try_start_cd .. :try_end_cf} :catch_403
    .catchall {:try_start_cd .. :try_end_cf} :catchall_400

    .line 592
    if-eqz v16, :cond_c

    .line 593
    :try_start_d1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_c

    .line 595
    :catch_d6
    move-exception v24

    goto/16 :goto_c

    .line 587
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :catch_d9
    move-exception v6

    move-object/from16 v16, v17

    .line 588
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_dc
    :try_start_dc
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Couldn\'t find install policy "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, p0, v19

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_dc .. :try_end_fa} :catchall_400

    .line 592
    if-eqz v16, :cond_c

    .line 593
    :try_start_fc
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_d6

    goto/16 :goto_c

    .line 591
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :catchall_101
    move-exception v24

    move-object/from16 v16, v17

    .line 592
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_104
    if-eqz v16, :cond_109

    .line 593
    :try_start_106
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_3f1

    .line 591
    :cond_109
    :goto_109
    throw v24

    .line 601
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .end local v19    # "selinux_new_priority":I
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :cond_10a
    :try_start_10a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_111

    move-object/from16 v16, v17

    .line 603
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_c

    .line 602
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :catch_111
    move-exception v24

    move-object/from16 v16, v17

    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_c

    .line 612
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :cond_116
    :try_start_116
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_3e0

    .line 618
    :goto_119
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v12, v0, [Ljava/io/File;

    const/16 v24, 0x0

    aput-object v18, v12, v24

    const/16 v24, 0x1

    new-instance v25, Ljava/io/File;

    const-string v26, "/data/security/good/mac_permissions.xml"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v25, v12, v24

    const/16 v24, 0x2

    new-instance v25, Ljava/io/File;

    const-string v26, "/data/security/stig/mac_permissions.xml"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v25, v12, v24

    const/16 v24, 0x3

    new-instance v25, Ljava/io/File;

    const-string v26, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v25, v12, v24

    const/16 v24, 0x4

    const/16 v25, 0x0

    aput-object v25, v12, v24

    .line 623
    .local v12, "macPermFiles":[Ljava/io/File;
    const/4 v4, 0x0

    .line 625
    .local v4, "cnt":I
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getEnforcingMode()Z

    move-result v7

    .line 626
    .local v7, "enforcing":Z
    if-eqz v7, :cond_1cd

    const-string v13, "enforcing"

    .line 627
    .local v13, "mode":Ljava/lang/String;
    :goto_153
    const/4 v3, 0x0

    .line 628
    .local v3, "cert":Ljava/lang/String;
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MMAC install starting in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mode."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 632
    :goto_177
    aget-object v24, v12, v4

    if-eqz v24, :cond_384

    .line 633
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Read and parse file: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v12, v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :try_start_199
    new-instance v17, Ljava/io/FileReader;

    aget-object v24, v12, v4

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1a4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_199 .. :try_end_1a4} :catch_3fd
    .catch Ljava/io/FileNotFoundException; {:try_start_199 .. :try_end_1a4} :catch_3fa
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_1a4} :catch_3f7
    .catchall {:try_start_199 .. :try_end_1a4} :catchall_3f4

    .line 637
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :try_start_1a4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 638
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 640
    const-string v24, "policy"

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 642
    :cond_1b4
    :goto_1b4
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 643
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1ba
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a4 .. :try_end_1ba} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_1a4 .. :try_end_1ba} :catch_250
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1ba} :catch_29e
    .catchall {:try_start_1a4 .. :try_end_1ba} :catchall_2e4

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d0

    .line 744
    if-eqz v17, :cond_1c8

    .line 745
    :try_start_1c5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_3ee

    :cond_1c8
    :goto_1c8
    move-object/from16 v16, v17

    .line 751
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :cond_1ca
    :goto_1ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_177

    .line 626
    .end local v3    # "cert":Ljava/lang/String;
    .end local v13    # "mode":Ljava/lang/String;
    :cond_1cd
    const-string v13, "permissive"

    goto :goto_153

    .line 647
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v13    # "mode":Ljava/lang/String;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :cond_1d0
    :try_start_1d0
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 648
    .local v21, "tagName":Ljava/lang/String;
    const-string/jumbo v24, "signer"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2fa

    .line 649
    const/16 v24, 0x0

    const-string/jumbo v25, "signature"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    if-nez v3, :cond_226

    .line 651
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<signer> without signature at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_20f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d0 .. :try_end_20f} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_1d0 .. :try_end_20f} :catch_250
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_20f} :catch_29e
    .catchall {:try_start_1d0 .. :try_end_20f} :catchall_2e4

    goto :goto_1b4

    .line 734
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "tagName":Ljava/lang/String;
    :catch_210
    move-exception v6

    move-object/from16 v16, v17

    .line 735
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_213
    :try_start_213
    const-string v24, "SELinuxMMAC"

    const-string v25, "Got execption parsing "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21e
    .catchall {:try_start_213 .. :try_end_21e} :catchall_3f4

    .line 744
    if-eqz v16, :cond_1ca

    .line 745
    :try_start_220
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_223} :catch_224

    goto :goto_1ca

    .line 747
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_224
    move-exception v24

    goto :goto_1ca

    .line 658
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v21    # "tagName":Ljava/lang/String;
    :cond_226
    :try_start_226
    new-instance v20, Landroid/content/pm/Signature;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_22d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_226 .. :try_end_22d} :catch_278
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_226 .. :try_end_22d} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_226 .. :try_end_22d} :catch_250
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_22d} :catch_29e
    .catchall {:try_start_226 .. :try_end_22d} :catchall_2e4

    .line 665
    .local v20, "signature":Landroid/content/pm/Signature;
    if-nez v20, :cond_2b3

    .line 666
    :try_start_22f
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<signer> with null signature at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_24e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22f .. :try_end_24e} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_22f .. :try_end_24e} :catch_250
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_24e} :catch_29e
    .catchall {:try_start_22f .. :try_end_24e} :catchall_2e4

    goto/16 :goto_1b4

    .line 736
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "signature":Landroid/content/pm/Signature;
    .end local v21    # "tagName":Ljava/lang/String;
    :catch_250
    move-exception v6

    move-object/from16 v16, v17

    .line 737
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_253
    :try_start_253
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "File not found exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v12, v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_271
    .catchall {:try_start_253 .. :try_end_271} :catchall_3f4

    .line 744
    if-eqz v16, :cond_1ca

    .line 745
    :try_start_273
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_276
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_276} :catch_224

    goto/16 :goto_1ca

    .line 659
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v21    # "tagName":Ljava/lang/String;
    :catch_278
    move-exception v6

    .line 660
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_279
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<signer> with bad signature at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_29c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_279 .. :try_end_29c} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_279 .. :try_end_29c} :catch_250
    .catch Ljava/io/IOException; {:try_start_279 .. :try_end_29c} :catch_29e
    .catchall {:try_start_279 .. :try_end_29c} :catchall_2e4

    goto/16 :goto_1b4

    .line 740
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "tagName":Ljava/lang/String;
    :catch_29e
    move-exception v6

    move-object/from16 v16, v17

    .line 741
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .local v6, "e":Ljava/io/IOException;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_2a1
    :try_start_2a1
    const-string v24, "SELinuxMMAC"

    const-string v25, "Got execption parsing "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2ac
    .catchall {:try_start_2a1 .. :try_end_2ac} :catchall_3f4

    .line 744
    if-eqz v16, :cond_1ca

    .line 745
    :try_start_2ae
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_2b1
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2b1} :catch_224

    goto/16 :goto_1ca

    .line 671
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v20    # "signature":Landroid/content/pm/Signature;
    .restart local v21    # "tagName":Ljava/lang/String;
    :cond_2b3
    const/16 v22, 0x0

    .line 672
    .local v22, "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :try_start_2b5
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2ed

    .line 673
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 675
    .local v8, "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-static {v14, v0, v3, v8}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v22

    .line 681
    .end local v8    # "existingPolicy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :goto_2d5
    if-eqz v22, :cond_1b4

    .line 699
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b5 .. :try_end_2e2} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_2b5 .. :try_end_2e2} :catch_250
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_2e2} :catch_29e
    .catchall {:try_start_2b5 .. :try_end_2e2} :catchall_2e4

    goto/16 :goto_1b4

    .line 743
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "signature":Landroid/content/pm/Signature;
    .end local v21    # "tagName":Ljava/lang/String;
    .end local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :catchall_2e4
    move-exception v24

    move-object/from16 v16, v17

    .line 744
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :goto_2e7
    if-eqz v16, :cond_2ec

    .line 745
    :try_start_2e9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_2ec
    .catch Ljava/io/IOException; {:try_start_2e9 .. :try_end_2ec} :catch_3eb

    .line 743
    :cond_2ec
    :goto_2ec
    throw v24

    .line 678
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v20    # "signature":Landroid/content/pm/Signature;
    .restart local v21    # "tagName":Ljava/lang/String;
    .restart local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_2ed
    const/16 v24, 0x1

    const/16 v25, 0x0

    :try_start_2f1
    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v14, v0, v3, v1}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v22

    goto :goto_2d5

    .line 701
    .end local v20    # "signature":Landroid/content/pm/Signature;
    .end local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_2fa
    const-string v24, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_327

    .line 702
    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v14, v0, v1, v2}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v22

    .line 704
    .restart local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v22, :cond_1b4

    .line 709
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b4

    .line 711
    .end local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_327
    const-string v24, "package"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_37f

    .line 712
    const/16 v24, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 713
    .local v15, "pkgName":Ljava/lang/String;
    if-nez v15, :cond_362

    .line 714
    const-string v24, "SELinuxMMAC"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<package> without name at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b4

    .line 720
    :cond_362
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v14, v0, v1, v2}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v22

    .line 722
    .restart local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v22, :cond_1b4

    .line 727
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b4

    .line 730
    .end local v15    # "pkgName":Ljava/lang/String;
    .end local v22    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_37f
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_382
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f1 .. :try_end_382} :catch_210
    .catch Ljava/io/FileNotFoundException; {:try_start_2f1 .. :try_end_382} :catch_250
    .catch Ljava/io/IOException; {:try_start_2f1 .. :try_end_382} :catch_29e
    .catchall {:try_start_2f1 .. :try_end_382} :catchall_2e4

    goto/16 :goto_1b4

    .line 754
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .end local v21    # "tagName":Ljava/lang/String;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :cond_384
    if-eqz v16, :cond_389

    .line 755
    :try_start_386
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V
    :try_end_389
    .catch Ljava/io/IOException; {:try_start_386 .. :try_end_389} :catch_3e3

    .line 760
    :cond_389
    :goto_389
    const-string v25, "container"

    monitor-enter v25

    .line 761
    :try_start_38c
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    if-nez v24, :cond_39c

    .line 762
    const/16 v24, 0x1

    monitor-exit v25

    goto/16 :goto_17

    .line 773
    :catchall_399
    move-exception v24

    monitor-exit v25
    :try_end_39b
    .catchall {:try_start_38c .. :try_end_39b} :catchall_399

    throw v24

    .line 764
    :cond_39c
    :try_start_39c
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    .line 765
    .local v23, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3a6
    :goto_3a6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3db

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 766
    .local v5, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget v0, v5, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v24, v0

    const/16 v26, 0xc9

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_3a6

    iget v0, v5, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v24, v0

    const/16 v26, 0x1f5

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_3a6

    .line 769
    sget-object v24, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    iget v0, v5, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, -0xc9

    move/from16 v26, v0

    const/16 v27, 0x1

    aput v27, v24, v26

    goto :goto_3a6

    .line 773
    .end local v5    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_3db
    monitor-exit v25
    :try_end_3dc
    .catchall {:try_start_39c .. :try_end_3dc} :catchall_399

    .line 774
    const/16 v24, 0x1

    goto/16 :goto_17

    .line 613
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v7    # "enforcing":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "macPermFiles":[Ljava/io/File;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v23    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;>;"
    :catch_3e0
    move-exception v24

    goto/16 :goto_119

    .line 757
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v4    # "cnt":I
    .restart local v7    # "enforcing":Z
    .restart local v12    # "macPermFiles":[Ljava/io/File;
    .restart local v13    # "mode":Ljava/lang/String;
    :catch_3e3
    move-exception v24

    goto :goto_389

    .line 560
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v7    # "enforcing":Z
    .end local v12    # "macPermFiles":[Ljava/io/File;
    .end local v13    # "mode":Ljava/lang/String;
    :catch_3e5
    move-exception v25

    goto/16 :goto_81

    .local v6, "e":Ljava/io/FileNotFoundException;
    :catch_3e8
    move-exception v24

    goto/16 :goto_3e

    .line 747
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v4    # "cnt":I
    .restart local v7    # "enforcing":Z
    .restart local v12    # "macPermFiles":[Ljava/io/File;
    .restart local v13    # "mode":Ljava/lang/String;
    :catch_3eb
    move-exception v25

    goto/16 :goto_2ec

    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :catch_3ee
    move-exception v24

    goto/16 :goto_1c8

    .line 595
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v7    # "enforcing":Z
    .end local v12    # "macPermFiles":[Ljava/io/File;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v19    # "selinux_new_priority":I
    :catch_3f1
    move-exception v25

    goto/16 :goto_109

    .line 743
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v19    # "selinux_new_priority":I
    .restart local v3    # "cert":Ljava/lang/String;
    .restart local v4    # "cnt":I
    .restart local v7    # "enforcing":Z
    .restart local v12    # "macPermFiles":[Ljava/io/File;
    .restart local v13    # "mode":Ljava/lang/String;
    :catchall_3f4
    move-exception v24

    goto/16 :goto_2e7

    .line 740
    :catch_3f7
    move-exception v6

    goto/16 :goto_2a1

    .line 736
    :catch_3fa
    move-exception v6

    goto/16 :goto_253

    .line 734
    :catch_3fd
    move-exception v6

    goto/16 :goto_213

    .line 591
    .end local v3    # "cert":Ljava/lang/String;
    .end local v4    # "cnt":I
    .end local v7    # "enforcing":Z
    .end local v12    # "macPermFiles":[Ljava/io/File;
    .end local v13    # "mode":Ljava/lang/String;
    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v19    # "selinux_new_priority":I
    :catchall_400
    move-exception v24

    goto/16 :goto_104

    .line 587
    :catch_403
    move-exception v6

    goto/16 :goto_dc

    .line 575
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "policyFile":Ljava/io/FileReader;
    .end local v19    # "selinux_new_priority":I
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :catch_406
    move-exception v6

    goto/16 :goto_9a

    .line 556
    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    :catchall_409
    move-exception v24

    goto/16 :goto_7c

    .line 552
    :catch_40c
    move-exception v6

    goto/16 :goto_1b

    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    :cond_40f
    move-object/from16 v16, v17

    .end local v17    # "policyFile":Ljava/io/FileReader;
    .restart local v16    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_c

    :pswitch_413
    move-object/from16 v17, v16

    .end local v16    # "policyFile":Ljava/io/FileReader;
    .restart local v17    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_42

    .line 542
    nop

    :pswitch_data_418
    .packed-switch 0x0
        :pswitch_413
        :pswitch_82
        :pswitch_82
        :pswitch_82
    .end packed-switch
.end method

.method protected static releaseContainerID(I)V
    .registers 5
    .param p0, "containrID"    # I

    .prologue
    .line 226
    const-string v1, "container"

    monitor-enter v1

    .line 227
    :try_start_3
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->containerIDTable:[I

    add-int/lit16 v2, p0, -0xc9

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static setEnforcingMode(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 520
    const-string v1, "persist.mmac.enforce"

    if-eqz p0, :cond_a

    const-string v0, "1"

    :goto_6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void

    .line 520
    :cond_a
    const-string v0, "0"

    goto :goto_6
.end method

.method private static setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "category"    # I

    .prologue
    .line 274
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "container"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    if-eqz v0, :cond_12

    .line 276
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v1, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 278
    :cond_12
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 279
    return-void
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1251
    if-nez p0, :cond_4

    .line 1264
    :cond_3
    :goto_3
    return v3

    .line 1254
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1255
    .local v0, "N":I
    if-eqz v0, :cond_3

    .line 1258
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_28

    .line 1259
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1260
    .local v1, "c":C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_19

    const/16 v4, 0x7a

    if-le v1, v4, :cond_25

    :cond_19
    const/16 v4, 0x41

    if-lt v1, v4, :cond_21

    const/16 v4, 0x5a

    if-le v1, v4, :cond_25

    :cond_21
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_3

    .line 1258
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1264
    .end local v1    # "c":C
    :cond_28
    const/4 v3, 0x1

    goto :goto_3
.end method
