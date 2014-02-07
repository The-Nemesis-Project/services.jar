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

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field private static final MMAC_DENY:Ljava/lang/String; = "MMAC_DENIAL:"

.field private static final MMAC_ENFORCE_PROPERTY:Ljava/lang/String; = "persist.mmac.enforce"

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

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

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

.field private static final mTrustedPackages:Ljava/util/HashMap;
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

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    .line 88
    sput-object v5, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    .line 95
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
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 705
    return-void
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)V
    .registers 14
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 188
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, -0x1

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->level:I

    .line 190
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_b
    if-ge v2, v3, :cond_c0

    aget-object v6, v0, v2

    .line 191
    .local v6, "s":Landroid/content/pm/Signature;
    if-nez v6, :cond_14

    .line 190
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 194
    :cond_14
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 195
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 196
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 197
    .local v7, "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v7, :cond_58

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_58

    .line 198
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 199
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    .line 200
    .local v1, "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->level:I

    iput v10, v9, Landroid/content/pm/ApplicationInfo;->level:I

    .line 201
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 213
    .end local v1    # "containerHelper":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    :cond_58
    :goto_58
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_7e

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 214
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 215
    .local v8, "trustedKey":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 216
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-byte v12, v9, Landroid/content/pm/ApplicationInfo;->isTrusted:B

    .line 219
    .end local v8    # "trustedKey":Ljava/lang/String;
    :cond_7e
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_a4

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 220
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 221
    .local v5, "noAuditKey":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 222
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-byte v12, v9, Landroid/content/pm/ApplicationInfo;->isNoAudit:B

    .line 244
    .end local v5    # "noAuditKey":Ljava/lang/String;
    .end local v6    # "s":Landroid/content/pm/Signature;
    .end local v7    # "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_a4
    :goto_a4
    return-void

    .line 203
    .restart local v6    # "s":Landroid/content/pm/Signature;
    .restart local v7    # "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_a5
    const/4 v4, -0x1

    .line 204
    .local v4, "level":I
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b4

    iget-boolean v9, v7, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v9, :cond_58

    .line 206
    :cond_b4
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v4

    .line 207
    if-ltz v4, :cond_58

    .line 208
    invoke-static {p0, v4}, Lcom/android/server/pm/SELinuxMMAC;->setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_58

    .line 231
    .end local v4    # "level":I
    .end local v6    # "s":Landroid/content/pm/Signature;
    .end local v7    # "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_c0
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_db

    .line 232
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v11, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_a4

    .line 238
    :cond_db
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    .line 239
    iget-object v10, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v9, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v9, v10, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_a4

    .line 242
    :cond_f2
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v11, v9, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_a4
.end method

.method private static determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .registers 32
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "notInsidePackageTag"    # Z
    .param p2, "certs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 430
    .local v3, "denyPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 432
    .local v8, "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 435
    .local v4, "pkgPolicy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;>;"
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    .line 436
    .local v22, "outerDepth":I
    const/16 v16, 0x0

    .line 437
    .local v16, "allowAll":Z
    const/4 v5, 0x0

    .line 438
    .local v5, "seinfo":Ljava/lang/String;
    const/4 v6, 0x0

    .line 440
    .local v6, "isContainerApp":Z
    :cond_17
    :goto_17
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    .local v28, "type":I
    const/4 v7, 0x1

    move/from16 v0, v28

    if-eq v0, v7, :cond_251

    const/4 v7, 0x3

    move/from16 v0, v28

    if-ne v0, v7, :cond_2d

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    move/from16 v0, v22

    if-le v7, v0, :cond_251

    .line 442
    :cond_2d
    const/4 v7, 0x3

    move/from16 v0, v28

    if-eq v0, v7, :cond_17

    const/4 v7, 0x4

    move/from16 v0, v28

    if-eq v0, v7, :cond_17

    .line 447
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    .line 448
    .local v27, "tagName":Ljava/lang/String;
    const-string v7, "seinfo"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 449
    const/4 v7, 0x0

    const-string v9, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 450
    .local v26, "seinfoValue":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 451
    move-object/from16 v5, v26

    .line 529
    .end local v26    # "seinfoValue":Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    .line 453
    .restart local v26    # "seinfoValue":Ljava/lang/String;
    :cond_5a
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<seinfo> without value at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 456
    .end local v26    # "seinfoValue":Ljava/lang/String;
    :cond_77
    const-string v7, "container"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 457
    const/4 v7, 0x0

    const-string v9, "value"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 458
    .local v18, "containerflag":Ljava/lang/String;
    if-eqz v18, :cond_56

    const-string v7, "true"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 459
    const/4 v6, 0x1

    goto :goto_56

    .line 461
    .end local v18    # "containerflag":Ljava/lang/String;
    :cond_98
    const-string v7, "allow-permission"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 462
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 463
    .local v23, "permName":Ljava/lang/String;
    if-eqz v23, :cond_b3

    .line 464
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 466
    :cond_b3
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<allow-permission> without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 469
    .end local v23    # "permName":Ljava/lang/String;
    :cond_d0
    const-string v7, "deny-permission"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 470
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 471
    .restart local v23    # "permName":Ljava/lang/String;
    if-eqz v23, :cond_ec

    .line 472
    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 474
    :cond_ec
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<deny-permission> without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 477
    .end local v23    # "permName":Ljava/lang/String;
    :cond_10a
    const-string v7, "allow-all"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 478
    const/16 v16, 0x1

    goto/16 :goto_56

    .line 479
    :cond_118
    const-string v7, "service"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_191

    .line 480
    new-instance v17, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>(Lcom/android/server/pm/SELinuxMMAC$1;)V

    .line 481
    .local v17, "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 482
    .local v24, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "level"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 483
    .local v21, "level":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "seinfo"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 484
    .local v20, "innerSeinfo":Ljava/lang/String;
    if-eqz v24, :cond_56

    if-eqz v21, :cond_56

    .line 486
    :try_start_149
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v17

    iput v7, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->level:I
    :try_end_151
    .catch Ljava/lang/NumberFormatException; {:try_start_149 .. :try_end_151} :catch_164

    .line 490
    :goto_151
    if-eqz v20, :cond_180

    .line 491
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 492
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_56

    .line 487
    :catch_164
    move-exception v19

    .line 488
    .local v19, "e":Ljava/lang/NumberFormatException;
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not define correct level."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_151

    .line 493
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :cond_180
    if-eqz v5, :cond_56

    .line 494
    move-object/from16 v0, v17

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    .line 495
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_56

    .line 498
    .end local v17    # "containerInfo":Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    .end local v20    # "innerSeinfo":Ljava/lang/String;
    .end local v21    # "level":Ljava/lang/String;
    .end local v24    # "pkgName":Ljava/lang/String;
    :cond_191
    const-string v7, "trustedpackage"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cd

    .line 499
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 501
    .restart local v24    # "pkgName":Ljava/lang/String;
    if-eqz v24, :cond_56

    if-eqz p2, :cond_56

    .line 502
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " trusted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 505
    .end local v24    # "pkgName":Ljava/lang/String;
    :cond_1cd
    const-string v7, "dontaudit"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_209

    .line 506
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 508
    .restart local v24    # "pkgName":Ljava/lang/String;
    if-eqz v24, :cond_56

    if-eqz p2, :cond_56

    .line 509
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " noAudit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 512
    .end local v24    # "pkgName":Ljava/lang/String;
    :cond_209
    const-string v7, "package"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    if-eqz p1, :cond_56

    .line 513
    const/4 v7, 0x0

    const-string v9, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 514
    .restart local v24    # "pkgName":Ljava/lang/String;
    if-eqz v24, :cond_233

    .line 515
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v9}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v25

    .line 516
    .local v25, "policyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v25, :cond_17

    .line 517
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 525
    .end local v25    # "policyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_233
    const-string v7, "SELinuxMMAC"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<package> inner tag without name at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 533
    .end local v24    # "pkgName":Ljava/lang/String;
    .end local v27    # "tagName":Ljava/lang/String;
    :cond_251
    const/4 v2, 0x0

    .line 534
    .local v2, "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_27a

    .line 535
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    new-instance v7, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v9, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/SELinuxMMAC$BlackListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 556
    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_273
    :goto_273
    if-eqz v6, :cond_279

    if-eqz v2, :cond_279

    .line 557
    sput-object v2, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 560
    :cond_279
    return-object v2

    .line 538
    .restart local v8    # "allowPolicyPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_27a
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_2a0

    .line 539
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    new-instance v12, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v2

    move-object v9, v4

    move-object v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/server/pm/SELinuxMMAC$WhiteListPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_273

    .line 542
    :cond_2a0
    if-eqz v16, :cond_2c3

    .line 543
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v10, 0x0

    new-instance v14, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_273

    .line 546
    :cond_2c3
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_273

    .line 551
    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;

    .end local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    const/4 v10, 0x0

    new-instance v14, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mTrustedPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->mNoAuditPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v2

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/pm/SELinuxMMAC$DenyPolicy;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .restart local v2    # "permPolicyType":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    goto :goto_273
.end method

.method private static flushInstallPolicy()V
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 105
    return-void
.end method

.method public static getEnforcingMode()Z
    .registers 2

    .prologue
    .line 252
    const-string v0, "persist.mmac.enforce"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v2, -0x1

    .line 119
    .local v2, "level":I
    if-eqz p0, :cond_1f

    const-string v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 120
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 121
    .local v0, "dotIndex":I
    const-string v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 122
    .local v3, "levelStartIndex":I
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "strLevel":Ljava/lang/String;
    :try_start_1b
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1e} :catch_20

    move-result v2

    .line 129
    .end local v0    # "dotIndex":I
    .end local v3    # "levelStartIndex":I
    .end local v4    # "strLevel":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return v2

    .line 125
    .restart local v0    # "dotIndex":I
    .restart local v3    # "levelStartIndex":I
    .restart local v4    # "strLevel":Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define level."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public static isKnoxKey([Landroid/content/pm/Signature;)Z
    .registers 7
    .param p0, "cert"    # [Landroid/content/pm/Signature;

    .prologue
    .line 140
    array-length v2, p0

    .line 141
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/String;

    .line 143
    .local v3, "pubkeys":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_24

    .line 144
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

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 146
    :catch_1a
    move-exception v0

    .line 147
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v4, "SELinuxMMAC"

    const-string v5, "isKnoxKey check causes CertificateException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x0

    .line 150
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
    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, "ret":Z
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 156
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

    .line 157
    .local v7, "pubkey":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 158
    .local v0, "actualPublicKey":[B
    const/4 v3, 0x0

    .line 159
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

    .line 161
    .local v10, "signature":Landroid/content/pm/Signature;
    :try_start_24
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/PublicKey;->getEncoded()[B
    :try_end_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_2b} :catch_4b

    move-result-object v3

    .line 166
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 167
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 168
    .local v9, "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    iget-object v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_46

    iget-boolean v12, v9, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->isContainerApp:Z

    if-eqz v12, :cond_47

    .line 170
    :cond_46
    const/4 v8, 0x1

    .line 156
    .end local v9    # "sigSeContainerinfo":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v10    # "signature":Landroid/content/pm/Signature;
    :cond_47
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_b

    .line 162
    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    .restart local v10    # "signature":Landroid/content/pm/Signature;
    :catch_4b
    move-exception v2

    .line 163
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v12, "SELinuxMMAC"

    const-string v13, "isKnoxKey check causes CertificateException"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v8, 0x0

    .line 176
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
    .line 133
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

    .line 745
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_2a

    aget-object v5, v0, v1

    .line 746
    .local v5, "s":Landroid/content/pm/Signature;
    if-nez v5, :cond_e

    .line 745
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 751
    :cond_e
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 752
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 753
    .local v4, "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 754
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 758
    .local v6, "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    .line 792
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v5    # "s":Landroid/content/pm/Signature;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_29
    :goto_29
    return v3

    .line 764
    :cond_2a
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 765
    const/4 v3, 0x0

    .line 766
    .local v3, "passed":Z
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 767
    .restart local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 768
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 772
    .restart local v6    # "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_29

    .line 778
    .end local v3    # "passed":Z
    .end local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    .end local v6    # "seinfo":Ljava/lang/String;
    :cond_51
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 779
    const/4 v3, 0x0

    .line 780
    .restart local v3    # "passed":Z
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    .line 781
    .restart local v4    # "policy":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    invoke-virtual {v4, p0}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->passedPolicyChecks(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 782
    iget-object v7, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->getSEinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 786
    .restart local v6    # "seinfo":Ljava/lang/String;
    const/4 v3, 0x1

    goto :goto_29

    .line 792
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
    .line 114
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->readInstallPolicy([Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static readInstallPolicy(Ljava/io/File;)Z
    .registers 4
    .param p0, "policyFile"    # Ljava/io/File;

    .prologue
    .line 270
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
    .registers 17
    .param p0, "policyFiles"    # [Ljava/io/File;

    .prologue
    .line 275
    const/4 v8, 0x0

    .line 276
    .local v8, "policyFile":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 277
    .local v3, "i":I
    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v4

    .line 278
    .local v4, "index":I
    packed-switch v4, :pswitch_data_268

    .line 313
    :goto_9
    if-nez v8, :cond_f5

    .line 314
    const-string v13, "SELinuxMMAC"

    const-string v14, "MMAC install disabled."

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v13, 0x0

    .line 421
    :goto_13
    return v13

    .line 285
    .end local v8    # "policyFile":Ljava/io/FileReader;
    .local v9, "policyFile":Ljava/io/FileReader;
    :catch_14
    move-exception v1

    move-object v8, v9

    .line 286
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "policyFile":Ljava/io/FileReader;
    :goto_16
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .line 280
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_37
    if-nez v9, :cond_262

    if-eqz p0, :cond_262

    aget-object v13, p0, v3

    if-eqz v13, :cond_262

    .line 282
    :try_start_3f
    new-instance v8, Ljava/io/FileReader;

    aget-object v13, p0, v3

    invoke-direct {v8, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_46} :catch_14

    .line 283
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v8    # "policyFile":Ljava/io/FileReader;
    :try_start_46
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_60} :catch_61

    goto :goto_9

    .line 285
    :catch_61
    move-exception v1

    goto :goto_16

    .line 295
    :pswitch_63
    :try_start_63
    new-instance v9, Ljava/io/FileReader;

    add-int/lit8 v13, v4, -0x1

    aget-object v13, p0, v13

    invoke-direct {v9, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6c} :catch_8a

    .line 296
    .end local v8    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :try_start_6c
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v4, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_88} :catch_25f

    move-object v8, v9

    .line 297
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v8    # "policyFile":Ljava/io/FileReader;
    goto :goto_9

    .line 298
    :catch_8a
    move-exception v1

    move-object v9, v8

    .line 299
    .end local v8    # "policyFile":Ljava/io/FileReader;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :goto_8c
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v4, -0x1

    aget-object v15, p0, v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-nez v9, :cond_262

    .line 304
    :try_start_ae
    new-instance v8, Ljava/io/FileReader;

    const/4 v13, 0x2

    aget-object v13, p0, v13

    invoke-direct {v8, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b6} :catch_25b

    .line 305
    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v8    # "policyFile":Ljava/io/FileReader;
    :try_start_b6
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load mac_permissions.xml policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, p0, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/io/FileNotFoundException; {:try_start_b6 .. :try_end_d1} :catch_d3

    goto/16 :goto_9

    .line 307
    :catch_d3
    move-exception v1

    .line 308
    :goto_d4
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find install policy "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, p0, v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 318
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_f5
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MMAC install enabled using file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p0, v3

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getEnforcingMode()Z

    move-result v2

    .line 321
    .local v2, "enforcing":Z
    if-eqz v2, :cond_159

    const-string v5, "enforcing"

    .line 322
    .local v5, "mode":Ljava/lang/String;
    :goto_11b
    const/4 v0, 0x0

    .line 323
    .local v0, "cert":Ljava/lang/String;
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MMAC install starting in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mode."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    .line 328
    :try_start_13d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 329
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 331
    const-string v13, "policy"

    invoke-static {v6, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 333
    :cond_149
    :goto_149
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 334
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_14f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13d .. :try_end_14f} :catch_191
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_14f} :catch_1c1

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_15c

    .line 417
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_153
    :try_start_153
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_258

    .line 421
    :goto_156
    const/4 v13, 0x1

    goto/16 :goto_13

    .line 321
    .end local v0    # "cert":Ljava/lang/String;
    .end local v5    # "mode":Ljava/lang/String;
    :cond_159
    const-string v5, "permissive"

    goto :goto_11b

    .line 338
    .restart local v0    # "cert":Ljava/lang/String;
    .restart local v5    # "mode":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_15c
    :try_start_15c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 339
    .local v11, "tagName":Ljava/lang/String;
    const-string v13, "signer"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1fa

    .line 340
    const/4 v13, 0x0

    const-string v14, "signature"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    if-nez v0, :cond_19a

    .line 342
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> without signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15c .. :try_end_190} :catch_191
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_190} :catch_1c1

    goto :goto_149

    .line 411
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_191
    move-exception v1

    .line 412
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v13, "SELinuxMMAC"

    const-string v14, "Got execption parsing "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_153

    .line 349
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_19a
    :try_start_19a
    new-instance v10, Landroid/content/pm/Signature;

    invoke-direct {v10, v0}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19a .. :try_end_19f} :catch_1ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19a .. :try_end_19f} :catch_191
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19f} :catch_1c1

    .line 356
    .local v10, "signature":Landroid/content/pm/Signature;
    if-nez v10, :cond_1ec

    .line 357
    :try_start_1a1
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> with null signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a1 .. :try_end_1c0} :catch_191
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1c0} :catch_1c1

    goto :goto_149

    .line 413
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "signature":Landroid/content/pm/Signature;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_1c1
    move-exception v1

    .line 414
    .local v1, "e":Ljava/io/IOException;
    const-string v13, "SELinuxMMAC"

    const-string v14, "Got execption parsing "

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_153

    .line 350
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_1ca
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1cb
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<signer> with bad signature at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_149

    .line 362
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "signature":Landroid/content/pm/Signature;
    :cond_1ec
    const/4 v13, 0x1

    invoke-static {v6, v13, v0}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    .line 363
    .local v12, "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v12, :cond_149

    .line 379
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_149

    .line 381
    .end local v10    # "signature":Landroid/content/pm/Signature;
    .end local v12    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_1fa
    const-string v13, "default"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_212

    .line 382
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    .line 383
    .restart local v12    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v12, :cond_149

    .line 388
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_149

    .line 390
    .end local v12    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_212
    const-string v13, "package"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_253

    .line 391
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "pkgName":Ljava/lang/String;
    if-nez v7, :cond_244

    .line 393
    const-string v13, "SELinuxMMAC"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<package> without name at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_149

    .line 398
    :cond_244
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Lcom/android/server/pm/SELinuxMMAC;->determineInstallPolicyType(Lorg/xmlpull/v1/XmlPullParser;ZLjava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    move-result-object v12

    .line 399
    .restart local v12    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    if-eqz v12, :cond_149

    .line 404
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->PKG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_149

    .line 407
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v12    # "type":Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;
    :cond_253
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_256
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1cb .. :try_end_256} :catch_191
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_256} :catch_1c1

    goto/16 :goto_149

    .line 418
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_258
    move-exception v13

    goto/16 :goto_156

    .line 307
    .end local v0    # "cert":Ljava/lang/String;
    .end local v2    # "enforcing":Z
    .end local v5    # "mode":Ljava/lang/String;
    .end local v8    # "policyFile":Ljava/io/FileReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :catch_25b
    move-exception v1

    move-object v8, v9

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v8    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_d4

    .line 298
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    :catch_25f
    move-exception v1

    goto/16 :goto_8c

    :cond_262
    move-object v8, v9

    .end local v9    # "policyFile":Ljava/io/FileReader;
    .restart local v8    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_9

    :pswitch_265
    move-object v9, v8

    .end local v8    # "policyFile":Ljava/io/FileReader;
    .restart local v9    # "policyFile":Ljava/io/FileReader;
    goto/16 :goto_37

    .line 278
    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_265
        :pswitch_63
        :pswitch_63
        :pswitch_63
    .end packed-switch
.end method

.method public static setEnforcingMode(Z)V
    .registers 3
    .param p0, "value"    # Z

    .prologue
    .line 260
    const-string v1, "persist.mmac.enforce"

    if-eqz p0, :cond_a

    const-string v0, "1"

    :goto_6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 260
    :cond_a
    const-string v0, "0"

    goto :goto_6
.end method

.method private static setSecurityContext(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "level"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "container"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    if-eqz v0, :cond_12

    .line 182
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->mContainerPolicy:Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;

    iget-object v1, v1, Lcom/android/server/pm/SELinuxMMAC$InstallPolicy;->seinfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 184
    :cond_12
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v0, Landroid/content/pm/ApplicationInfo;->level:I

    .line 185
    return-void
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 800
    if-nez p0, :cond_4

    .line 813
    :cond_3
    :goto_3
    return v3

    .line 803
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 804
    .local v0, "N":I
    if-eqz v0, :cond_3

    .line 807
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_28

    .line 808
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 809
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

    .line 807
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 813
    .end local v1    # "c":C
    :cond_28
    const/4 v3, 0x1

    goto :goto_3
.end method
