.class final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$Pare;
    }
.end annotation


# static fields
.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final LOG_PREF_XML_CORRUPTED:Ljava/lang/String; = "XML_CORRUPTED"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PACKAGE_SECRETS:Ljava/lang/String; = "package-secrets"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final is3LMAllowed:Z

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private mComponentsOnlyForOwnerUser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCorruptedFilename:Ljava/io/File;

.field private final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field public final mKeySetManager:Lcom/android/server/pm/KeySetManager;

.field private final mMoreBackupSettingsFilename:Ljava/io/File;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
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

.field public mSecretPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    sput v2, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3664
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "SYSTEM"

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "DEBUGGABLE"

    aput-object v2, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "HAS_CODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PERSISTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x9

    const-string v2, "FACTORY_TEST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ALLOW_TASK_REPARENTING"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ALLOW_CLEAR_USER_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "UPDATED_SYSTEM_APP"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TEST_ONLY"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "VM_SAFE_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ALLOW_BACKUP"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "KILL_AFTER_RESTORE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "RESTORE_ANY_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "LARGE_HEAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x40000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PRIVILEGED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x20000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "FORWARD_LOCK"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/high16 v2, 0x10000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CANT_SAVE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 218
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSecretPackageList:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Lcom/android/server/pm/KeySetManager;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManager;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManager:Lcom/android/server/pm/KeySetManager;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    .line 221
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mContext:Landroid/content/Context;

    .line 222
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 229
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 230
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-more-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    .line 231
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-corrupted.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCorruptedFilename:Ljava/io/File;

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1b0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 236
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-stopped.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string v2, "packages-stopped-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->readPkgCmpOnlyForOwnerUser()V

    .line 239
    return-void
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 7
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .prologue
    const/4 v2, 0x6

    .line 842
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    if-eqz p3, :cond_52

    .line 844
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p3, :cond_53

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 849
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 858
    :cond_49
    :goto_49
    invoke-virtual {p3, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 859
    iput-object p3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 860
    iget v0, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 862
    :cond_52
    return-void

    .line 850
    :cond_53
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_49

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_49
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    .line 946
    const/16 v3, 0x4e1f

    if-le p1, v3, :cond_7

    .line 973
    :goto_6
    return v2

    .line 950
    :cond_7
    const/16 v3, 0x2710

    if-lt p1, v3, :cond_4e

    .line 951
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 952
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 953
    .local v1, "index":I
    :goto_13
    if-lt v1, v0, :cond_1e

    .line 954
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 957
    :cond_1e
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 958
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 963
    :cond_47
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 973
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_4c
    const/4 v2, 0x1

    goto :goto_6

    .line 965
    :cond_4e
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 971
    :cond_77
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4c
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V
    .registers 29
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "mimeType"    # Ljava/lang/String;
    .param p10, "userId"    # I

    .prologue
    .line 2737
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v17

    invoke-virtual {v7, v0, v8, v1, v2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v16

    .line 2741
    .local v16, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 2742
    .local v5, "match":I
    if-eqz v16, :cond_f7

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_f7

    .line 2743
    const/4 v12, 0x0

    .line 2744
    .local v12, "haveAct":Z
    const/4 v13, 0x0

    .line 2745
    .local v13, "haveNonSys":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Landroid/content/ComponentName;

    .line 2746
    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_27
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_4f

    .line 2747
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2748
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v14

    .line 2749
    iget-object v7, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_83

    .line 2755
    const/4 v13, 0x1

    .line 2768
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4f
    if-eqz v12, :cond_128

    if-nez v13, :cond_128

    .line 2769
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 2770
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_65

    .line 2771
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2773
    :cond_65
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_aa

    .line 2774
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_73
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_aa

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2775
    .local v10, "cat":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_73

    .line 2757
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "cat":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .restart local v9    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_83
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 2761
    const/4 v12, 0x1

    .line 2762
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v5, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 2746
    :cond_a6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_27

    .line 2778
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    :cond_aa
    const/high16 v7, 0x10000

    and-int v7, v7, p3

    if-eqz v7, :cond_b5

    .line 2779
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2781
    :cond_b5
    if-eqz p5, :cond_bc

    .line 2782
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2784
    :cond_bc
    if-eqz p6, :cond_c9

    .line 2785
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 2787
    :cond_c9
    if-eqz p7, :cond_d0

    .line 2788
    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 2790
    :cond_d0
    if-eqz p8, :cond_d7

    .line 2791
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 2793
    :cond_d7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e4

    .line 2795
    :try_start_dd
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_e4
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_dd .. :try_end_e4} :catch_f8

    .line 2800
    :cond_e4
    :goto_e4
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    const/4 v8, 0x1

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 2801
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 2806
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v12    # "haveAct":Z
    .end local v13    # "haveNonSys":Z
    .end local v14    # "i":I
    :cond_f7
    :goto_f7
    return-void

    .line 2796
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v12    # "haveAct":Z
    .restart local v13    # "haveNonSys":Z
    .restart local v14    # "i":I
    :catch_f8
    move-exception v11

    .line 2797
    .local v11, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed mimetype "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, " for "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 2802
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v11    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_128
    if-nez v13, :cond_f7

    .line 2803
    const-string v7, "PackageSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No component found for default preferred activity "

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 56
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 2631
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 2632
    .local v30, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 2633
    .local v5, "flags":I
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2634
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    move/from16 v0, v45

    if-ge v0, v2, :cond_3c

    .line 2635
    move-object/from16 v0, p2

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v40

    .line 2636
    .local v40, "cat":Ljava/lang/String;
    const-string v2, "android.intent.category.DEFAULT"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2637
    const/high16 v2, 0x10000

    or-int/2addr v5, v2

    .line 2634
    :goto_31
    add-int/lit8 v45, v45, 0x1

    goto :goto_14

    .line 2639
    :cond_34
    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_31

    .line 2643
    .end local v40    # "cat":Ljava/lang/String;
    :cond_3c
    const/16 v42, 0x1

    .line 2644
    .local v42, "doNonData":Z
    const/16 v44, 0x0

    .line 2646
    .local v44, "hasSchemes":Z
    const/16 v49, 0x0

    .local v49, "ischeme":I
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v49

    if-ge v0, v2, :cond_193

    .line 2647
    const/16 v43, 0x1

    .line 2648
    .local v43, "doScheme":Z
    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 2649
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v7, :cond_5e

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 2650
    const/16 v44, 0x1

    .line 2652
    :cond_5e
    const/16 v50, 0x0

    .local v50, "issp":I
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    move/from16 v0, v50

    if-ge v0, v2, :cond_a4

    .line 2653
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2654
    .local v39, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2655
    move-object/from16 v0, p2

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v8

    .line 2656
    .local v8, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v8}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2657
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2658
    .local v4, "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2659
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2661
    const/16 v43, 0x0

    .line 2652
    add-int/lit8 v50, v50, 0x1

    goto :goto_60

    .line 2663
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v8    # "ssp":Landroid/os/PatternMatcher;
    .end local v39    # "builder":Landroid/net/Uri$Builder;
    :cond_a4
    const/16 v46, 0x0

    .local v46, "iauth":I
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    move/from16 v0, v46

    if-ge v0, v2, :cond_15a

    .line 2664
    const/16 v41, 0x1

    .line 2665
    .local v41, "doAuth":Z
    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v16

    .line 2666
    .local v16, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    const/16 v48, 0x0

    .end local v41    # "doAuth":Z
    .local v48, "ipath":I
    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    move/from16 v0, v48

    if-ge v0, v2, :cond_112

    .line 2667
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2668
    .restart local v39    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2669
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_db

    .line 2670
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2672
    :cond_db
    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v17

    .line 2673
    .local v17, "path":Landroid/os/PatternMatcher;
    invoke-virtual/range {v17 .. v17}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2674
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2675
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2676
    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v5

    move-object/from16 v13, p3

    move-object v14, v7

    move/from16 v19, p4

    invoke-direct/range {v9 .. v19}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2678
    const/16 v43, 0x0

    move/from16 v41, v43

    .line 2666
    .local v41, "doAuth":I
    add-int/lit8 v48, v48, 0x1

    goto :goto_ba

    .line 2680
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "path":Landroid/os/PatternMatcher;
    .end local v39    # "builder":Landroid/net/Uri$Builder;
    .end local v41    # "doAuth":I
    :cond_112
    if-eqz v41, :cond_156

    .line 2681
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2682
    .restart local v39    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2683
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12d

    .line 2684
    invoke-virtual/range {v16 .. v16}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2686
    :cond_12d
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2687
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2688
    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move-object/from16 v25, v16

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2690
    const/16 v43, 0x0

    .line 2663
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v39    # "builder":Landroid/net/Uri$Builder;
    :cond_156
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_a6

    .line 2693
    .end local v16    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v48    # "ipath":I
    :cond_15a
    if-eqz v43, :cond_18d

    .line 2694
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2695
    .restart local v39    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2696
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2697
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2698
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2701
    .end local v4    # "finalIntent":Landroid/content/Intent;
    .end local v39    # "builder":Landroid/net/Uri$Builder;
    :cond_18d
    const/16 v42, 0x0

    .line 2646
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_42

    .line 2704
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v43    # "doScheme":Z
    .end local v46    # "iauth":I
    .end local v50    # "issp":I
    :cond_193
    const/16 v47, 0x0

    .local v47, "idata":I
    :goto_195
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    move/from16 v0, v47

    if-ge v0, v2, :cond_21e

    .line 2705
    move-object/from16 v0, p2

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v27

    .line 2706
    .local v27, "mimeType":Ljava/lang/String;
    if-eqz v44, :cond_1f5

    .line 2707
    new-instance v39, Landroid/net/Uri$Builder;

    invoke-direct/range {v39 .. v39}, Landroid/net/Uri$Builder;-><init>()V

    .line 2708
    .restart local v39    # "builder":Landroid/net/Uri$Builder;
    const/16 v49, 0x0

    :goto_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    move/from16 v0, v49

    if-ge v0, v2, :cond_218

    .line 2709
    move-object/from16 v0, p2

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v7

    .line 2710
    .restart local v7    # "scheme":Ljava/lang/String;
    if-eqz v7, :cond_1f2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f2

    .line 2711
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2712
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2713
    invoke-virtual/range {v39 .. v39}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2714
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move-object/from16 v23, v7

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2708
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_1f2
    add-int/lit8 v49, v49, 0x1

    goto :goto_1ae

    .line 2719
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v39    # "builder":Landroid/net/Uri$Builder;
    :cond_1f5
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2720
    .restart local v4    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2721
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, p3

    move/from16 v28, p4

    invoke-direct/range {v18 .. v28}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2724
    .end local v4    # "finalIntent":Landroid/content/Intent;
    :cond_218
    const/16 v42, 0x0

    .line 2704
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_195

    .line 2727
    .end local v27    # "mimeType":Ljava/lang/String;
    :cond_21e
    if-eqz v42, :cond_237

    .line 2728
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move/from16 v31, v5

    move-object/from16 v32, p3

    move/from16 v38, p4

    invoke-direct/range {v28 .. v38}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;Ljava/lang/String;I)V

    .line 2731
    :cond_237
    return-void
.end method

.method private compToString(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3532
    .local p1, "cmp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "[]"

    goto :goto_a
.end method

.method private getAllUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3641
    .local v0, "id":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_c} :catch_16
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    move-result-object v2

    .line 3645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3647
    :goto_10
    return-object v2

    .line 3645
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3642
    :catch_16
    move-exception v2

    .line 3645
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3647
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;
    .registers 33
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "nativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "vc"    # I
    .param p9, "pkgFlags"    # I
    .param p10, "installUser"    # Landroid/os/UserHandle;
    .param p11, "add"    # Z
    .param p12, "allowInstall"    # Z

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 625
    .local v3, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_9b

    .line 626
    iget-object v4, v3, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 629
    const/high16 v4, 0x40000

    and-int v4, v4, p9

    if-eqz v4, :cond_25

    .line 630
    iget v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 634
    :cond_25
    iget v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_10c

    .line 638
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_53
    :goto_53
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p4

    if-eq v4, v0, :cond_152

    .line 655
    const/4 v5, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " shared user changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_14a

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_79
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p4, :cond_14e

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    :goto_89
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "; replacing with new"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 661
    const/4 v3, 0x0

    .line 671
    :cond_9b
    :goto_9b
    if-nez v3, :cond_256

    .line 672
    if-eqz p2, :cond_15f

    .line 674
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 680
    .restart local v3    # "p":Lcom/android/server/pm/PackageSetting;
    iget-object v15, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 681
    .local v15, "s":Lcom/android/server/pm/PackageSignatures;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    .line 682
    iput-object v15, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 683
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 684
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 685
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 689
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 759
    .end local v15    # "s":Lcom/android/server/pm/PackageSignatures;
    :goto_e7
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gez v4, :cond_248

    .line 760
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 762
    const/4 v4, 0x0

    .line 789
    :goto_10b
    return-object v4

    .line 643
    :cond_10c
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " codePath changed from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_53

    .line 655
    :cond_14a
    const-string v4, "<nothing>"

    goto/16 :goto_79

    :cond_14e
    const-string v4, "<nothing>"

    goto/16 :goto_89

    .line 666
    :cond_152
    const v4, 0x40000001

    and-int v16, p9, v4

    .line 668
    .local v16, "sysPrivFlags":I
    iget v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    or-int v4, v4, v16

    iput v4, v3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    goto/16 :goto_9b

    .line 691
    .end local v16    # "sysPrivFlags":I
    :cond_15f
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    .end local v3    # "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 693
    .restart local v3    # "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 694
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 696
    and-int/lit8 v4, p9, 0x1

    if-nez v4, :cond_1c7

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v19

    .line 703
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v19, :cond_1c7

    if-eqz p12, :cond_1c7

    .line 704
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_18d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 711
    .local v17, "user":Landroid/content/pm/UserInfo;
    if-eqz p10, :cond_1ac

    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1ac

    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_1c5

    :cond_1ac
    const/4 v6, 0x1

    .line 714
    .local v6, "installed":Z
    :goto_1ad
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 720
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_18d

    .line 711
    .end local v6    # "installed":Z
    :cond_1c5
    const/4 v6, 0x0

    goto :goto_1ad

    .line 724
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1c7
    if-eqz p4, :cond_1d1

    .line 725
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_e7

    .line 728
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 729
    .local v13, "dis":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_23e

    .line 734
    iget-object v4, v13, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_1f3

    .line 735
    iget-object v5, v3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v13, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v4}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/pm/Signature;

    iput-object v4, v5, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    .line 737
    :cond_1f3
    iget v4, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 739
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v13, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v19

    .line 742
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v19, :cond_233

    .line 743
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_20a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_233

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 744
    .restart local v17    # "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 745
    .local v18, "userId":I
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Ljava/util/HashSet;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Ljava/util/HashSet;I)V

    .line 747
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Ljava/util/HashSet;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Ljava/util/HashSet;I)V

    goto :goto_20a

    .line 752
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    .end local v18    # "userId":I
    :cond_233
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v3, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_e7

    .line 755
    .end local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_23e
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v4

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    goto/16 :goto_e7

    .line 764
    .end local v13    # "dis":Lcom/android/server/pm/PackageSetting;
    :cond_248
    if-eqz p11, :cond_253

    .line 767
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    :cond_253
    move-object v4, v3

    .line 789
    goto/16 :goto_10b

    .line 770
    :cond_256
    if-eqz p10, :cond_253

    if-eqz p12, :cond_253

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v19

    .line 775
    .restart local v19    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v19, :cond_253

    .line 776
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_264
    :goto_264
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_253

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 777
    .restart local v17    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_281

    invoke-virtual/range {p10 .. p10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v5, :cond_264

    .line 779
    :cond_281
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    .line 780
    .restart local v6    # "installed":Z
    if-nez v6, :cond_264

    .line 781
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 782
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_264
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1021
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateCorruptedFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1031
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/package-restrictions-corrupted.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1017
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-restrictions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateMoreBackupFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1026
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/package-restrictions-more-backup.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserSecretPackagesBackupFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1040
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-secrets-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserSecretPackagesCorruptedFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1050
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/package-secrets-corrupted.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserSecretPackagesFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1036
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "package-secrets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserSecretPackagesMoreBackupFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1045
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/package-secrets-more-backup.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3499
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3500
    .local v0, "N":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1d

    .line 3501
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 3502
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3503
    add-int/lit16 v2, v1, 0x2710

    .line 3513
    :goto_19
    return v2

    .line 3500
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3508
    :cond_1d
    const/16 v2, 0x270f

    if-le v0, v2, :cond_23

    .line 3509
    const/4 v2, -0x1

    goto :goto_19

    .line 3512
    :cond_23
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3513
    add-int/lit16 v2, v0, 0x2710

    goto :goto_19
.end method

.method static final printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .prologue
    .line 3651
    const-string v2, "[ "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p2

    if-ge v0, v2, :cond_24

    .line 3653
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3654
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_21

    .line 3655
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3656
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3652
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 3659
    .end local v1    # "mask":I
    :cond_24
    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3660
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1449
    const/4 v1, 0x0

    .line 1451
    .local v1, "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1454
    .local v2, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3a

    if-ne v4, v7, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_3a

    .line 1456
    :cond_15
    if-eq v4, v7, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 1460
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1462
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, "componentName":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 1464
    if-nez v1, :cond_36

    .line 1465
    new-instance v1, Ljava/util/HashSet;

    .end local v1    # "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1467
    .restart local v1    # "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_36
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1471
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_3a
    return-object v1
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 2811
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2814
    .local v0, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_84

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_84

    .line 2815
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 2819
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2820
    .local v1, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 2821
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2822
    .local v2, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 2823
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v2, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_6

    .line 2826
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 2832
    .end local v2    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :cond_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2834
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 2837
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_84
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3225
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3228
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 3229
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 3233
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3234
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3235
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3236
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 3237
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    .line 3247
    .end local v0    # "name":Ljava/lang/String;
    :goto_36
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 3239
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 3244
    .end local v0    # "name":Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 3249
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2903
    const/4 v6, 0x0

    const-string v22, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2904
    .local v3, "name":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v22, "realName"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2905
    .local v4, "realName":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v22, "codePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2906
    .local v10, "codePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v22, "resourcePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2907
    .local v14, "resourcePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v22, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2908
    .local v7, "nativeLibraryPathStr":Ljava/lang/String;
    if-nez v14, :cond_3a

    .line 2909
    move-object v14, v10

    .line 2911
    :cond_3a
    const/4 v6, 0x0

    const-string/jumbo v22, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2912
    .local v21, "version":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2913
    .local v8, "versionCode":I
    if-eqz v21, :cond_4d

    .line 2915
    :try_start_49
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_4c} :catch_11b

    move-result v8

    .line 2921
    :cond_4d
    const/4 v9, 0x0

    .line 2922
    .local v9, "pkgFlags":I
    or-int/lit8 v9, v9, 0x1

    .line 2923
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2924
    .local v5, "codePathFile":Ljava/io/File;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 2925
    const/high16 v6, 0x40000000

    or-int/lit8 v9, v6, 0x1

    .line 2927
    :cond_5f
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 2929
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v6, 0x0

    const-string v22, "ft"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2930
    .local v19, "timeStampStr":Ljava/lang/String;
    if-eqz v19, :cond_135

    .line 2932
    const/16 v6, 0x10

    :try_start_78
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 2933
    .local v17, "timeStamp":J
    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_83} :catch_128

    .line 2948
    .end local v17    # "timeStamp":J
    :cond_83
    :goto_83
    const/4 v6, 0x0

    const-string v22, "it"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2949
    if-eqz v19, :cond_9c

    .line 2951
    const/16 v6, 0x10

    :try_start_92
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_9c} :catch_15b

    .line 2956
    :cond_9c
    const/4 v6, 0x0

    const-string/jumbo v22, "ut"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2957
    if-eqz v19, :cond_b6

    .line 2959
    const/16 v6, 0x10

    :try_start_ac
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b6} :catch_168

    .line 2964
    :cond_b6
    const/4 v6, 0x0

    const-string/jumbo v22, "userId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2965
    .local v12, "idStr":Ljava/lang/String;
    if-eqz v12, :cond_175

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_c8
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2966
    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v6, :cond_e1

    .line 2967
    const/4 v6, 0x0

    const-string v22, "sharedUserId"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2968
    .local v15, "sharedIdStr":Ljava/lang/String;
    if-eqz v15, :cond_178

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_df
    iput v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2970
    .end local v15    # "sharedIdStr":Ljava/lang/String;
    :cond_e1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 2973
    .local v13, "outerDepth":I
    :cond_e5
    :goto_e5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v6, 0x1

    move/from16 v0, v20

    if-eq v0, v6, :cond_19d

    const/4 v6, 0x3

    move/from16 v0, v20

    if-ne v0, v6, :cond_f9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v13, :cond_19d

    .line 2974
    :cond_f9
    const/4 v6, 0x3

    move/from16 v0, v20

    if-eq v0, v6, :cond_e5

    const/4 v6, 0x4

    move/from16 v0, v20

    if-eq v0, v6, :cond_e5

    .line 2978
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2979
    .local v16, "tagName":Ljava/lang/String;
    const-string v6, "perms"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 2980
    iget-object v6, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_e5

    .line 2916
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "codePathFile":Ljava/io/File;
    .end local v9    # "pkgFlags":I
    .end local v12    # "idStr":Ljava/lang/String;
    .end local v13    # "outerDepth":I
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v19    # "timeStampStr":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_11b
    move-exception v11

    .line 2917
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2934
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "codePathFile":Ljava/io/File;
    .restart local v9    # "pkgFlags":I
    .restart local v19    # "timeStampStr":Ljava/lang/String;
    :catch_128
    move-exception v11

    .line 2935
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2938
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_135
    const/4 v6, 0x0

    const-string/jumbo v22, "ts"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2939
    if-eqz v19, :cond_83

    .line 2941
    :try_start_143
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 2942
    .restart local v17    # "timeStamp":J
    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_14c
    .catch Ljava/lang/NumberFormatException; {:try_start_143 .. :try_end_14c} :catch_14e

    goto/16 :goto_83

    .line 2943
    .end local v17    # "timeStamp":J
    :catch_14e
    move-exception v11

    .line 2944
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2952
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_15b
    move-exception v11

    .line 2953
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2960
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :catch_168
    move-exception v11

    .line 2961
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2965
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "idStr":Ljava/lang/String;
    :cond_175
    const/4 v6, 0x0

    goto/16 :goto_c8

    .line 2968
    .restart local v15    # "sharedIdStr":Ljava/lang/String;
    :cond_178
    const/4 v6, 0x0

    goto/16 :goto_df

    .line 2982
    .end local v15    # "sharedIdStr":Ljava/lang/String;
    .restart local v13    # "outerDepth":I
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v20    # "type":I
    :cond_17b
    const/4 v6, 0x5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown element under <updated-package>: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2984
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_e5

    .line 2988
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_19d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2989
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 12
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3253
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3256
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 3257
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 3261
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3262
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3263
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3264
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 3265
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    .line 3275
    .end local v0    # "name":Ljava/lang/String;
    :goto_36
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 3267
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 3272
    .end local v0    # "name":Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 3277
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, "outPerms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 3343
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3346
    .local v1, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_70

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_70

    .line 3347
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 3351
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3352
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3353
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3354
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 3355
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3365
    .end local v0    # "name":Ljava/lang/String;
    :goto_36
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 3357
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 3362
    .end local v0    # "name":Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_36

    .line 3367
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "ns"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2840
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2842
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 2845
    .end local p4    # "defValue":I
    :goto_6
    return p4

    .restart local p4    # "defValue":I
    :cond_7
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p4

    goto :goto_6

    .line 2846
    :catch_c
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2851
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 39
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2992
    const/16 v24, 0x0

    .line 2993
    .local v24, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2994
    .local v4, "realName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2995
    .local v19, "idStr":Ljava/lang/String;
    const/16 v28, 0x0

    .line 2996
    .local v28, "sharedIdStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2997
    .local v12, "codePathStr":Ljava/lang/String;
    const/16 v27, 0x0

    .line 2998
    .local v27, "resourcePathStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2999
    .local v7, "nativeLibraryPathStr":Ljava/lang/String;
    const/16 v29, 0x0

    .line 3000
    .local v29, "systemStr":Ljava/lang/String;
    const/16 v21, 0x0

    .line 3001
    .local v21, "installerPackageName":Ljava/lang/String;
    const/16 v35, 0x0

    .line 3002
    .local v35, "uidError":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3003
    .local v10, "pkgFlags":I
    const-wide/16 v31, 0x0

    .line 3004
    .local v31, "timeStamp":J
    const-wide/16 v15, 0x0

    .line 3005
    .local v15, "firstInstallTime":J
    const-wide/16 v22, 0x0

    .line 3006
    .local v22, "lastUpdateTime":J
    const/16 v26, 0x0

    .line 3007
    .local v26, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    const/16 v36, 0x0

    .line 3008
    .local v36, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3010
    .local v9, "versionCode":I
    const/4 v3, 0x0

    :try_start_1e
    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3011
    const/4 v3, 0x0

    const-string v5, "realName"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3012
    const/4 v3, 0x0

    const-string/jumbo v5, "userId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3013
    const/4 v3, 0x0

    const-string/jumbo v5, "uidError"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3014
    const/4 v3, 0x0

    const-string v5, "sharedUserId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3015
    const/4 v3, 0x0

    const-string v5, "codePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3016
    const/4 v3, 0x0

    const-string v5, "resourcePath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3017
    const/4 v3, 0x0

    const-string v5, "nativeLibraryPath"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3018
    const/4 v3, 0x0

    const-string/jumbo v5, "version"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_70} :catch_17d

    move-result-object v36

    .line 3019
    if-eqz v36, :cond_77

    .line 3021
    :try_start_73
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_76} :catch_172

    move-result v9

    .line 3026
    :cond_77
    const/4 v3, 0x0

    :try_start_78
    const-string v5, "installer"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3028
    const/4 v3, 0x0

    const-string v5, "flags"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_88} :catch_17d

    move-result-object v29

    .line 3029
    if-eqz v29, :cond_1c8

    .line 3031
    :try_start_8b
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_8e} :catch_1bd

    move-result v10

    .line 3047
    :goto_8f
    const/4 v3, 0x0

    :try_start_90
    const-string v5, "ft"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_97} :catch_17d

    move-result-object v33

    .line 3048
    .local v33, "timeStampStr":Ljava/lang/String;
    if-eqz v33, :cond_1f4

    .line 3050
    const/16 v3, 0x10

    :try_start_9c
    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a1} :catch_1e9

    move-result-wide v31

    .line 3064
    :cond_a2
    :goto_a2
    const/4 v3, 0x0

    :try_start_a3
    const-string v5, "it"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_aa} :catch_17d

    move-result-object v33

    .line 3065
    if-eqz v33, :cond_b5

    .line 3067
    const/16 v3, 0x10

    :try_start_af
    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_b4} :catch_211

    move-result-wide v15

    .line 3072
    :cond_b5
    const/4 v3, 0x0

    :try_start_b6
    const-string/jumbo v5, "ut"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_be} :catch_17d

    move-result-object v33

    .line 3073
    if-eqz v33, :cond_c9

    .line 3075
    const/16 v3, 0x10

    :try_start_c3
    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_c8} :catch_21c

    move-result-wide v22

    .line 3083
    :cond_c9
    if-eqz v19, :cond_227

    :try_start_cb
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3084
    .local v8, "userId":I
    :goto_cf
    if-nez v27, :cond_d3

    .line 3085
    move-object/from16 v27, v12

    .line 3087
    :cond_d3
    if-eqz v4, :cond_d9

    .line 3088
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 3090
    :cond_d9
    if-nez v24, :cond_22a

    .line 3091
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_f6} :catch_17d

    move-object/from16 v2, v26

    .line 3145
    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :goto_f8
    if-eqz v2, :cond_471

    .line 3146
    const-string/jumbo v3, "true"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 3147
    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 3148
    iput-object v7, v2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 3150
    const/4 v3, 0x0

    const-string v5, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3151
    .local v14, "enabledStr":Ljava/lang/String;
    if-eqz v14, :cond_3b6

    .line 3153
    :try_start_116
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V
    :try_end_11f
    .catch Ljava/lang/NumberFormatException; {:try_start_116 .. :try_end_11f} :catch_347

    .line 3173
    :goto_11f
    const/4 v3, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3174
    .local v20, "installStatusStr":Ljava/lang/String;
    if-eqz v20, :cond_137

    .line 3175
    const-string v3, "false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3be

    .line 3176
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 3182
    :cond_137
    :goto_137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v25

    .line 3185
    .local v25, "outerDepth":I
    :cond_13b
    :goto_13b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v34

    .local v34, "type":I
    const/4 v3, 0x1

    move/from16 v0, v34

    if-eq v0, v3, :cond_474

    const/4 v3, 0x3

    move/from16 v0, v34

    if-ne v0, v3, :cond_151

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v25

    if-le v3, v0, :cond_474

    .line 3186
    :cond_151
    const/4 v3, 0x3

    move/from16 v0, v34

    if-eq v0, v3, :cond_13b

    const/4 v3, 0x4

    move/from16 v0, v34

    if-eq v0, v3, :cond_13b

    .line 3190
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 3192
    .local v30, "tagName":Ljava/lang/String;
    const-string v3, "disabled-components"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c3

    .line 3193
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_13b

    .line 3022
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v8    # "userId":I
    .end local v14    # "enabledStr":Ljava/lang/String;
    .end local v20    # "installStatusStr":Ljava/lang/String;
    .end local v25    # "outerDepth":I
    .end local v30    # "tagName":Ljava/lang/String;
    .end local v33    # "timeStampStr":Ljava/lang/String;
    .end local v34    # "type":I
    .restart local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_172
    move-exception v13

    .line 3023
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_173
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_173 .. :try_end_17d} :catch_17d

    .line 3139
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_17d
    move-exception v13

    move-object/from16 v2, v26

    .line 3140
    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    :goto_180
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3143
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3032
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    .restart local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :catch_1bd
    move-exception v13

    .line 3033
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    :try_start_1be
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3037
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_1c8
    const/4 v3, 0x0

    const-string/jumbo v5, "system"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3038
    if-eqz v29, :cond_1e5

    .line 3039
    const-string/jumbo v3, "true"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e3

    const/4 v3, 0x1

    :goto_1e0
    or-int/2addr v10, v3

    goto/16 :goto_8f

    :cond_1e3
    const/4 v3, 0x0

    goto :goto_1e0

    .line 3044
    :cond_1e5
    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_8f

    .line 3051
    .restart local v33    # "timeStampStr":Ljava/lang/String;
    :catch_1e9
    move-exception v13

    .line 3052
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3055
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_1f4
    const/4 v3, 0x0

    const-string/jumbo v5, "ts"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1fd
    .catch Ljava/lang/NumberFormatException; {:try_start_1be .. :try_end_1fd} :catch_17d

    move-result-object v33

    .line 3056
    if-eqz v33, :cond_a2

    .line 3058
    :try_start_200
    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_203
    .catch Ljava/lang/NumberFormatException; {:try_start_200 .. :try_end_203} :catch_206

    move-result-wide v31

    goto/16 :goto_a2

    .line 3059
    :catch_206
    move-exception v13

    .line 3060
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    :try_start_207
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3068
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_211
    move-exception v13

    .line 3069
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3076
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_21c
    move-exception v13

    .line 3077
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3083
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_227
    const/4 v8, 0x0

    goto/16 :goto_cf

    .line 3094
    .restart local v8    # "userId":I
    :cond_22a
    if-nez v12, :cond_24b

    .line 3095
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v26

    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_f8

    .line 3098
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_24b
    if-lez v8, :cond_29c

    .line 3099
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;
    :try_end_262
    .catch Ljava/lang/NumberFormatException; {:try_start_207 .. :try_end_262} :catch_17d

    move-result-object v2

    .line 3105
    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    if-nez v2, :cond_28f

    .line 3106
    const/4 v3, 0x6

    :try_start_266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure adding uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while parsing settings at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_f8

    .line 3139
    :catch_28c
    move-exception v13

    goto/16 :goto_180

    .line 3110
    :cond_28f
    move-wide/from16 v0, v31

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3111
    iput-wide v15, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 3112
    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J
    :try_end_29a
    .catch Ljava/lang/NumberFormatException; {:try_start_266 .. :try_end_29a} :catch_28c

    goto/16 :goto_f8

    .line 3114
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_29c
    if-eqz v28, :cond_310

    .line 3115
    if-eqz v28, :cond_2d7

    :try_start_2a0
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3116
    :goto_2a4
    if-lez v8, :cond_2d9

    .line 3117
    new-instance v2, Lcom/android/server/pm/PendingPackage;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v2 .. v10}, Lcom/android/server/pm/PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    :try_end_2bb
    .catch Ljava/lang/NumberFormatException; {:try_start_2a0 .. :try_end_2bb} :catch_17d

    .line 3120
    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :try_start_2bb
    move-wide/from16 v0, v31

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->setTimeStamp(J)V

    .line 3121
    iput-wide v15, v2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 3122
    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 3123
    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 3124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PendingPackage;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d5
    .catch Ljava/lang/NumberFormatException; {:try_start_2bb .. :try_end_2d5} :catch_28c

    goto/16 :goto_f8

    .line 3115
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_2d7
    const/4 v8, 0x0

    goto :goto_2a4

    .line 3129
    :cond_2d9
    const/4 v3, 0x5

    :try_start_2da
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad sharedId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v2, v26

    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_f8

    .line 3135
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    :cond_310
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_343
    .catch Ljava/lang/NumberFormatException; {:try_start_2da .. :try_end_343} :catch_17d

    move-object/from16 v2, v26

    .end local v26    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    .restart local v2    # "packageSetting":Lcom/android/server/pm/PackageSettingBase;
    goto/16 :goto_f8

    .line 3154
    .restart local v14    # "enabledStr":Ljava/lang/String;
    :catch_347
    move-exception v13

    .line 3155
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_359

    .line 3156
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_11f

    .line 3157
    :cond_359
    const-string v3, "false"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_369

    .line 3158
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_11f

    .line 3159
    :cond_369
    const-string v3, "default"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_379

    .line 3160
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_11f

    .line 3162
    :cond_379
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3166
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3170
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_3b6
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/pm/PackageSettingBase;->setEnabled(IILjava/lang/String;)V

    goto/16 :goto_11f

    .line 3178
    .restart local v20    # "installStatusStr":Ljava/lang/String;
    :cond_3be
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    goto/16 :goto_137

    .line 3194
    .restart local v25    # "outerDepth":I
    .restart local v30    # "tagName":Ljava/lang/String;
    .restart local v34    # "type":I
    :cond_3c3
    const-string v3, "enabled-components"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d7

    .line 3195
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_13b

    .line 3196
    :cond_3d7
    const-string/jumbo v3, "sigs"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ef

    .line 3197
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_13b

    .line 3198
    :cond_3ef
    const-string v3, "perms"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_407

    .line 3199
    iget-object v3, v2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 3200
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_13b

    .line 3201
    :cond_407
    const-string/jumbo v3, "signing-keyset"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_428

    .line 3202
    const/4 v3, 0x0

    const-string v5, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 3203
    .local v17, "id":J
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->addSigningKeySet(J)V

    goto/16 :goto_13b

    .line 3206
    .end local v17    # "id":J
    :cond_428
    const-string v3, "defined-keyset"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_451

    .line 3207
    const/4 v3, 0x0

    const-string v5, "identifier"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 3208
    .restart local v17    # "id":J
    const/4 v3, 0x0

    const-string v5, "alias"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3209
    .local v11, "alias":Ljava/lang/String;
    iget-object v3, v2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1, v11}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_13b

    .line 3211
    .end local v11    # "alias":Ljava/lang/String;
    .end local v17    # "id":J
    :cond_451
    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3213
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_13b

    .line 3219
    .end local v14    # "enabledStr":Ljava/lang/String;
    .end local v20    # "installStatusStr":Ljava/lang/String;
    .end local v25    # "outerDepth":I
    .end local v30    # "tagName":Ljava/lang/String;
    .end local v34    # "type":I
    :cond_471
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3221
    :cond_474
    return-void
.end method

.method private readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 2857
    .local p1, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 2860
    .local v3, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_de

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_de

    .line 2861
    :cond_14
    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    .line 2865
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2866
    .local v7, "tagName":Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 2867
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2868
    .local v2, "name":Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2869
    .local v6, "sourcePackage":Ljava/lang/String;
    const/4 v9, 0x0

    const-string/jumbo v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2870
    .local v5, "ptype":Ljava/lang/String;
    if-eqz v2, :cond_98

    if-eqz v6, :cond_98

    .line 2871
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2872
    .local v1, "dynamic":Z
    new-instance v0, Lcom/android/server/pm/BasePermission;

    if-eqz v1, :cond_96

    const/4 v9, 0x2

    :goto_4b
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2874
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 2876
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    .line 2877
    if-eqz v1, :cond_8c

    .line 2878
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 2879
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2880
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2881
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/pm/Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 2882
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2883
    iget v9, v0, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2884
    iput-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 2886
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_8c
    iget-object v9, v0, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "dynamic":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :goto_91
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2872
    .restart local v1    # "dynamic":Z
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "ptype":Ljava/lang/String;
    .restart local v6    # "sourcePackage":Ljava/lang/String;
    :cond_96
    const/4 v9, 0x0

    goto :goto_4b

    .line 2888
    .end local v1    # "dynamic":Z
    :cond_98
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_91

    .line 2893
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "ptype":Ljava/lang/String;
    .end local v6    # "sourcePackage":Ljava/lang/String;
    :cond_b4
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_91

    .line 2899
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_de
    return-void
.end method

.method private readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 1077
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1080
    .local v0, "outerDepth":I
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_84

    if-ne v3, v6, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_84

    .line 1081
    :cond_15
    if-eq v3, v6, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1085
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1087
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1088
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v4, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 1089
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_6

    .line 1091
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_6

    .line 1097
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1099
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 1102
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_84
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    .line 3280
    const/4 v2, 0x0

    .line 3281
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3282
    .local v1, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3283
    .local v4, "pkgFlags":I
    const/4 v5, 0x0

    .line 3285
    .local v5, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v9, 0x0

    :try_start_7
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3286
    const/4 v9, 0x0

    const-string/jumbo v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3287
    if-eqz v1, :cond_7a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3288
    .local v8, "userId":I
    :goto_1b
    const-string/jumbo v9, "true"

    const/4 v10, 0x0

    const-string/jumbo v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 3289
    or-int/lit8 v4, v4, 0x1

    .line 3291
    :cond_2e
    if-nez v2, :cond_7c

    .line 3292
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_4b} :catch_ae

    .line 3315
    :cond_4b
    :goto_4b
    if-eqz v5, :cond_13c

    .line 3316
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 3319
    .local v3, "outerDepth":I
    :cond_51
    :goto_51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_13f

    if-ne v7, v13, :cond_60

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_13f

    .line 3320
    :cond_60
    if-eq v7, v13, :cond_51

    const/4 v9, 0x4

    if-eq v7, v9, :cond_51

    .line 3324
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3325
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10e

    .line 3326
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_51

    .line 3287
    .end local v3    # "outerDepth":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "userId":I
    :cond_7a
    const/4 v8, 0x0

    goto :goto_1b

    .line 3295
    .restart local v8    # "userId":I
    :cond_7c
    if-nez v8, :cond_e7

    .line 3296
    const/4 v9, 0x5

    :try_start_7f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_ad} :catch_ae

    goto :goto_4b

    .line 3307
    .end local v8    # "userId":I
    :catch_ae
    move-exception v0

    .line 3308
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in package manager settings: package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has bad userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3311
    new-instance v9, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 3301
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "userId":I
    :cond_e7
    :try_start_e7
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_4b

    .line 3302
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_10c} :catch_ae

    goto/16 :goto_4b

    .line 3327
    .restart local v3    # "outerDepth":I
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_10e
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11d

    .line 3328
    iget-object v9, v5, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/pm/Settings;->readGrantedPermissionsLPw(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_51

    .line 3330
    :cond_11d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3332
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_51

    .line 3337
    .end local v3    # "outerDepth":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_13c
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3339
    :cond_13f
    return-void
.end method

.method private removeUserIdLPw(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    .line 987
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_1a

    .line 988
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 989
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 990
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 994
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_14
    :goto_14
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 995
    return-void

    .line 992
    :cond_1a
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newp"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 933
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 934
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_18

    .line 935
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1e

    .line 936
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 937
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 942
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    return-void

    .line 939
    :cond_1e
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_18
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 998
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_14

    .line 999
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1000
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1001
    .local v1, "index":I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_13
    :goto_13
    return-void

    .line 1003
    :cond_14
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method private setFirstAvailableUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 3491
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    .line 3492
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3494
    :cond_6
    return-void
.end method


# virtual methods
.method addComponentOnlyForOwnerUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cmpName"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 393
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 394
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_21

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 395
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :goto_20
    return-void

    .line 398
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 403
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;
    .registers 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "nativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "vc"    # I
    .param p8, "pkgFlags"    # I

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 536
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_29

    .line 537
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, p6, :cond_10

    move-object v1, v0

    .line 551
    :goto_f
    return-object v1

    .line 540
    :cond_10
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 542
    const/4 v1, 0x0

    goto :goto_f

    .line 544
    :cond_29
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    .end local v0    # "p":Lcom/android/server/pm/PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 546
    .restart local v0    # "p":Lcom/android/server/pm/PackageSetting;
    iput p6, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 547
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 548
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 549
    goto :goto_f

    .line 551
    :cond_45
    const/4 v1, 0x0

    goto :goto_f
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2286
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2288
    :cond_d
    return-void
.end method

.method addSharedUserLPw(Ljava/lang/String;II)Lcom/android/server/pm/SharedUserSetting;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;II[I)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;II[I)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "gids"    # [I

    .prologue
    const/4 v2, 0x0

    .line 561
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 562
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v0, :cond_2a

    .line 563
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v1, p2, :cond_11

    move-object v1, v0

    .line 579
    :goto_10
    return-object v1

    .line 566
    :cond_11
    const/4 v1, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v1, v2

    .line 568
    goto :goto_10

    .line 570
    :cond_2a
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 571
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 572
    if-eqz p4, :cond_3b

    .line 573
    invoke-virtual {p4}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 575
    :cond_3b
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 576
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 577
    goto :goto_10

    :cond_48
    move-object v1, v2

    .line 579
    goto :goto_10
.end method

.method createNewPersonaLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)V
    .registers 14
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 3417
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 3418
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x1f9

    invoke-static {v4, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3420
    if-eqz p5, :cond_67

    .line 3421
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3422
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3423
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_63

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 3424
    iget v4, v2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_61

    const/4 v4, 0x1

    :goto_41
    invoke-virtual {v2, v4, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 3428
    :goto_44
    const/4 v3, 0x0

    .line 3429
    .local v3, "seinfo":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_55

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_55

    .line 3430
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 3433
    :cond_55
    iget-object v4, v2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-virtual {p2, v4, v6, p3, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_1a

    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_61
    move v4, v5

    .line 3424
    goto :goto_41

    .line 3426
    :cond_63
    invoke-virtual {v2, v5, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_44

    .line 3438
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_67
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3439
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, v5, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 3440
    const/4 v3, 0x0

    .line 3441
    .restart local v3    # "seinfo":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_91

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_91

    .line 3442
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 3445
    :cond_91
    iget-object v4, v2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-virtual {p2, v4, v6, p3, v3}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_71

    .line 3450
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "seinfo":Ljava/lang/String;
    :cond_9d
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 3451
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3452
    return-void
.end method

.method createNewUserLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;

    .prologue
    const/4 v5, -0x1

    .line 3458
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 3459
    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3461
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 3463
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget v3, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4a

    const/4 v3, 0x1

    :goto_2a
    invoke-virtual {v1, v3, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 3464
    const/4 v2, 0x0

    .line 3465
    .local v2, "seinfo":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3e

    .line 3466
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 3469
    :cond_3e
    iget-object v3, v1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {p2, v3, v4, p3, v2}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;IILjava/lang/String;)I

    goto :goto_17

    .line 3463
    .end local v2    # "seinfo":Ljava/lang/String;
    :cond_4a
    const/4 v3, 0x0

    goto :goto_2a

    .line 3473
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 3474
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3475
    return-void
.end method

.method disableSystemPackageLPw(Ljava/lang/String;)Z
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 485
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 486
    .local v2, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_2a

    .line 487
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an installed package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_29
    :goto_29
    return v3

    .line 490
    :cond_2a
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 492
    .local v0, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_29

    .line 493
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_48

    .line 494
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 496
    :cond_48
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 503
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 504
    const/4 v3, 0x1

    goto :goto_29
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V
    .registers 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p5, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3687
    .local p6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Package ["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3688
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v8, :cond_1ea

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    :goto_e
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3689
    const-string v8, "] ("

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3690
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3691
    const-string v8, "):"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v8, :cond_37

    .line 3694
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  compat name="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3695
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    :cond_37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  userId="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3699
    const-string v8, " gids="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_63

    .line 3701
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  sharedUser="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3703
    :cond_63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  pkg="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3704
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  codePath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  resourcePath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  nativeLibraryPath="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  versionCode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3708
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_b6

    .line 3709
    const-string v8, " targetSdk="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3711
    :cond_b6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3712
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_295

    .line 3713
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  versionName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3714
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  applicationInfo="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3715
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  flags="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 3717
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3718
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  dataDir="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-boolean v8, v8, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    if-eqz v8, :cond_114

    .line 3720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  mOperationPending=true"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    :cond_114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  supportsScreens=["

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3723
    const/4 v1, 0x1

    .line 3724
    .local v1, "first":Z
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_135

    .line 3725
    if-nez v1, :cond_12e

    .line 3726
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3727
    :cond_12e
    const/4 v1, 0x0

    .line 3728
    const-string/jumbo v8, "small"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3730
    :cond_135
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_14c

    .line 3731
    if-nez v1, :cond_146

    .line 3732
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3733
    :cond_146
    const/4 v1, 0x0

    .line 3734
    const-string v8, "medium"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3736
    :cond_14c
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_163

    .line 3737
    if-nez v1, :cond_15d

    .line 3738
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    :cond_15d
    const/4 v1, 0x0

    .line 3740
    const-string v8, "large"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3742
    :cond_163
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x80000

    and-int/2addr v8, v9

    if-eqz v8, :cond_17c

    .line 3743
    if-nez v1, :cond_175

    .line 3744
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3745
    :cond_175
    const/4 v1, 0x0

    .line 3746
    const-string/jumbo v8, "xlarge"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3748
    :cond_17c
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_193

    .line 3749
    if-nez v1, :cond_18d

    .line 3750
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3751
    :cond_18d
    const/4 v1, 0x0

    .line 3752
    const-string v8, "resizeable"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3754
    :cond_193
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_1aa

    .line 3755
    if-nez v1, :cond_1a4

    .line 3756
    const-string v8, ", "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3757
    :cond_1a4
    const/4 v1, 0x0

    .line 3758
    const-string v8, "anyDensity"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3760
    :cond_1aa
    const-string v8, "]"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_1ee

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1ee

    .line 3762
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  libraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c8
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1ee

    .line 3764
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c8

    .line 3688
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_1ea
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    goto/16 :goto_e

    .line 3767
    .restart local v1    # "first":Z
    :cond_1ee
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v8, :cond_229

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_229

    .line 3768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesLibraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_207
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_229

    .line 3770
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    add-int/lit8 v2, v2, 0x1

    goto :goto_207

    .line 3773
    .end local v2    # "i":I
    :cond_229
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v8, :cond_264

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_264

    .line 3775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesOptionalLibraries:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_242
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_264

    .line 3777
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3778
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    add-int/lit8 v2, v2, 0x1

    goto :goto_242

    .line 3781
    .end local v2    # "i":I
    :cond_264
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v8, :cond_295

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_295

    .line 3783
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  usesLibraryFiles:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_27a
    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_295

    .line 3785
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    add-int/lit8 v2, v2, 0x1

    goto :goto_27a

    .line 3789
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  timeStamp="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3790
    iget-wide v8, p3, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 3791
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  firstInstallTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3793
    iget-wide v8, p3, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 3794
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  lastUpdateTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3796
    iget-wide v8, p3, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-virtual {p5, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 3797
    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3798
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v8, :cond_2e2

    .line 3799
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  installerPackageName="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3800
    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    :cond_2e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  signatures="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p3, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3803
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  permissionsFixed="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p3, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3804
    const-string v8, " haveGids="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p3, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3805
    const-string v8, " installStatus="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 3806
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  pkgFlags="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p3, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    sget-object v9, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {p1, v8, v9}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 3807
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3808
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_326
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_401

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3809
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  User "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3810
    const-string v8, " installed="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3811
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3812
    const-string v8, " blocked="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3813
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getBlocked(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3814
    const-string v8, " stopped="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3815
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3816
    const-string v8, " notLaunched="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3817
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Z)V

    .line 3818
    const-string v8, " enabled="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3819
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 3820
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v5

    .line 3821
    .local v5, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v5, :cond_39d

    .line 3822
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    lastDisabledCaller: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3823
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3825
    :cond_39d
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Ljava/util/HashSet;

    move-result-object v0

    .line 3826
    .local v0, "cmp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_3cf

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_3cf

    .line 3827
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    disabledComponents:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3829
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b7

    .line 3832
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "s":Ljava/lang/String;
    :cond_3cf
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Ljava/util/HashSet;

    move-result-object v0

    .line 3833
    if-eqz v0, :cond_326

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_326

    .line 3834
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    enabledComponents:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3e9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_326

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3836
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e9

    .line 3840
    .end local v0    # "cmp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_401
    iget-object v8, p3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_42f

    .line 3841
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "  grantedPermissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3842
    iget-object v8, p3, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_417
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3843
    .restart local v6    # "s":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_417

    .line 3846
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "s":Ljava/lang/String;
    :cond_42f
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 3849
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3850
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3851
    .local v6, "date":Ljava/util/Date;
    const/4 v13, 0x0

    .line 3852
    .local v13, "printedSomething":Z
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v7

    .line 3853
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3854
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_3e

    iget-object v1, v4, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, v4, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3859
    :cond_3e
    if-eqz p2, :cond_47

    .line 3860
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    .line 3863
    :cond_47
    if-nez v13, :cond_5a

    .line 3864
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3865
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 3866
    :cond_52
    const-string v1, "Packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3867
    const/4 v13, 0x1

    .line 3869
    :cond_5a
    const-string v3, "  "

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_1c

    .line 3872
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_63
    const/4 v13, 0x0

    .line 3873
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_d4

    .line 3874
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_76
    :goto_76
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3875
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_9c

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3879
    :cond_9c
    if-nez v13, :cond_af

    .line 3880
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 3881
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 3882
    :cond_a7
    const-string v1, "Renamed packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3883
    const/4 v13, 0x1

    .line 3885
    :cond_af
    const-string v1, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3886
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3887
    const-string v1, " -> "

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3888
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_76

    .line 3892
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d4
    const/4 v13, 0x0

    .line 3893
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_125

    .line 3894
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e7
    :goto_e7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3895
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz p2, :cond_109

    iget-object v1, v4, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    iget-object v1, v4, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 3899
    :cond_109
    if-nez v13, :cond_11c

    .line 3900
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 3901
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 3902
    :cond_114
    const-string v1, "Hidden system packages:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3903
    const/4 v13, 0x1

    .line 3905
    :cond_11c
    const-string v3, "  "

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;)V

    goto :goto_e7

    .line 3908
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_125
    const-string v1, "mPackagesOnlyForOwnerUser:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3909
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_132
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3910
    .local v14, "skipPackage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_132

    .line 3913
    .end local v14    # "skipPackage":Ljava/lang/String;
    :cond_157
    const-string v1, "mComponentsOnlyForOwnerUser:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3914
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_168
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1bd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3915
    .local v12, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3916
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_198
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_168

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3917
    .local v8, "cmp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    cmp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_198

    .line 3920
    .end local v8    # "cmp":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    :cond_1bd
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 3923
    const/4 v2, 0x0

    .line 3924
    .local v2, "printedSomething":Z
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BasePermission;

    .line 3925
    .local v1, "p":Lcom/android/server/pm/BasePermission;
    if-eqz p2, :cond_21

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3928
    :cond_21
    if-nez v2, :cond_32

    .line 3929
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3930
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3931
    :cond_2c
    const-string v3, "Permissions:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3932
    const/4 v2, 0x1

    .line 3934
    :cond_32
    const-string v3, "  Permission ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "] ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3935
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3936
    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3937
    const-string v3, "    sourcePackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3938
    const-string v3, "    uid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3939
    const-string v3, " gids="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3940
    const-string v3, " type="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/pm/BasePermission;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3941
    const-string v3, " prot="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3942
    iget v3, v1, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    if-eqz v3, :cond_99

    .line 3944
    const-string v3, "    packageSetting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3946
    :cond_99
    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_a7

    .line 3947
    const-string v3, "    perm="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3949
    :cond_a7
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v4, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3950
    const-string v3, "    enforced="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3951
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 3954
    .end local v1    # "p":Lcom/android/server/pm/BasePermission;
    :cond_bd
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 3986
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3987
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3988
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 3957
    const/4 v2, 0x0

    .line 3958
    .local v2, "printedSomething":Z
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 3959
    .local v4, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_1f

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    if-ne v4, v5, :cond_b

    .line 3962
    :cond_1f
    if-nez v2, :cond_30

    .line 3963
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 3964
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3965
    :cond_2a
    const-string v5, "Shared users:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3966
    const/4 v2, 0x1

    .line 3968
    :cond_30
    const-string v5, "  SharedUser ["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3969
    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3970
    const-string v5, "] ("

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3971
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3972
    const-string v5, "):"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    const-string v5, "    userId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3974
    iget v5, v4, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 3975
    const-string v5, " gids="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3976
    iget-object v5, v4, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3977
    const-string v5, "    grantedPermissions:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    iget-object v5, v4, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3979
    .local v3, "s":Ljava/lang/String;
    const-string v5, "      "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    .line 3983
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "su":Lcom/android/server/pm/SharedUserSetting;
    :cond_87
    return-void
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1009
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_14

    .line 1010
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1011
    .restart local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1013
    :cond_14
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 511
    .local v9, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v9, :cond_2a

    .line 512
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v10, 0x0

    .line 522
    :goto_29
    return-object v10

    .line 516
    :cond_2a
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3e

    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    .line 517
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 519
    :cond_3e
    iget-object v2, v9, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iget-object v4, v9, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iget-object v5, v9, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v7, v9, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iget v8, v9, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    .line 521
    .local v10, "ret":Lcom/android/server/pm/PackageSetting;
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3585
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3586
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_23

    .line 3587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3589
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 3593
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3594
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3595
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_27

    .line 3596
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown component: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3598
    :cond_27
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 3599
    .local v0, "classNameStr":Ljava/lang/String;
    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method getComponentsOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Ljava/util/ArrayList;
    .registers 19
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    if-nez p1, :cond_b

    .line 324
    const-string v13, "PackageSettings"

    const-string v14, "getComponentsOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v5, 0x0

    .line 387
    :cond_a
    :goto_a
    return-object v5

    .line 327
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/Settings;->mComponentsOnlyForOwnerUser:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 330
    .local v4, "cmp":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_30

    .line 331
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 338
    .end local v4    # "cmp":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_46
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v12

    .line 339
    .local v12, "userState":Landroid/content/pm/PackageUserState;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 340
    .local v7, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v3, 0x0

    .line 343
    .local v3, "bundle":Landroid/os/Bundle;
    if-nez v7, :cond_75

    .line 344
    const-string v13, "PackageSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has not package object"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v5, 0x0

    goto :goto_a

    .line 347
    :cond_75
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_7b
    :goto_7b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 348
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    const/16 v13, 0x80

    move/from16 v0, p2

    invoke-static {v1, v13, v12, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 350
    .local v2, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_7b

    .line 351
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 352
    if-eqz v3, :cond_7b

    const-string v13, "com.samsung.android.multiuser.install_only_owner"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 353
    iget-object v13, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7b

    .line 354
    iget-object v13, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    .line 361
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_ac
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b2
    :goto_b2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Service;

    .line 362
    .local v10, "service":Landroid/content/pm/PackageParser$Service;
    const/16 v13, 0x80

    move/from16 v0, p2

    invoke-static {v10, v13, v12, v0}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    .line 364
    .local v11, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_b2

    .line 365
    iget-object v3, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 366
    if-eqz v3, :cond_b2

    const-string v13, "com.samsung.android.multiuser.install_only_owner"

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_b2

    .line 367
    iget-object v13, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b2

    .line 368
    iget-object v13, v11, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    .line 375
    .end local v10    # "service":Landroid/content/pm/PackageParser$Service;
    .end local v11    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_e3
    iget-object v13, v7, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e9
    :goto_e9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Activity;

    .line 376
    .local v8, "receiver":Landroid/content/pm/PackageParser$Activity;
    const/16 v13, 0x80

    move/from16 v0, p2

    invoke-static {v8, v13, v12, v0}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 378
    .local v9, "receiverInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_e9

    .line 379
    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 380
    if-eqz v3, :cond_e9

    const-string v13, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e9

    .line 381
    iget-object v13, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e9

    .line 382
    iget-object v13, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e9
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3527
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3528
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3577
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3578
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_23

    .line 3579
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3581
    :cond_23
    iget-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v1
.end method

.method getListOfIncompleteInstallPackagesLPr()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2271
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2272
    .local v1, "kList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2273
    .local v0, "its":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2274
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2276
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2277
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_14

    .line 2278
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 2281
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_32
    return-object v4
.end method

.method getPackageLPw(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILandroid/os/UserHandle;Z)Lcom/android/server/pm/PackageSetting;
    .registers 25
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "origPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "nativeLibraryPathString"    # Ljava/lang/String;
    .param p8, "pkgFlags"    # I
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "add"    # Z

    .prologue
    .line 412
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 413
    .local v1, "name":Ljava/lang/String;
    iget v8, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/4 v12, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 416
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    return-object v13
.end method

.method getSharedUserLPw(Ljava/lang/String;IZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "create"    # Z

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 467
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_46

    .line 468
    if-nez p3, :cond_e

    .line 469
    const/4 v1, 0x0

    .line 481
    :goto_d
    return-object v1

    .line 471
    :cond_e
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    .end local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 472
    .restart local v0    # "s":Lcom/android/server/pm/SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 473
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_46

    .line 477
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    move-object v1, v0

    .line 481
    goto :goto_d
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 977
    const/16 v2, 0x2710

    if-lt p1, v2, :cond_17

    .line 978
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 979
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 980
    .local v1, "index":I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 982
    .end local v0    # "N":I
    .end local v1    # "index":I
    :goto_14
    return-object v2

    .line 980
    .restart local v0    # "N":I
    .restart local v1    # "index":I
    :cond_15
    const/4 v2, 0x0

    goto :goto_14

    .line 982
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_14
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 3518
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 3520
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 3523
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    if-nez p1, :cond_c

    .line 289
    const-string v5, "PackageSettings"

    const-string v6, "hasPackageOnlyForOwnerUser needs PackageSetting Object"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_b
    :goto_b
    return v4

    .line 293
    :cond_c
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v4, v5

    .line 294
    goto :goto_b

    .line 299
    :cond_18
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 300
    .local v3, "userState":Landroid/content/pm/PackageUserState;
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 301
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    .line 303
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_b

    .line 307
    const/16 v6, 0x80

    invoke-static {v2, v6, v3, p2}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 310
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_b

    .line 314
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 315
    if-eqz v1, :cond_b

    const-string v6, "com.samsung.android.multiuser.install_only_owner"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v5

    .line 316
    goto :goto_b
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 793
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 796
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 797
    .local v0, "codePath":Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 799
    .local v2, "resourcePath":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 800
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Code path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 803
    iput-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 806
    :cond_4d
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 807
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource path for pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 810
    iput-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 813
    :cond_90
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 814
    .local v1, "nativeLibraryPath":Ljava/lang/String;
    if-eqz v1, :cond_a0

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 816
    iput-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 819
    :cond_a0
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    if-eq v3, v4, :cond_aa

    .line 820
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 823
    :cond_aa
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_b7

    .line 824
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 827
    :cond_b7
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v4, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    if-eq v3, v4, :cond_c5

    .line 828
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v3, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 832
    :cond_c5
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_da

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_da

    .line 833
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageSignatures;->assignSignatures([Landroid/content/pm/Signature;)V

    .line 835
    :cond_da
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;)V

    .line 836
    return-void
.end method

.method installApplicationsForPersonaLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3371
    .local p5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_5c

    .line 3372
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3374
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3375
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_28

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_47

    .line 3376
    :cond_28
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "for KNOX due to missing metadata"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3379
    :cond_47
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3380
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_c

    .line 3384
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_56
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 3385
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3388
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_5c
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 12
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3536
    and-int/lit16 v5, p2, 0x200

    if-eqz v5, :cond_8

    .line 3573
    :cond_7
    :goto_7
    return v3

    .line 3539
    :cond_8
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3540
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 3549
    .local v0, "packageSettings":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_16

    move v3, v4

    .line 3550
    goto :goto_7

    .line 3552
    :cond_16
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    .line 3553
    .local v2, "ustate":Landroid/content/pm/PackageUserState;
    const v5, 0x8000

    and-int/2addr v5, p2

    if-eqz v5, :cond_24

    .line 3554
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_7

    .line 3558
    :cond_24
    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_42

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_42

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v5, v7, :cond_42

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_44

    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_44

    iget v5, v2, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v5, :cond_44

    :cond_42
    move v3, v4

    .line 3563
    goto :goto_7

    .line 3565
    :cond_44
    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v5, :cond_52

    iget-object v5, v2, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3569
    :cond_52
    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v3, :cond_62

    iget-object v3, v2, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    move v3, v4

    .line 3571
    goto :goto_7

    .line 3573
    :cond_62
    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_7
.end method

.method isXmlDamaged(Ljava/io/File;)Z
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 421
    const/4 v3, 0x0

    .line 422
    .local v3, "raf_xmltest":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 424
    .local v2, "isDamaged":Z
    :try_start_2
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_36
    .catchall {:try_start_2 .. :try_end_9} :catchall_5d

    .line 425
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .local v4, "raf_xmltest":Ljava/io/RandomAccessFile;
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xe

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2f

    .line 426
    const/4 v2, 0x1

    .line 427
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "too small "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_71
    .catchall {:try_start_9 .. :try_end_2f} :catchall_6e

    .line 437
    :cond_2f
    if-eqz v4, :cond_34

    :try_start_31
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_69

    :cond_34
    :goto_34
    move-object v3, v4

    .line 440
    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :cond_35
    :goto_35
    return v2

    .line 430
    :catch_36
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    :goto_37
    const/4 v2, 0x1

    .line 432
    :try_start_38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception while reading file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_5d

    .line 437
    if-eqz v3, :cond_35

    :try_start_54
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_35

    .line 438
    :catch_58
    move-exception v1

    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Ljava/io/IOException;
    :catchall_5d
    move-exception v5

    .line 437
    :goto_5e
    if-eqz v3, :cond_63

    :try_start_60
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 436
    :cond_63
    :goto_63
    throw v5

    .line 438
    :catch_64
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .end local v1    # "ie":Ljava/io/IOException;
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_69
    move-exception v1

    .restart local v1    # "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 436
    .end local v1    # "ie":Ljava/io/IOException;
    :catchall_6e
    move-exception v5

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_5e

    .line 430
    .end local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    :catch_71
    move-exception v0

    move-object v3, v4

    .end local v4    # "raf_xmltest":Ljava/io/RandomAccessFile;
    .restart local v3    # "raf_xmltest":Ljava/io/RandomAccessFile;
    goto :goto_37
.end method

.method peekPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method pruneSharedUsersLPw()V
    .registers 8

    .prologue
    .line 583
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v3, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 585
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 586
    .local v4, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v4, :cond_2b

    iget-object v5, v4, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_f

    .line 587
    :cond_2b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 590
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v4    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_46

    .line 591
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 593
    :cond_46
    return-void
.end method

.method readAllUsersPackageRestrictionsLPr()V
    .registers 5

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 1065
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_b

    .line 1066
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 1073
    :cond_a
    return-void

    .line 1070
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1071
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_f
.end method

.method readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 24
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    .prologue
    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2550
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    iget v0, v14, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_e

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 2552
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 2554
    .local v10, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_e

    .line 2555
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 2556
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v14, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2554
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    .line 2563
    .end local v4    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v8    # "i":I
    .end local v10    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v14    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6c
    new-instance v13, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "etc/preferred-apps"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2564
    .local v13, "preferredDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_87

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_88

    .line 2619
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_87
    :goto_87
    return-void

    .line 2567
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_88
    invoke-virtual {v13}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_af

    .line 2568
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Directory "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 2573
    :cond_af
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .local v5, "arr$":[Ljava/io/File;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_b5
    if-ge v9, v11, :cond_87

    aget-object v7, v5, v9

    .line 2574
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f4

    .line 2575
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Non-xml file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " directory, ignoring"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_f1
    :goto_f1
    add-int/lit8 v9, v9, 0x1

    goto :goto_b5

    .line 2578
    :cond_f4
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_11b

    .line 2579
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cannot be read"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    .line 2584
    :cond_11b
    const/4 v15, 0x0

    .line 2586
    .local v15, "str":Ljava/io/FileInputStream;
    :try_start_11c
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_123} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_123} :catch_1de
    .catchall {:try_start_11c .. :try_end_123} :catchall_204

    .line 2587
    .end local v15    # "str":Ljava/io/FileInputStream;
    .local v16, "str":Ljava/io/FileInputStream;
    :try_start_123
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 2588
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2592
    :cond_130
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_144

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_130

    .line 2596
    :cond_144
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_175

    .line 2597
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not have start tag"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_123 .. :try_end_16c} :catch_215
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_16c} :catch_211
    .catchall {:try_start_123 .. :try_end_16c} :catchall_20d

    .line 2611
    if-eqz v16, :cond_f1

    .line 2613
    :try_start_16e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_172

    goto :goto_f1

    .line 2614
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "str":Ljava/io/FileInputStream;
    .end local v17    # "type":I
    :catch_172
    move-exception v18

    goto/16 :goto_f1

    .line 2600
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    .restart local v17    # "type":I
    :cond_175
    :try_start_175
    const-string v18, "preferred-activities"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1a8

    .line 2601
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Preferred apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not start with \'preferred-activities\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_175 .. :try_end_1a1} :catch_215
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_1a1} :catch_211
    .catchall {:try_start_175 .. :try_end_1a1} :catchall_20d

    .line 2611
    if-eqz v16, :cond_f1

    .line 2613
    :try_start_1a3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_172

    goto/16 :goto_f1

    .line 2605
    :cond_1a8
    :try_start_1a8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a8 .. :try_end_1b1} :catch_215
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1b1} :catch_211
    .catchall {:try_start_1a8 .. :try_end_1b1} :catchall_20d

    .line 2611
    if-eqz v16, :cond_f1

    .line 2613
    :try_start_1b3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1b6} :catch_172

    goto/16 :goto_f1

    .line 2606
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "str":Ljava/io/FileInputStream;
    .end local v17    # "type":I
    .restart local v15    # "str":Ljava/io/FileInputStream;
    :catch_1b8
    move-exception v6

    .line 2607
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1b9
    :try_start_1b9
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d7
    .catchall {:try_start_1b9 .. :try_end_1d7} :catchall_204

    .line 2611
    if-eqz v15, :cond_f1

    .line 2613
    :try_start_1d9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1dc} :catch_172

    goto/16 :goto_f1

    .line 2608
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1de
    move-exception v6

    .line 2609
    .local v6, "e":Ljava/io/IOException;
    :goto_1df
    :try_start_1df
    const-string v18, "PackageSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error reading apps file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1fd
    .catchall {:try_start_1df .. :try_end_1fd} :catchall_204

    .line 2611
    if-eqz v15, :cond_f1

    .line 2613
    :try_start_1ff
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_202
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_202} :catch_172

    goto/16 :goto_f1

    .line 2611
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_204
    move-exception v18

    :goto_205
    if-eqz v15, :cond_20a

    .line 2613
    :try_start_207
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_20b

    .line 2611
    :cond_20a
    :goto_20a
    throw v18

    .line 2614
    :catch_20b
    move-exception v19

    goto :goto_20a

    .line 2611
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    :catchall_20d
    move-exception v18

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto :goto_205

    .line 2608
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    :catch_211
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto :goto_1df

    .line 2606
    .end local v15    # "str":Ljava/io/FileInputStream;
    .restart local v16    # "str":Ljava/io/FileInputStream;
    :catch_215
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "str":Ljava/io/FileInputStream;
    goto :goto_1b9
.end method

.method readLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;IZ)Z
    .registers 54
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "sdkVersion"    # I
    .param p4, "onlyCore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 2292
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v42, 0x0

    .line 2293
    .local v42, "str":Ljava/io/FileInputStream;
    const/16 v41, 0x0

    .line 2294
    .local v41, "readXmlFileName":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_e7

    const/16 v32, 0x1

    .line 2296
    .local v32, "mSettingsExists":Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_eb

    const/16 v30, 0x1

    .line 2298
    .local v30, "mBackupSettingsExists":Z
    :goto_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ef

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_ef

    const/16 v31, 0x1

    .line 2301
    .local v31, "mMoreBackupSettingsExists":Z
    :goto_4c
    if-eqz v31, :cond_67

    if-nez v30, :cond_67

    if-nez v32, :cond_67

    .line 2302
    const/4 v3, 0x4

    const-string v4, "Only MoreBackup file"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2304
    const/16 v30, 0x1

    .line 2305
    const/16 v31, 0x0

    .line 2308
    :cond_67
    if-eqz v30, :cond_b0

    .line 2310
    :try_start_69
    new-instance v43, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_74} :catch_5f8

    .line 2311
    .end local v42    # "str":Ljava/io/FileInputStream;
    .local v43, "str":Ljava/io/FileInputStream;
    :try_start_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v41, v0

    .line 2312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    const/4 v3, 0x4

    const-string v4, "Need to read from backup settings file"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2315
    if-eqz v32, :cond_ae

    .line 2319
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_ae} :catch_5fb

    :cond_ae
    move-object/from16 v42, v43

    .line 2328
    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v42    # "str":Ljava/io/FileInputStream;
    :cond_b0
    :goto_b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2332
    if-nez v42, :cond_106

    .line 2333
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 2334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2337
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 2338
    const/4 v3, 0x0

    .line 2544
    :goto_e6
    return v3

    .line 2294
    .end local v30    # "mBackupSettingsExists":Z
    .end local v31    # "mMoreBackupSettingsExists":Z
    .end local v32    # "mSettingsExists":Z
    :cond_e7
    const/16 v32, 0x0

    goto/16 :goto_1c

    .line 2296
    .restart local v32    # "mSettingsExists":Z
    :cond_eb
    const/16 v30, 0x0

    goto/16 :goto_34

    .line 2298
    .restart local v30    # "mBackupSettingsExists":Z
    :cond_ef
    const/16 v31, 0x0

    goto/16 :goto_4c

    .line 2340
    .restart local v31    # "mMoreBackupSettingsExists":Z
    :cond_f3
    new-instance v43, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_fe
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c0 .. :try_end_fe} :catch_177
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_fe} :catch_253
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_fe} :catch_2b0

    .line 2341
    .end local v42    # "str":Ljava/io/FileInputStream;
    .restart local v43    # "str":Ljava/io/FileInputStream;
    :try_start_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v41, v0
    :try_end_104
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fe .. :try_end_104} :catch_5f3
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_104} :catch_5ee
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_104} :catch_5e9

    move-object/from16 v42, v43

    .line 2343
    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v42    # "str":Ljava/io/FileInputStream;
    :cond_106
    :try_start_106
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v39

    .line 2344
    .local v39, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2348
    :cond_112
    invoke-interface/range {v39 .. v39}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v45

    .local v45, "type":I
    const/4 v3, 0x2

    move/from16 v0, v45

    if-eq v0, v3, :cond_120

    const/4 v3, 0x1

    move/from16 v0, v45

    if-ne v0, v3, :cond_112

    .line 2352
    :cond_120
    const/4 v3, 0x2

    move/from16 v0, v45

    if-eq v0, v3, :cond_13d

    .line 2353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    const/4 v3, 0x5

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2356
    const-string v3, "PackageManager"

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const/4 v3, 0x0

    goto :goto_e6

    .line 2361
    :cond_13d
    invoke-interface/range {v39 .. v39}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v37

    .line 2363
    .local v37, "outerDepth":I
    :cond_141
    :goto_141
    invoke-interface/range {v39 .. v39}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v45

    const/4 v3, 0x1

    move/from16 v0, v45

    if-eq v0, v3, :cond_499

    const/4 v3, 0x3

    move/from16 v0, v45

    if-ne v0, v3, :cond_157

    invoke-interface/range {v39 .. v39}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v37

    if-le v3, v0, :cond_499

    .line 2364
    :cond_157
    const/4 v3, 0x3

    move/from16 v0, v45

    if-eq v0, v3, :cond_141

    const/4 v3, 0x4

    move/from16 v0, v45

    if-eq v0, v3, :cond_141

    .line 2368
    invoke-interface/range {v39 .. v39}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v44

    .line 2369
    .local v44, "tagName":Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23c

    .line 2370
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_176
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_106 .. :try_end_176} :catch_177
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_176} :catch_253
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_176} :catch_2b0

    goto :goto_141

    .line 2445
    .end local v37    # "outerDepth":I
    .end local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v44    # "tagName":Ljava/lang/String;
    .end local v45    # "type":I
    :catch_177
    move-exception v22

    .line 2446
    .local v22, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2447
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mCorruptedFilename:Ljava/io/File;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2449
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    .line 2466
    .end local v22    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 2467
    .local v16, "N":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1ce
    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_521

    .line 2468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/pm/PendingPackage;

    .line 2469
    .local v40, "pp":Lcom/android/server/pm/PendingPackage;
    move-object/from16 v0, v40

    iget v3, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v28

    .line 2470
    .local v28, "idObj":Ljava/lang/Object;
    if-eqz v28, :cond_4a7

    move-object/from16 v0, v28

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_4a7

    .line 2471
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    move-object/from16 v7, v28

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    move-object/from16 v0, v40

    iget-object v10, v0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v0, v40

    iget v11, v0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    move-object/from16 v0, v40

    iget v12, v0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/server/pm/Settings;->getPackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IILandroid/os/UserHandle;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v38

    .line 2475
    .local v38, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v38, :cond_49e

    .line 2476
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    iget-object v5, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2467
    .end local v38    # "p":Lcom/android/server/pm/PackageSetting;
    :goto_239
    add-int/lit8 v25, v25, 0x1

    goto :goto_1ce

    .line 2371
    .end local v16    # "N":I
    .end local v25    # "i":I
    .end local v28    # "idObj":Ljava/lang/Object;
    .end local v40    # "pp":Lcom/android/server/pm/PendingPackage;
    .restart local v37    # "outerDepth":I
    .restart local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v44    # "tagName":Ljava/lang/String;
    .restart local v45    # "type":I
    :cond_23c
    :try_start_23c
    const-string v3, "permissions"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 2372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_251
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23c .. :try_end_251} :catch_177
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_251} :catch_253
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_251} :catch_2b0

    goto/16 :goto_141

    .line 2452
    .end local v37    # "outerDepth":I
    .end local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v44    # "tagName":Ljava/lang/String;
    .end local v45    # "type":I
    :catch_253
    move-exception v22

    .line 2453
    .local v22, "e":Ljava/io/IOException;
    :goto_254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2455
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto/16 :goto_1c4

    .line 2373
    .end local v22    # "e":Ljava/io/IOException;
    .restart local v37    # "outerDepth":I
    .restart local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v44    # "tagName":Ljava/lang/String;
    .restart local v45    # "type":I
    :cond_299
    :try_start_299
    const-string v3, "permission-trees"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ff

    .line 2374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/Settings;->readPermissionsLPw(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_299 .. :try_end_2ae} :catch_177
    .catch Ljava/io/IOException; {:try_start_299 .. :try_end_2ae} :catch_253
    .catch Ljava/lang/Exception; {:try_start_299 .. :try_end_2ae} :catch_2b0

    goto/16 :goto_141

    .line 2458
    .end local v37    # "outerDepth":I
    .end local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v44    # "tagName":Ljava/lang/String;
    .end local v45    # "type":I
    :catch_2b0
    move-exception v22

    .line 2459
    .local v22, "e":Ljava/lang/Exception;
    :goto_2b1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mCorruptedFilename:Ljava/io/File;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2462
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto/16 :goto_1c4

    .line 2375
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v37    # "outerDepth":I
    .restart local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v44    # "tagName":Ljava/lang/String;
    .restart local v45    # "type":I
    :cond_2ff
    :try_start_2ff
    const-string v3, "shared-user"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_312

    .line 2376
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_141

    .line 2377
    :cond_312
    const-string v3, "preferred-packages"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_141

    .line 2379
    const-string v3, "preferred-activities"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_330

    .line 2382
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_141

    .line 2383
    :cond_330
    const-string/jumbo v3, "updated-package"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_344

    .line 2384
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_141

    .line 2385
    :cond_344
    const-string v3, "cleaning-package"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38e

    .line 2386
    const/4 v3, 0x0

    const-string v4, "name"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2387
    .local v34, "name":Ljava/lang/String;
    const/4 v3, 0x0

    const-string/jumbo v4, "user"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2388
    .local v48, "userStr":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "code"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_369
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ff .. :try_end_369} :catch_177
    .catch Ljava/io/IOException; {:try_start_2ff .. :try_end_369} :catch_253
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_369} :catch_2b0

    move-result-object v18

    .line 2389
    .local v18, "codeStr":Ljava/lang/String;
    if-eqz v34, :cond_141

    .line 2390
    const/16 v47, 0x0

    .line 2391
    .local v47, "userId":I
    const/16 v17, 0x1

    .line 2393
    .local v17, "andCode":Z
    if-eqz v48, :cond_376

    .line 2394
    :try_start_372
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_375
    .catch Ljava/lang/NumberFormatException; {:try_start_372 .. :try_end_375} :catch_5e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_372 .. :try_end_375} :catch_177
    .catch Ljava/io/IOException; {:try_start_372 .. :try_end_375} :catch_253
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_375} :catch_2b0

    move-result v47

    .line 2398
    :cond_376
    :goto_376
    if-eqz v18, :cond_37c

    .line 2399
    :try_start_378
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 2401
    :cond_37c
    new-instance v3, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v47

    move-object/from16 v1, v34

    move/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    goto/16 :goto_141

    .line 2403
    .end local v17    # "andCode":Z
    .end local v18    # "codeStr":Ljava/lang/String;
    .end local v34    # "name":Ljava/lang/String;
    .end local v47    # "userId":I
    .end local v48    # "userStr":Ljava/lang/String;
    :cond_38e
    const-string v3, "renamed-package"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3bb

    .line 2404
    const/4 v3, 0x0

    const-string v4, "new"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2405
    .local v35, "nname":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "old"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 2406
    .local v36, "oname":Ljava/lang/String;
    if-eqz v35, :cond_141

    if-eqz v36, :cond_141

    .line 2407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_141

    .line 2409
    .end local v35    # "nname":Ljava/lang/String;
    .end local v36    # "oname":Ljava/lang/String;
    :cond_3bb
    const-string v3, "last-platform-version"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_401

    .line 2410
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I
    :try_end_3ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_378 .. :try_end_3ce} :catch_177
    .catch Ljava/io/IOException; {:try_start_378 .. :try_end_3ce} :catch_253
    .catch Ljava/lang/Exception; {:try_start_378 .. :try_end_3ce} :catch_2b0

    .line 2412
    const/4 v3, 0x0

    :try_start_3cf
    const-string v4, "internal"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2413
    .local v29, "internal":Ljava/lang/String;
    if-eqz v29, :cond_3e1

    .line 2414
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    .line 2416
    :cond_3e1
    const/4 v3, 0x0

    const-string v4, "external"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2417
    .local v24, "external":Ljava/lang/String;
    if-eqz v24, :cond_141

    .line 2418
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I
    :try_end_3f4
    .catch Ljava/lang/NumberFormatException; {:try_start_3cf .. :try_end_3f4} :catch_3f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3cf .. :try_end_3f4} :catch_177
    .catch Ljava/io/IOException; {:try_start_3cf .. :try_end_3f4} :catch_253
    .catch Ljava/lang/Exception; {:try_start_3cf .. :try_end_3f4} :catch_2b0

    goto/16 :goto_141

    .line 2420
    .end local v24    # "external":Ljava/lang/String;
    .end local v29    # "internal":Ljava/lang/String;
    :catch_3f6
    move-exception v22

    .line 2421
    .local v22, "e":Ljava/lang/NumberFormatException;
    :try_start_3f7
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2423
    .end local v22    # "e":Ljava/lang/NumberFormatException;
    :cond_401
    const-string/jumbo v3, "verifier"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43e

    .line 2424
    const/4 v3, 0x0

    const-string v4, "device"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_414
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f7 .. :try_end_414} :catch_177
    .catch Ljava/io/IOException; {:try_start_3f7 .. :try_end_414} :catch_253
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_414} :catch_2b0

    move-result-object v19

    .line 2426
    .local v19, "deviceIdentity":Ljava/lang/String;
    :try_start_415
    invoke-static/range {v19 .. v19}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_41d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_415 .. :try_end_41d} :catch_41f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_415 .. :try_end_41d} :catch_177
    .catch Ljava/io/IOException; {:try_start_415 .. :try_end_41d} :catch_253
    .catch Ljava/lang/Exception; {:try_start_415 .. :try_end_41d} :catch_2b0

    goto/16 :goto_141

    .line 2427
    :catch_41f
    move-exception v22

    .line 2428
    .local v22, "e":Ljava/lang/IllegalArgumentException;
    :try_start_420
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discard invalid verifier device id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_141

    .line 2431
    .end local v19    # "deviceIdentity":Ljava/lang/String;
    .end local v22    # "e":Ljava/lang/IllegalArgumentException;
    :cond_43e
    const-string v3, "read-external-storage"

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_463

    .line 2432
    const/4 v3, 0x0

    const-string v4, "enforcement"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2433
    .local v23, "enforcement":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto/16 :goto_141

    .line 2434
    .end local v23    # "enforcement":Ljava/lang/String;
    :cond_463
    const-string v3, "keyset-settings"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_478

    .line 2435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mKeySetManager:Lcom/android/server/pm/KeySetManager;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/android/server/pm/KeySetManager;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_141

    .line 2437
    :cond_478
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v39 .. v39}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-static/range {v39 .. v39}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_141

    .line 2443
    .end local v44    # "tagName":Ljava/lang/String;
    :cond_499
    invoke-virtual/range {v42 .. v42}, Ljava/io/FileInputStream;->close()V
    :try_end_49c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_420 .. :try_end_49c} :catch_177
    .catch Ljava/io/IOException; {:try_start_420 .. :try_end_49c} :catch_253
    .catch Ljava/lang/Exception; {:try_start_420 .. :try_end_49c} :catch_2b0

    goto/16 :goto_1c4

    .line 2480
    .end local v37    # "outerDepth":I
    .end local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v45    # "type":I
    .restart local v16    # "N":I
    .restart local v25    # "i":I
    .restart local v28    # "idObj":Ljava/lang/Object;
    .restart local v38    # "p":Lcom/android/server/pm/PackageSetting;
    .restart local v40    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_49e
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->copyFrom(Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_239

    .line 2481
    .end local v38    # "p":Lcom/android/server/pm/PackageSetting;
    :cond_4a7
    if-eqz v28, :cond_4e5

    .line 2482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2484
    .local v33, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    const/4 v3, 0x6

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_239

    .line 2487
    .end local v33    # "msg":Ljava/lang/String;
    :cond_4e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v40

    iget v4, v0, Lcom/android/server/pm/PendingPackage;->sharedId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2489
    .restart local v33    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2490
    const/4 v3, 0x6

    move-object/from16 v0, v33

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_239

    .line 2493
    .end local v28    # "idObj":Ljava/lang/Object;
    .end local v33    # "msg":Ljava/lang/String;
    .end local v40    # "pp":Lcom/android/server/pm/PendingPackage;
    :cond_521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_53c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_586

    .line 2498
    :cond_53c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 2499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2502
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 2532
    :cond_553
    :goto_553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 2533
    .local v20, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_55f
    :goto_55f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a9

    .line 2534
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 2535
    .local v21, "disabledPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v27

    .line 2536
    .local v27, "id":Ljava/lang/Object;
    if-eqz v27, :cond_55f

    move-object/from16 v0, v27

    instance-of v3, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_55f

    .line 2537
    check-cast v27, Lcom/android/server/pm/SharedUserSetting;

    .end local v27    # "id":Ljava/lang/Object;
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    goto :goto_55f

    .line 2509
    .end local v20    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v21    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_586
    if-nez p2, :cond_58f

    .line 2510
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_553

    .line 2517
    :cond_58f
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_593
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_553

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/UserInfo;

    .line 2518
    .local v46, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v46

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_593

    .line 2541
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v46    # "user":Landroid/content/pm/UserInfo;
    .restart local v20    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_5a9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2544
    const/4 v3, 0x1

    goto/16 :goto_e6

    .line 2396
    .end local v16    # "N":I
    .end local v20    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v25    # "i":I
    .restart local v17    # "andCode":Z
    .restart local v18    # "codeStr":Ljava/lang/String;
    .restart local v34    # "name":Ljava/lang/String;
    .restart local v37    # "outerDepth":I
    .restart local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v44    # "tagName":Ljava/lang/String;
    .restart local v45    # "type":I
    .restart local v47    # "userId":I
    .restart local v48    # "userStr":Ljava/lang/String;
    :catch_5e6
    move-exception v3

    goto/16 :goto_376

    .line 2458
    .end local v17    # "andCode":Z
    .end local v18    # "codeStr":Ljava/lang/String;
    .end local v34    # "name":Ljava/lang/String;
    .end local v37    # "outerDepth":I
    .end local v39    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v42    # "str":Ljava/io/FileInputStream;
    .end local v44    # "tagName":Ljava/lang/String;
    .end local v45    # "type":I
    .end local v47    # "userId":I
    .end local v48    # "userStr":Ljava/lang/String;
    .restart local v43    # "str":Ljava/io/FileInputStream;
    :catch_5e9
    move-exception v22

    move-object/from16 v42, v43

    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v42    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_2b1

    .line 2452
    .end local v42    # "str":Ljava/io/FileInputStream;
    .restart local v43    # "str":Ljava/io/FileInputStream;
    :catch_5ee
    move-exception v22

    move-object/from16 v42, v43

    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v42    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_254

    .line 2445
    .end local v42    # "str":Ljava/io/FileInputStream;
    .restart local v43    # "str":Ljava/io/FileInputStream;
    :catch_5f3
    move-exception v22

    move-object/from16 v42, v43

    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v42    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_178

    .line 2323
    :catch_5f8
    move-exception v3

    goto/16 :goto_b0

    .end local v42    # "str":Ljava/io/FileInputStream;
    .restart local v43    # "str":Ljava/io/FileInputStream;
    :catch_5fb
    move-exception v3

    move-object/from16 v42, v43

    .end local v43    # "str":Ljava/io/FileInputStream;
    .restart local v42    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_b0
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 41
    .param p1, "userId"    # I

    .prologue
    .line 1108
    const/16 v32, 0x0

    .line 1109
    .local v32, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v36

    .line 1110
    .local v36, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v14

    .line 1111
    .local v14, "backupFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateMoreBackupFile(I)Ljava/io/File;

    move-result-object v25

    .line 1112
    .local v25, "moreBackupFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 1114
    .local v16, "curReadingFile":Ljava/io/File;
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_199

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_199

    const/16 v23, 0x1

    .line 1116
    .local v23, "isOrigFileValid":Z
    :goto_22
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_19d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_19d

    const/16 v21, 0x1

    .line 1118
    .local v21, "isBackupFileValid":Z
    :goto_32
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1a1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1a1

    const/16 v22, 0x1

    .line 1121
    .local v22, "isMoreBackupValid":Z
    :goto_44
    if-eqz v22, :cond_78

    if-nez v21, :cond_78

    if-nez v23, :cond_78

    .line 1122
    const-string v5, "XML_CORRUPTED"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Only MoreBackup file:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1125
    .local v24, "message":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1127
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1128
    const/16 v21, 0x1

    .line 1129
    const/16 v22, 0x0

    .line 1132
    .end local v24    # "message":Ljava/lang/String;
    :cond_78
    if-eqz v21, :cond_42a

    .line 1134
    :try_start_7a
    new-instance v33, Ljava/io/FileInputStream;

    move-object/from16 v0, v33

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_81} :catch_1a5

    .line 1135
    .end local v32    # "str":Ljava/io/FileInputStream;
    .local v33, "str":Ljava/io/FileInputStream;
    move-object/from16 v16, v14

    .line 1136
    :try_start_83
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v37, "Reading from backup stopped packages file\n"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string v5, "XML_CORRUPTED"

    const-string v37, "Need to read from backup stopped packages file"

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1140
    .restart local v24    # "message":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1141
    if-eqz v23, :cond_cf

    .line 1145
    const-string v5, "XML_CORRUPTED"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Cleaning up stopped packages file: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1149
    const/4 v5, 0x4

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1150
    const-string v5, "PackageManager"

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->delete()Z
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_cf} :catch_421

    .line 1159
    .end local v24    # "message":Ljava/lang/String;
    :cond_cf
    :goto_cf
    if-nez v33, :cond_426

    .line 1160
    :try_start_d1
    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_20a

    .line 1161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v37, "No stopped packages file found\n"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    const/4 v5, 0x4

    const-string v37, "No stopped packages file; assuming all started"

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_f6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_207

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1170
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz p1, :cond_1aa

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/Settings;->hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 1171
    const-string v5, "PackageSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "set to uninstalled : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V
    :try_end_138
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d1 .. :try_end_138} :catch_139
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_138} :catch_1b8
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_138} :catch_41c

    goto :goto_f6

    .line 1274
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v19    # "i$":Ljava/util/Iterator;
    :catch_139
    move-exception v17

    move-object/from16 v32, v33

    .line 1275
    .end local v33    # "str":Ljava/io/FileInputStream;
    .local v17, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    :goto_13c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error reading: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const-string v5, "XML_CORRUPTED"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error reading stopped packages: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1279
    .restart local v24    # "message":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1280
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateCorruptedFile(I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1281
    const-string v5, "PackageSettings"

    const-string v37, "Error reading package manager stopped packages"

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    .line 1298
    .end local v17    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v24    # "message":Ljava/lang/String;
    :goto_198
    return-void

    .line 1114
    .end local v21    # "isBackupFileValid":Z
    .end local v22    # "isMoreBackupValid":Z
    .end local v23    # "isOrigFileValid":Z
    :cond_199
    const/16 v23, 0x0

    goto/16 :goto_22

    .line 1116
    .restart local v23    # "isOrigFileValid":Z
    :cond_19d
    const/16 v21, 0x0

    goto/16 :goto_32

    .line 1118
    .restart local v21    # "isBackupFileValid":Z
    :cond_1a1
    const/16 v22, 0x0

    goto/16 :goto_44

    .line 1153
    .restart local v22    # "isMoreBackupValid":Z
    :catch_1a5
    move-exception v5

    :goto_1a6
    move-object/from16 v33, v32

    .end local v32    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_cf

    .line 1178
    .restart local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_1aa
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    :try_start_1b3
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V
    :try_end_1b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b3 .. :try_end_1b6} :catch_139
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1b6} :catch_1b8
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b6} :catch_41c

    goto/16 :goto_f6

    .line 1283
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v19    # "i$":Ljava/util/Iterator;
    :catch_1b8
    move-exception v17

    move-object/from16 v32, v33

    .line 1284
    .end local v33    # "str":Ljava/io/FileInputStream;
    .local v17, "e":Ljava/io/IOException;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    :goto_1bb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error reading: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    const/4 v5, 0x6

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error reading settings: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1286
    const-string v5, "PackageSettings"

    const-string v37, "Error reading package manager stopped packages"

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto :goto_198

    .end local v17    # "e":Ljava/io/IOException;
    .end local v32    # "str":Ljava/io/FileInputStream;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    :cond_207
    move-object/from16 v32, v33

    .line 1185
    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    goto :goto_198

    .line 1187
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v32    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    :cond_20a
    :try_start_20a
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_213
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20a .. :try_end_213} :catch_139
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_213} :catch_1b8
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_213} :catch_41c

    .line 1188
    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    move-object/from16 v16, v36

    .line 1190
    :goto_215
    :try_start_215
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v30

    .line 1191
    .local v30, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1195
    :cond_221
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .local v35, "type":I
    const/4 v5, 0x2

    move/from16 v0, v35

    if-eq v0, v5, :cond_22f

    const/4 v5, 0x1

    move/from16 v0, v35

    if-ne v0, v5, :cond_221

    .line 1199
    :cond_22f
    const/4 v5, 0x2

    move/from16 v0, v35

    if-eq v0, v5, :cond_24c

    .line 1200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v37, "No start tag found in package restrictions file\n"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v37, "No start tag found in package manager stopped packages"

    move-object/from16 v0, v37

    invoke-direct {v5, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1274
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "type":I
    :catch_249
    move-exception v17

    goto/16 :goto_13c

    .line 1204
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v35    # "type":I
    :cond_24c
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v28

    .line 1205
    .local v28, "outerDepth":I
    const/4 v4, 0x0

    .line 1207
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    :cond_251
    :goto_251
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    const/4 v5, 0x1

    move/from16 v0, v35

    if-eq v0, v5, :cond_417

    const/4 v5, 0x3

    move/from16 v0, v35

    if-ne v0, v5, :cond_267

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v28

    if-le v5, v0, :cond_417

    .line 1209
    :cond_267
    const/4 v5, 0x3

    move/from16 v0, v35

    if-eq v0, v5, :cond_251

    const/4 v5, 0x4

    move/from16 v0, v35

    if-eq v0, v5, :cond_251

    .line 1214
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 1215
    .local v34, "tagName":Ljava/lang/String;
    const-string v5, "pkg"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3df

    .line 1216
    const/4 v5, 0x0

    const-string v37, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1217
    .local v26, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1218
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_2bd

    .line 1219
    const-string v5, "PackageManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "No package known for stopped package: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-static/range {v30 .. v30}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_251

    .line 1283
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v34    # "tagName":Ljava/lang/String;
    .end local v35    # "type":I
    :catch_2ba
    move-exception v17

    goto/16 :goto_1bb

    .line 1224
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v28    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v34    # "tagName":Ljava/lang/String;
    .restart local v35    # "type":I
    :cond_2bd
    const/4 v5, 0x0

    const-string v37, "enabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1225
    .local v18, "enabledStr":Ljava/lang/String;
    if-nez v18, :cond_34c

    const/4 v6, 0x0

    .line 1227
    .local v6, "enabled":I
    :goto_2cb
    const/4 v5, 0x0

    const-string v37, "enabledCaller"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1229
    .local v11, "enabledCaller":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v37, "inst"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1230
    .local v20, "installedStr":Ljava/lang/String;
    if-nez v20, :cond_352

    const/4 v7, 0x1

    .line 1232
    .local v7, "installed":Z
    :goto_2e4
    const/4 v5, 0x0

    const-string/jumbo v37, "stopped"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1233
    .local v31, "stoppedStr":Ljava/lang/String;
    if-nez v31, :cond_357

    const/4 v8, 0x0

    .line 1235
    .local v8, "stopped":Z
    :goto_2f3
    const/4 v5, 0x0

    const-string v37, "blocked"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1236
    .local v15, "blockedStr":Ljava/lang/String;
    if-nez v15, :cond_35c

    const/4 v10, 0x0

    .line 1238
    .local v10, "blocked":Z
    :goto_301
    const/4 v5, 0x0

    const-string v37, "nl"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1239
    .local v27, "notLaunchedStr":Ljava/lang/String;
    if-nez v31, :cond_361

    const/4 v9, 0x0

    .line 1242
    .local v9, "notLaunched":Z
    :goto_30f
    const/4 v12, 0x0

    .line 1243
    .local v12, "enabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 1245
    .local v13, "disabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v29

    .line 1247
    .local v29, "packageDepth":I
    :cond_315
    :goto_315
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    const/4 v5, 0x1

    move/from16 v0, v35

    if-eq v0, v5, :cond_379

    const/4 v5, 0x3

    move/from16 v0, v35

    if-ne v0, v5, :cond_32b

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move/from16 v0, v29

    if-le v5, v0, :cond_379

    .line 1249
    :cond_32b
    const/4 v5, 0x3

    move/from16 v0, v35

    if-eq v0, v5, :cond_315

    const/4 v5, 0x4

    move/from16 v0, v35

    if-eq v0, v5, :cond_315

    .line 1253
    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 1254
    const-string v5, "enabled-components"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_366

    .line 1255
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object v12

    goto :goto_315

    .line 1225
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "blocked":Z
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v12    # "enabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "disabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "blockedStr":Ljava/lang/String;
    .end local v20    # "installedStr":Ljava/lang/String;
    .end local v27    # "notLaunchedStr":Ljava/lang/String;
    .end local v29    # "packageDepth":I
    .end local v31    # "stoppedStr":Ljava/lang/String;
    :cond_34c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2cb

    .line 1230
    .restart local v6    # "enabled":I
    .restart local v11    # "enabledCaller":Ljava/lang/String;
    .restart local v20    # "installedStr":Ljava/lang/String;
    :cond_352
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_2e4

    .line 1233
    .restart local v7    # "installed":Z
    .restart local v31    # "stoppedStr":Ljava/lang/String;
    :cond_357
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_2f3

    .line 1236
    .restart local v8    # "stopped":Z
    .restart local v15    # "blockedStr":Ljava/lang/String;
    :cond_35c
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_301

    .line 1239
    .restart local v10    # "blocked":Z
    .restart local v27    # "notLaunchedStr":Ljava/lang/String;
    :cond_361
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_30f

    .line 1256
    .restart local v9    # "notLaunched":Z
    .restart local v12    # "enabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "disabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v29    # "packageDepth":I
    :cond_366
    const-string v5, "disabled-components"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_315

    .line 1257
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashSet;

    move-result-object v13

    goto :goto_315

    :cond_379
    move/from16 v5, p1

    .line 1261
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V
    :try_end_37e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_215 .. :try_end_37e} :catch_249
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_37e} :catch_2ba
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_37e} :catch_380

    goto/16 :goto_251

    .line 1288
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "blocked":Z
    .end local v11    # "enabledCaller":Ljava/lang/String;
    .end local v12    # "enabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "disabledComponents":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "blockedStr":Ljava/lang/String;
    .end local v18    # "enabledStr":Ljava/lang/String;
    .end local v20    # "installedStr":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "notLaunchedStr":Ljava/lang/String;
    .end local v28    # "outerDepth":I
    .end local v29    # "packageDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v31    # "stoppedStr":Ljava/lang/String;
    .end local v34    # "tagName":Ljava/lang/String;
    .end local v35    # "type":I
    :catch_380
    move-exception v17

    .line 1289
    .local v17, "e":Ljava/lang/Exception;
    :goto_381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error reading: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const-string v5, "XML_CORRUPTED"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error reading stopped packages: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1293
    .restart local v24    # "message":Ljava/lang/String;
    const/4 v5, 0x4

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1294
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateCorruptedFile(I)Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1295
    const-string v5, "PackageSettings"

    const-string v37, "Error reading package manager stopped packages"

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-static {v5, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->resetSystemServer()V

    goto/16 :goto_198

    .line 1263
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v24    # "message":Ljava/lang/String;
    .restart local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v28    # "outerDepth":I
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v34    # "tagName":Ljava/lang/String;
    .restart local v35    # "type":I
    :cond_3df
    :try_start_3df
    const-string v5, "preferred-activities"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f4

    .line 1264
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_251

    .line 1266
    :cond_3f4
    const-string v5, "PackageManager"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unknown element under <stopped-packages>: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-interface/range {v30 .. v30}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static/range {v30 .. v30}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_251

    .line 1272
    .end local v34    # "tagName":Ljava/lang/String;
    :cond_417
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_41a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3df .. :try_end_41a} :catch_249
    .catch Ljava/io/IOException; {:try_start_3df .. :try_end_41a} :catch_2ba
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_41a} :catch_380

    goto/16 :goto_198

    .line 1288
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v28    # "outerDepth":I
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v32    # "str":Ljava/io/FileInputStream;
    .end local v35    # "type":I
    .restart local v33    # "str":Ljava/io/FileInputStream;
    :catch_41c
    move-exception v17

    move-object/from16 v32, v33

    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_381

    .line 1153
    .end local v32    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    :catch_421
    move-exception v5

    move-object/from16 v32, v33

    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_1a6

    .end local v32    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    :cond_426
    move-object/from16 v32, v33

    .end local v33    # "str":Ljava/io/FileInputStream;
    .restart local v32    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_215

    :cond_42a
    move-object/from16 v33, v32

    .end local v32    # "str":Ljava/io/FileInputStream;
    .restart local v33    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_cf
.end method

.method readPackageSecretsLPr(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 1445
    return-void
.end method

.method readPkgCmpOnlyForOwnerUser()V
    .registers 10

    .prologue
    .line 248
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "lines":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_10
    if-ge v2, v3, :cond_4b

    aget-object v4, v0, v2

    .line 251
    .local v4, "line":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {p0, v4, v7}, Lcom/android/server/pm/Settings;->splitByToken(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Settings$Pare;

    move-result-object v6

    .line 252
    .local v6, "pare":Lcom/android/server/pm/Settings$Pare;
    if-eqz v6, :cond_48

    .line 253
    const-string v7, "package"

    iget-object v8, v6, Lcom/android/server/pm/Settings$Pare;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 254
    iget-object v7, p0, Lcom/android/server/pm/Settings;->mPackagesOnlyForOwnerUser:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/android/server/pm/Settings$Pare;->value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2d
    const-string v7, "component"

    iget-object v8, v6, Lcom/android/server/pm/Settings$Pare;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 257
    iget-object v7, v6, Lcom/android/server/pm/Settings$Pare;->value:Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/Settings;->splitByToken(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Settings$Pare;

    move-result-object v1

    .line 258
    .local v1, "cmpPare":Lcom/android/server/pm/Settings$Pare;
    if-eqz v1, :cond_48

    .line 259
    iget-object v7, v1, Lcom/android/server/pm/Settings$Pare;->key:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/pm/Settings$Pare;->value:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/Settings;->addComponentOnlyForOwnerUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "cmpPare":Lcom/android/server/pm/Settings$Pare;
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 264
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "pare":Lcom/android/server/pm/Settings$Pare;
    :cond_4b
    return-void
.end method

.method readStoppedLPw()V
    .registers 15

    .prologue
    .line 1762
    const/4 v7, 0x0

    .line 1763
    .local v7, "str":Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1c4

    .line 1765
    :try_start_9
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_b9

    .line 1766
    .end local v7    # "str":Ljava/io/FileInputStream;
    .local v8, "str":Ljava/io/FileInputStream;
    :try_start_10
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "Reading from backup stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    const/4 v11, 0x4

    const-string v12, "Need to read from backup stopped packages file"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1769
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_44

    .line 1773
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cleaning up stopped packages file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_44} :catch_1bd

    .line 1783
    :cond_44
    :goto_44
    if-nez v8, :cond_1c1

    .line 1784
    :try_start_46
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_be

    .line 1785
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No stopped packages file found\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    const/4 v11, 0x4

    const-string v12, "No stopped packages file file; assuming all started"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1791
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1792
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1793
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V
    :try_end_7b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_7b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_7b} :catch_1ba

    goto :goto_65

    .line 1847
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    :catch_7c
    move-exception v0

    move-object v7, v8

    .line 1848
    .end local v8    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_7e
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading stopped packages: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1851
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1859
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b8
    return-void

    .line 1777
    :catch_b9
    move-exception v11

    :goto_ba
    move-object v8, v7

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto :goto_44

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_bc
    move-object v7, v8

    .line 1795
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_b8

    .line 1797
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :cond_be
    :try_start_be
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_c5} :catch_7c
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c5} :catch_1ba

    .line 1799
    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    :goto_c5
    :try_start_c5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1800
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1804
    :cond_cd
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_d7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_cd

    .line 1808
    :cond_d7
    const/4 v11, 0x2

    if-eq v10, v11, :cond_ea

    .line 1809
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v12, "No start tag found in stopped packages file\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    const/4 v11, 0x5

    const-string v12, "No start tag found in package manager stopped packages"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_b8

    .line 1847
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    :catch_e8
    move-exception v0

    goto :goto_7e

    .line 1815
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "type":I
    :cond_ea
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1817
    .local v3, "outerDepth":I
    :cond_ee
    :goto_ee
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1b5

    const/4 v11, 0x3

    if-ne v10, v11, :cond_fe

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_1b5

    .line 1819
    :cond_fe
    const/4 v11, 0x3

    if-eq v10, v11, :cond_ee

    const/4 v11, 0x4

    if-eq v10, v11, :cond_ee

    .line 1824
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1825
    .local v9, "tagName":Ljava/lang/String;
    const-string v11, "pkg"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_194

    .line 1826
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1827
    .local v2, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1828
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v6, :cond_17b

    .line 1829
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1830
    const-string v11, "1"

    const/4 v12, 0x0

    const-string v13, "nl"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13a

    .line 1831
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 1837
    :cond_13a
    :goto_13a
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_13d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_13d} :catch_e8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_13d} :catch_13e

    goto :goto_ee

    .line 1853
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_13e
    move-exception v0

    .line 1854
    .local v0, "e":Ljava/io/IOException;
    :goto_13f
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    const/4 v11, 0x6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error reading settings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1856
    const-string v11, "PackageManager"

    const-string v12, "Error reading package manager stopped packages"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b8

    .line 1834
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_17b
    :try_start_17b
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No package known for stopped package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a

    .line 1839
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_194
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 1845
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_1b5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17b .. :try_end_1b8} :catch_e8
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_1b8} :catch_13e

    goto/16 :goto_b8

    .line 1853
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "str":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_1ba
    move-exception v0

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto :goto_13f

    .line 1777
    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :catch_1bd
    move-exception v11

    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_ba

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    :cond_1c1
    move-object v7, v8

    .end local v8    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_c5

    :cond_1c4
    move-object v8, v7

    .end local v7    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_44
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-void
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 915
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3f

    .line 916
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_37

    .line 918
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 919
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_3f

    .line 920
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 922
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 929
    :goto_36
    return v1

    .line 925
    :cond_37
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 926
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_36

    .line 929
    :cond_3f
    const/4 v1, -0x1

    goto :goto_36
.end method

.method removeUserLPr(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 3478
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3479
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3480
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_a

    .line 3482
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    :cond_20
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3483
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 3484
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3485
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v2

    .line 3486
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3487
    return-void
.end method

.method resetSystemServer()V
    .registers 2

    .prologue
    .line 3997
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 3998
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 3999
    return-void
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 449
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_13

    .line 450
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_13

    .line 451
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallStatus(I)V

    .line 454
    :cond_13
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 459
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 460
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 462
    :cond_d
    return-void
.end method

.method setPackageStoppedStateLPw(Ljava/lang/String;ZZII)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "stopped"    # Z
    .param p3, "allowedByPermission"    # Z
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3604
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 3605
    .local v6, "appId":I
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 3606
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v7, :cond_2a

    .line 3607
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3609
    :cond_2a
    if-nez p3, :cond_63

    iget v0, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v6, v0, :cond_63

    .line 3610
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", package uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3622
    :cond_63
    invoke-virtual {v7, p5}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    if-eq v0, p2, :cond_89

    .line 3623
    invoke-virtual {v7, p2, p5}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 3625
    invoke-virtual {v7, p5}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 3626
    iget-object v0, v7, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 3627
    const-string v0, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    iget-object v1, v7, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    new-array v5, v8, [I

    aput p5, v5, v9

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 3631
    :cond_84
    invoke-virtual {v7, v9, p5}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    :cond_87
    move v0, v8

    .line 3635
    :goto_88
    return v0

    :cond_89
    move v0, v9

    goto :goto_88
.end method

.method splitByToken(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Settings$Pare;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "last":I
    if-ne v1, v5, :cond_21

    move-object v0, p1

    .line 273
    .local v0, "key":Ljava/lang/String;
    :goto_8
    if-ne v1, v5, :cond_2a

    const/4 v3, 0x0

    .line 274
    .local v3, "value":Ljava/lang/String;
    :goto_b
    if-eqz v0, :cond_11

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_11
    if-eqz v3, :cond_17

    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 281
    :cond_17
    new-instance v2, Lcom/android/server/pm/Settings$Pare;

    invoke-direct {v2, p0}, Lcom/android/server/pm/Settings$Pare;-><init>(Lcom/android/server/pm/Settings;)V

    .line 282
    .local v2, "pare":Lcom/android/server/pm/Settings$Pare;
    iput-object v0, v2, Lcom/android/server/pm/Settings$Pare;->key:Ljava/lang/String;

    .line 283
    iput-object v3, v2, Lcom/android/server/pm/Settings$Pare;->value:Ljava/lang/String;

    .line 284
    return-object v2

    .line 272
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "pare":Lcom/android/server/pm/Settings$Pare;
    .end local v3    # "value":Ljava/lang/String;
    :cond_21
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    goto :goto_8

    .line 273
    .restart local v0    # "key":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_b
.end method

.method transferPermissionsLPw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "origPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v4, 0x2

    if-ge v1, v4, :cond_3f

    .line 599
    if-nez v1, :cond_39

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 601
    .local v3, "permissions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :goto_9
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 602
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 607
    iput-object p2, v0, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    .line 608
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->packageSetting:Lcom/android/server/pm/PackageSettingBase;

    .line 609
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 610
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_33

    .line 611
    iget-object v4, v0, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 613
    :cond_33
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/pm/BasePermission;->uid:I

    .line 614
    iput-object v5, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    goto :goto_11

    .line 599
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permissions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_39
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    goto :goto_9

    .line 598
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "permissions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 618
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "permissions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/pm/BasePermission;>;"
    :cond_3f
    return-void
.end method

.method unInstallSystemApplicationsForPersonaLILPw(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/io/File;Ljava/util/List;)I
    .registers 12
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/Installer;",
            "I",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3392
    .local p5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 3394
    .local v2, "result":I
    if-eqz p5, :cond_88

    .line 3395
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 3397
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3398
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ps.pkgFlags"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    iget v3, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_65

    .line 3400
    const/4 v3, 0x0

    invoke-virtual {v1, v3, p3}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 3401
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " uninstalled system package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    const/4 v2, 0x0

    goto :goto_d

    .line 3404
    :cond_65
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Ignored pkg. Not a system package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 3409
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_82
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/Settings;->readDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 3410
    invoke-virtual {p0, p3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3412
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_88
    return v2
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 13
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "globalGids"    # [I

    .prologue
    .line 873
    if-eqz p1, :cond_6

    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_e

    .line 874
    :cond_6
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_d
    :goto_d
    return-void

    .line 879
    :cond_e
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_d

    .line 882
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 884
    .local v6, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 885
    .local v1, "eachPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 886
    .local v7, "used":Z
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 889
    iget-object v8, v6, Lcom/android/server/pm/SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 890
    .local v5, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_37

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_37

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 893
    const/4 v7, 0x1

    .line 897
    .end local v5    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_60
    if-nez v7, :cond_1c

    .line 899
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 903
    .end local v1    # "eachPerm":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "used":Z
    :cond_68
    move-object v4, p2

    .line 904
    .local v4, "newGids":[I
    iget-object v8, v6, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 905
    .restart local v1    # "eachPerm":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 906
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_6f

    .line 907
    iget-object v8, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_6f

    .line 910
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "eachPerm":Ljava/lang/String;
    :cond_8c
    iput-object v4, v6, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    goto/16 :goto_d
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 5

    .prologue
    .line 1055
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->getAllUsers()Ljava/util/List;

    move-result-object v2

    .line 1056
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_7

    .line 1061
    :cond_6
    return-void

    .line 1058
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1059
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_b
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2123
    const-string/jumbo v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2124
    const-string v3, "name"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2125
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v3, :cond_19

    .line 2126
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2128
    :cond_19
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2129
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2130
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2131
    const-string/jumbo v3, "ut"

    iget-wide v4, p2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2132
    const-string/jumbo v3, "version"

    iget v4, p2, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2133
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 2134
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2136
    :cond_5f
    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_6a

    .line 2137
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2139
    :cond_6a
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_af

    .line 2140
    const-string/jumbo v3, "userId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2144
    :goto_7a
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2145
    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_bb

    .line 2150
    iget-object v3, p2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_89
    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2151
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 2152
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_89

    .line 2157
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2158
    const-string v3, "name"

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2159
    const-string v3, "item"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_89

    .line 2142
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "name":Ljava/lang/String;
    :cond_af
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7a

    .line 2163
    :cond_bb
    const-string v3, "perms"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2164
    const-string/jumbo v3, "updated-package"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2165
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2234
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2235
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2236
    const-string v3, "alias"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2237
    const-string v3, "identifier"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2238
    const-string v2, "defined-keyset"

    invoke-interface {p1, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    .line 2240
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_42
    return-void
.end method

.method writeLPr()V
    .registers 34

    .prologue
    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_78

    const/16 v19, 0x1

    .line 1868
    .local v19, "mSettingsExists":Z
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_7b

    const/16 v17, 0x1

    .line 1870
    .local v17, "mBackupSettingsExists":Z
    :goto_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_7e

    const/16 v18, 0x1

    .line 1873
    .local v18, "mMoreBackupSettingsExists":Z
    :goto_5a
    if-eqz v19, :cond_229

    .line 1878
    if-nez v17, :cond_217

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v29

    if-nez v29, :cond_81

    .line 1880
    const-string v29, "PackageManager"

    const-string v30, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_77
    :goto_77
    return-void

    .line 1866
    .end local v17    # "mBackupSettingsExists":Z
    .end local v18    # "mMoreBackupSettingsExists":Z
    .end local v19    # "mSettingsExists":Z
    :cond_78
    const/16 v19, 0x0

    goto :goto_1e

    .line 1868
    .restart local v19    # "mSettingsExists":Z
    :cond_7b
    const/16 v17, 0x0

    goto :goto_3c

    .line 1870
    .restart local v17    # "mBackupSettingsExists":Z
    :cond_7e
    const/16 v18, 0x0

    goto :goto_5a

    .line 1884
    .restart local v18    # "mMoreBackupSettingsExists":Z
    :cond_81
    const/16 v17, 0x1

    .line 1898
    :cond_83
    :goto_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 1901
    :try_start_8c
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1902
    .local v9, "fstr":Ljava/io/FileOutputStream;
    new-instance v24, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1905
    .local v24, "str":Ljava/io/BufferedOutputStream;
    new-instance v23, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1906
    .local v23, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v29, "utf-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1907
    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1908
    const-string v29, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v30, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1910
    const/16 v29, 0x0

    const-string v30, "packages"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1912
    const/16 v29, 0x0

    const-string v30, "last-platform-version"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1913
    const/16 v29, 0x0

    const-string v30, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mInternalSdkPlatform:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1914
    const/16 v29, 0x0

    const-string v30, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/Settings;->mExternalSdkPlatform:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1915
    const/16 v29, 0x0

    const-string v30, "last-platform-version"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v29, v0

    if-eqz v29, :cond_165

    .line 1918
    const/16 v29, 0x0

    const-string/jumbo v30, "verifier"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1919
    const/16 v29, 0x0

    const-string v30, "device"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1920
    const/16 v29, 0x0

    const-string/jumbo v30, "verifier"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1923
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a4

    .line 1924
    const/16 v29, 0x0

    const-string v30, "read-external-storage"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    const/16 v30, 0x0

    const-string v31, "enforcement"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_242

    const-string v29, "1"

    :goto_18c
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1927
    const/16 v29, 0x0

    const-string v30, "read-external-storage"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1930
    :cond_1a4
    const/16 v29, 0x0

    const-string v30, "permission-trees"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1bf
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_246

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 1932
    .local v5, "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_1d2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_1d2} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_1d2} :catch_282

    goto :goto_1bf

    .line 2104
    .end local v5    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v9    # "fstr":Ljava/io/FileOutputStream;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v23    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v24    # "str":Ljava/io/BufferedOutputStream;
    :catch_1d3
    move-exception v7

    .line 2105
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v29, "PackageManager"

    const-string v30, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2112
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_77

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    move-result v29

    if-nez v29, :cond_77

    .line 2114
    const-string v29, "PackageManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to clean up mangled file: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 1887
    :cond_217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 1888
    const-string v29, "PackageManager"

    const-string v30, "Preserving older settings backup"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83

    .line 1891
    :cond_229
    if-nez v17, :cond_83

    if-eqz v18, :cond_83

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1893
    const/16 v18, 0x0

    .line 1894
    const/16 v17, 0x1

    goto/16 :goto_83

    .line 1925
    .restart local v9    # "fstr":Ljava/io/FileOutputStream;
    .restart local v23    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24    # "str":Ljava/io/BufferedOutputStream;
    :cond_242
    :try_start_242
    const-string v29, "0"

    goto/16 :goto_18c

    .line 1934
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_246
    const/16 v29, 0x0

    const-string v30, "permission-trees"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1936
    const/16 v29, 0x0

    const-string v30, "permissions"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_26e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_290

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/BasePermission;

    .line 1938
    .restart local v5    # "bp":Lcom/android/server/pm/BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/Settings;->writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    :try_end_281
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_242 .. :try_end_281} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_281} :catch_282

    goto :goto_26e

    .line 2107
    .end local v5    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v9    # "fstr":Ljava/io/FileOutputStream;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v23    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v24    # "str":Ljava/io/BufferedOutputStream;
    :catch_282
    move-exception v7

    .line 2108
    .local v7, "e":Ljava/io/IOException;
    const-string v29, "PackageManager"

    const-string v30, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1df

    .line 1940
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "fstr":Ljava/io/FileOutputStream;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v23    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v24    # "str":Ljava/io/BufferedOutputStream;
    :cond_290
    const/16 v29, 0x0

    :try_start_292
    const-string v30, "permissions"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2ab
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2c1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 1943
    .local v21, "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_2ab

    .line 1946
    .end local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2cf
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2e5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 1947
    .restart local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_2cf

    .line 1950
    .end local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :goto_2f3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_3be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/pm/SharedUserSetting;

    .line 1951
    .local v27, "usr":Lcom/android/server/pm/SharedUserSetting;
    const/16 v29, 0x0

    const-string v30, "shared-user"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1952
    const/16 v29, 0x0

    const-string v30, "name"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1953
    const/16 v29, 0x0

    const-string/jumbo v30, "userId"

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-object/from16 v29, v0

    const-string/jumbo v30, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1956
    const/16 v29, 0x0

    const-string v30, "perms"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1957
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_36c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_3a2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1958
    .local v20, "name":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "item"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1959
    const/16 v29, 0x0

    const-string v30, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1960
    const/16 v29, 0x0

    const-string v30, "item"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_36c

    .line 1962
    .end local v20    # "name":Ljava/lang/String;
    :cond_3a2
    const/16 v29, 0x0

    const-string v30, "perms"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1963
    const/16 v29, 0x0

    const-string v30, "shared-user"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2f3

    .line 1966
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v27    # "usr":Lcom/android/server/pm/SharedUserSetting;
    :cond_3be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_441

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3d4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_441

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageCleanItem;

    .line 1968
    .local v15, "item":Landroid/content/pm/PackageCleanItem;
    iget v0, v15, Landroid/content/pm/PackageCleanItem;->userId:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 1969
    .local v26, "userStr":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "cleaning-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1970
    const/16 v29, 0x0

    const-string v30, "name"

    iget-object v0, v15, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1971
    const/16 v30, 0x0

    const-string v31, "code"

    iget-boolean v0, v15, Landroid/content/pm/PackageCleanItem;->andCode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_43e

    const-string/jumbo v29, "true"

    :goto_415
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1972
    const/16 v29, 0x0

    const-string/jumbo v30, "user"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1973
    const/16 v29, 0x0

    const-string v30, "cleaning-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3d4

    .line 1971
    :cond_43e
    const-string v29, "false"

    goto :goto_415

    .line 1977
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "item":Landroid/content/pm/PackageCleanItem;
    .end local v26    # "userStr":Ljava/lang/String;
    :cond_441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    if-lez v29, :cond_4ac

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_45b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4ac

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1979
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v29, 0x0

    const-string v30, "renamed-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1980
    const/16 v30, 0x0

    const-string v31, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1981
    const/16 v30, 0x0

    const-string v31, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1982
    const/16 v29, 0x0

    const-string v30, "renamed-package"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_45b

    .line 1986
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mKeySetManager:Lcom/android/server/pm/KeySetManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/pm/KeySetManager;->writeKeySetManagerLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1988
    const/16 v29, 0x0

    const-string v30, "packages"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1990
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1992
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1993
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1994
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->close()V

    .line 1998
    if-eqz v18, :cond_4dd

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 2001
    :cond_4dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mMoreBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1b0

    const/16 v31, -0x1

    const/16 v32, -0x1

    invoke-static/range {v29 .. v32}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2008
    new-instance v25, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".tmp"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2009
    .local v25, "tempFile":Ljava/io/File;
    new-instance v16, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 2011
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v28

    .line 2012
    .local v28, "writeTarget":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9    # "fstr":Ljava/io/FileOutputStream;
    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2013
    .restart local v9    # "fstr":Ljava/io/FileOutputStream;
    new-instance v24, Ljava/io/BufferedOutputStream;

    .end local v24    # "str":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_548
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_292 .. :try_end_548} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_548} :catch_282

    .line 2015
    .restart local v24    # "str":Ljava/io/BufferedOutputStream;
    :try_start_548
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v29

    const/16 v30, 0x1b0

    const/16 v31, 0x3e8

    const/16 v32, 0x408

    invoke-static/range {v29 .. v32}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2017
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 2018
    .local v22, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_568
    :goto_568
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_694

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 2019
    .restart local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v29, v0

    if-eqz v29, :cond_58a

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    if-nez v29, :cond_5c4

    .line 2020
    :cond_58a
    const-string v29, "PackageSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Skipping "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " due to missing metadata"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5ac
    .catch Ljava/lang/Exception; {:try_start_548 .. :try_end_5ac} :catch_5ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_548 .. :try_end_5ac} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_548 .. :try_end_5ac} :catch_282

    goto :goto_568

    .line 2095
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :catch_5ad
    move-exception v7

    .line 2096
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5ae
    const-string v29, "PackageSettings"

    const-string v30, "Failed to write packages.list"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2097
    invoke-static/range {v24 .. v24}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2098
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2101
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_5bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V
    :try_end_5c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5ae .. :try_end_5c2} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_5ae .. :try_end_5c2} :catch_282

    goto/16 :goto_77

    .line 2024
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_5c4
    :try_start_5c4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2025
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2026
    .local v6, "dataPath":Ljava/lang/String;
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x2

    if-eqz v29, :cond_66b

    const/4 v14, 0x1

    .line 2046
    .local v14, "isDebug":Z
    :goto_5d9
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/PackageSetting;->getGids()[I

    move-result-object v10

    .line 2051
    .local v10, "gids":[I
    const-string v29, " "

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    if-gez v29, :cond_568

    .line 2070
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2071
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    const-string v29, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2074
    if-eqz v14, :cond_66e

    const-string v29, " 1 "

    :goto_613
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    const-string v29, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2077
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    const-string v29, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    if-eqz v10, :cond_671

    array-length v0, v10

    move/from16 v29, v0

    if-lez v29, :cond_671

    .line 2080
    const/16 v29, 0x0

    aget v29, v10, v29

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2081
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_64f
    array-length v0, v10

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v11, v0, :cond_67a

    .line 2082
    const-string v29, ","

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    aget v29, v10, v11

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2081
    add-int/lit8 v11, v11, 0x1

    goto :goto_64f

    .line 2026
    .end local v10    # "gids":[I
    .end local v11    # "i":I
    .end local v14    # "isDebug":Z
    :cond_66b
    const/4 v14, 0x0

    goto/16 :goto_5d9

    .line 2074
    .restart local v10    # "gids":[I
    .restart local v14    # "isDebug":Z
    :cond_66e
    const-string v29, " 0 "

    goto :goto_613

    .line 2086
    :cond_671
    const-string v29, "none"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    :cond_67a
    const-string v29, "\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    goto/16 :goto_568

    .line 2091
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "dataPath":Ljava/lang/String;
    .end local v10    # "gids":[I
    .end local v14    # "isDebug":Z
    .end local v21    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_694
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2092
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2093
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedOutputStream;->close()V

    .line 2094
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_6a0
    .catch Ljava/lang/Exception; {:try_start_5c4 .. :try_end_6a0} :catch_5ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c4 .. :try_end_6a0} :catch_1d3
    .catch Ljava/io/IOException; {:try_start_5c4 .. :try_end_6a0} :catch_282

    goto/16 :goto_5bf
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2169
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2170
    const-string v2, "name"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2171
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 2172
    const-string v2, "realName"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2174
    :cond_18
    const-string v2, "codePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2175
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2176
    const-string v2, "resourcePath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2178
    :cond_30
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 2179
    const-string v2, "nativeLibraryPath"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    :cond_3b
    const-string v2, "flags"

    iget v3, p2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2182
    const-string v2, "ft"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2183
    const-string v2, "it"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2184
    const-string/jumbo v2, "ut"

    iget-wide v3, p2, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2185
    const-string/jumbo v2, "version"

    iget v3, p2, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2186
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_e2

    .line 2187
    const-string/jumbo v2, "userId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    :goto_84
    iget-boolean v2, p2, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    if-eqz v2, :cond_91

    .line 2192
    const-string/jumbo v2, "uidError"

    const-string/jumbo v3, "true"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2194
    :cond_91
    iget v2, p2, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    if-nez v2, :cond_9c

    .line 2195
    const-string v2, "installStatus"

    const-string v3, "false"

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2197
    :cond_9c
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_a7

    .line 2198
    const-string v2, "installer"

    iget-object v3, p2, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    :cond_a7
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v3, "sigs"

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2201
    iget v2, p2, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_f3

    .line 2202
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2203
    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v2, :cond_ee

    .line 2208
    iget-object v2, p2, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2209
    .local v1, "name":Ljava/lang/String;
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2210
    const-string v2, "name"

    invoke-interface {p1, v5, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2211
    const-string v2, "item"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c6

    .line 2189
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    :cond_e2
    const-string v2, "sharedUserId"

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_84

    .line 2214
    :cond_ee
    const-string v2, "perms"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2217
    :cond_f3
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeSigningKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2218
    iget-object v2, p2, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2220
    const-string v2, "package"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2221
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 30
    .param p1, "userId"    # I

    .prologue
    .line 1494
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v26

    .line 1495
    .local v26, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v12

    .line 1496
    .local v12, "backupFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateMoreBackupFile(I)Ljava/io/File;

    move-result-object v22

    .line 1498
    .local v22, "moreBackupFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_60

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_60

    const/16 v21, 0x1

    .line 1500
    .local v21, "isOrigFileValid":Z
    :goto_1e
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_63

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_63

    const/16 v19, 0x1

    .line 1502
    .local v19, "isBackupFileValid":Z
    :goto_2e
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_66

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->isXmlDamaged(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_66

    const/16 v20, 0x1

    .line 1504
    .local v20, "isMoreBackupValid":Z
    :goto_40
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1506
    if-eqz v21, :cond_250

    .line 1511
    if-nez v19, :cond_244

    .line 1512
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 1513
    const-string v4, "PackageManager"

    const-string v5, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_5f
    :goto_5f
    return-void

    .line 1498
    .end local v19    # "isBackupFileValid":Z
    .end local v20    # "isMoreBackupValid":Z
    .end local v21    # "isOrigFileValid":Z
    :cond_60
    const/16 v21, 0x0

    goto :goto_1e

    .line 1500
    .restart local v21    # "isOrigFileValid":Z
    :cond_63
    const/16 v19, 0x0

    goto :goto_2e

    .line 1502
    .restart local v19    # "isBackupFileValid":Z
    :cond_66
    const/16 v20, 0x0

    goto :goto_40

    .line 1517
    .restart local v20    # "isMoreBackupValid":Z
    :cond_69
    const/16 v19, 0x1

    .line 1532
    :cond_6b
    :goto_6b
    :try_start_6b
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1533
    .local v16, "fstr":Ljava/io/FileOutputStream;
    new-instance v25, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1535
    .local v25, "str":Ljava/io/BufferedOutputStream;
    new-instance v24, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1536
    .local v24, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1537
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1538
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1540
    const/4 v4, 0x0

    const-string v5, "package-restrictions"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b3
    :goto_b3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_304

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1543
    .local v3, "pkg":Lcom/android/server/pm/PackageSetting;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v27

    .line 1545
    .local v27, "ustate":Landroid/content/pm/PackageUserState;
    if-eqz p1, :cond_10f

    .line 1546
    const/16 v4, 0x64

    move/from16 v0, p1

    if-ge v0, v4, :cond_25f

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/Settings;->hasPackageOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v4

    if-eqz v4, :cond_25f

    .line 1547
    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set to uninstalled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    move-object/from16 v0, v27

    iget v5, v0, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v6, 0x0

    move-object/from16 v0, v27

    iget-boolean v7, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    move-object/from16 v0, v27

    iget-boolean v8, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v10, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    move-object/from16 v0, v27

    iget-object v11, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/PackageSetting;->setUserState(IIZZZLjava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1567
    :cond_10f
    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    if-nez v4, :cond_14d

    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-nez v4, :cond_14d

    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_14d

    move-object/from16 v0, v27

    iget v4, v0, Landroid/content/pm/PackageUserState;->enabled:I

    if-nez v4, :cond_14d

    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->blocked:Z

    if-nez v4, :cond_14d

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v4, :cond_13d

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_14d

    :cond_13d
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v4, :cond_b3

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_b3

    .line 1574
    :cond_14d
    const/4 v4, 0x0

    const-string v5, "pkg"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    const/4 v4, 0x0

    const-string v5, "name"

    iget-object v6, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1578
    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_16f

    .line 1579
    const/4 v4, 0x0

    const-string v5, "inst"

    const-string v6, "false"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1581
    :cond_16f
    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v4, :cond_181

    .line 1582
    const/4 v4, 0x0

    const-string/jumbo v5, "stopped"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1584
    :cond_181
    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v4, :cond_192

    .line 1585
    const/4 v4, 0x0

    const-string v5, "nl"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    :cond_192
    move-object/from16 v0, v27

    iget-boolean v4, v0, Landroid/content/pm/PackageUserState;->blocked:Z

    if-eqz v4, :cond_1a3

    .line 1588
    const/4 v4, 0x0

    const-string v5, "blocked"

    const-string/jumbo v6, "true"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1590
    :cond_1a3
    move-object/from16 v0, v27

    iget v4, v0, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v4, :cond_1cb

    .line 1591
    const/4 v4, 0x0

    const-string v5, "enabled"

    move-object/from16 v0, v27

    iget v6, v0, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1593
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v4, :cond_1cb

    .line 1594
    const/4 v4, 0x0

    const-string v5, "enabledCaller"

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    :cond_1cb
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    if-eqz v4, :cond_2ab

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2ab

    .line 1600
    const/4 v4, 0x0

    const-string v5, "enabled-components"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1601
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1eb
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1602
    .local v23, "name":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "item"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1603
    const/4 v4, 0x0

    const-string v5, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1604
    const/4 v4, 0x0

    const-string v5, "item"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_211} :catch_212

    goto :goto_1eb

    .line 1645
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "fstr":Ljava/io/FileOutputStream;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v25    # "str":Ljava/io/BufferedOutputStream;
    .end local v27    # "ustate":Landroid/content/pm/PackageUserState;
    :catch_212
    move-exception v15

    .line 1646
    .local v15, "e":Ljava/io/IOException;
    const-string v4, "PackageManager"

    const-string v5, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1652
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1653
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1654
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clean up mangled file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 1520
    .end local v15    # "e":Ljava/io/IOException;
    :cond_244
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1521
    const-string v4, "PackageManager"

    const-string v5, "Preserving older stopped packages backup"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 1524
    :cond_250
    if-nez v19, :cond_6b

    if-eqz v20, :cond_6b

    .line 1525
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1526
    const/16 v20, 0x0

    .line 1527
    const/16 v19, 0x1

    goto/16 :goto_6b

    .line 1558
    .restart local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .restart local v16    # "fstr":Ljava/io/FileOutputStream;
    .restart local v24    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v25    # "str":Ljava/io/BufferedOutputStream;
    .restart local v27    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_25f
    :try_start_25f
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/Settings;->getComponentsOnlyForOwnerUser(Lcom/android/server/pm/PackageSetting;I)Ljava/util/ArrayList;

    move-result-object v14

    .line 1559
    .local v14, "componentsOnlyForOwnerUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_10f

    .line 1560
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_26d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1561
    .local v13, "cmp":Ljava/lang/String;
    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable cmp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "in pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    move/from16 v0, p1

    invoke-virtual {v3, v13, v0}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_26d

    .line 1606
    .end local v13    # "cmp":Ljava/lang/String;
    .end local v14    # "componentsOnlyForOwnerUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2a3
    const/4 v4, 0x0

    const-string v5, "enabled-components"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1608
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_2ab
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    if-eqz v4, :cond_2fa

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2fa

    .line 1610
    const/4 v4, 0x0

    const-string v5, "disabled-components"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1611
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_2cb
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1612
    .restart local v23    # "name":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "item"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1613
    const/4 v4, 0x0

    const-string v5, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v4, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1614
    const/4 v4, 0x0

    const-string v5, "item"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2cb

    .line 1616
    .end local v23    # "name":Ljava/lang/String;
    :cond_2f2
    const/4 v4, 0x0

    const-string v5, "disabled-components"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1618
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_2fa
    const/4 v4, 0x0

    const-string v5, "pkg"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_b3

    .line 1622
    .end local v3    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "ustate":Landroid/content/pm/PackageUserState;
    :cond_304
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 1624
    const/4 v4, 0x0

    const-string v5, "package-restrictions"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1626
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1628
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1629
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1630
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedOutputStream;->close()V

    .line 1634
    if-eqz v20, :cond_327

    .line 1635
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 1637
    :cond_327
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1638
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_337
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_337} :catch_212

    goto/16 :goto_5f
.end method

.method writePackageSecretsLPr(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 1757
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/BasePermission;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2244
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_66

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 2245
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2246
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2247
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/pm/BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2248
    iget v1, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    if-eqz v1, :cond_2c

    .line 2249
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/pm/BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2254
    :cond_2c
    iget v1, p2, Lcom/android/server/pm/BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_61

    .line 2255
    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_67

    iget-object v1, p2, Lcom/android/server/pm/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2256
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    :goto_39
    if-eqz v0, :cond_61

    .line 2257
    const-string/jumbo v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2258
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_52

    .line 2259
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2261
    :cond_52
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_61

    .line 2262
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2266
    .end local v0    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_61
    const-string v1, "item"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2268
    :cond_66
    return-void

    .line 2255
    :cond_67
    iget-object v0, p2, Lcom/android/server/pm/BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    goto :goto_39
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1476
    const-string v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1477
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1478
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v2, :cond_32

    .line 1479
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivity;

    .line 1480
    .local v1, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1481
    invoke-virtual {v1, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1482
    const-string v3, "item"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_18

    .line 1485
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_32
    const-string v3, "preferred-activities"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1486
    return-void
.end method

.method writeSigningKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 11
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2225
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getSigningKeySets()[J

    move-result-object v0

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v4, :cond_23

    aget-wide v2, v0, v1

    .line 2226
    .local v2, "id":J
    const-string/jumbo v5, "signing-keyset"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2227
    const-string v5, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2228
    const-string/jumbo v5, "signing-keyset"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2225
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2230
    .end local v2    # "id":J
    :cond_23
    return-void
.end method
