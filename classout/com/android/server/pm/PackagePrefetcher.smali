.class public Lcom/android/server/pm/PackagePrefetcher;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    }
.end annotation


# static fields
.field static final LOG_PREF_PREFETCH:Ljava/lang/String; = "PREFETCH"

.field private static final NUM_THREADS:I = 0x1e

.field static final TAG:Ljava/lang/String; = "PackagePrefetcher"

.field private static sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;


# instance fields
.field private final mAppDirs:[Ljava/io/File;

.field private mHasSettingsFile:Z

.field private mParseFlags:I

.field private final mPrefetchedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

.field private volatile mReadPermissionsFinished:Z

.field private volatile mReadPermissionsStarted:Z

.field private volatile mScanFinished:Z

.field private nSeparateProcessesInner:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v7, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    .line 46
    iput-boolean v7, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsStarted:Z

    .line 47
    iput-boolean v7, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsFinished:Z

    .line 48
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->hasSettingsFile()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    .line 50
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "app"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    .line 115
    new-instance v3, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;-><init>(Lcom/android/server/pm/PackagePrefetcher;)V

    iput-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    .line 117
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "separateProcesses":Ljava/lang/String;
    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8b

    .line 123
    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 124
    const/16 v0, 0x8

    .line 125
    .local v0, "nDefParseFlags":I
    const/4 v1, 0x0

    .line 126
    .local v1, "nSeparateProcesses":[Ljava/lang/String;
    const-string v3, "PackagePrefetcher"

    const-string v4, "PREFETCH"

    const-string v5, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_64
    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->nSeparateProcessesInner:[Ljava/lang/String;

    .line 140
    or-int/lit8 v3, v0, 0x41

    iput v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:I

    .line 142
    return-void

    .line 129
    .end local v0    # "nDefParseFlags":I
    .end local v1    # "nSeparateProcesses":[Ljava/lang/String;
    :cond_6b
    const/4 v0, 0x0

    .line 130
    .restart local v0    # "nDefParseFlags":I
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1    # "nSeparateProcesses":[Ljava/lang/String;
    const-string v3, "PackagePrefetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running with debug.separate_processes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 135
    .end local v0    # "nDefParseFlags":I
    .end local v1    # "nSeparateProcesses":[Ljava/lang/String;
    :cond_8b
    const/4 v0, 0x0

    .line 136
    .restart local v0    # "nDefParseFlags":I
    const/4 v1, 0x0

    .restart local v1    # "nSeparateProcesses":[Ljava/lang/String;
    goto :goto_64
.end method

.method static synthetic access$000(Lcom/android/server/pm/PackagePrefetcher;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->nSeparateProcessesInner:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackagePrefetcher;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p1, "x1"    # Landroid/content/pm/PackageParser;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/pm/PackagePrefetcher;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackagePrefetcher;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/pm/PackagePrefetcher;->readPermissions()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/pm/PackagePrefetcher;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackagePrefetcher;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsFinished:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/PackagePrefetcher;
    .registers 2

    .prologue
    .line 107
    const-class v1, Lcom/android/server/pm/PackagePrefetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    if-nez v0, :cond_e

    .line 108
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {v0}, Lcom/android/server/pm/PackagePrefetcher;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    .line 110
    :cond_e
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasSettingsFile()Z
    .registers 6

    .prologue
    .line 549
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 550
    .local v1, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    .local v4, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "packages.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 552
    .local v3, "settingsFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "packages-backup.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .local v0, "backupSettingsFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "packages-more-backup.xml"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v2, "moreBackupSettingsFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 558
    :cond_32
    const/4 v5, 0x1

    .line 560
    :goto_33
    return v5

    :cond_34
    const/4 v5, 0x0

    goto :goto_33
.end method

.method private preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 9
    .param p1, "pp"    # Landroid/content/pm/PackageParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v5, 0x1

    .line 528
    const/4 v0, 0x0

    .line 531
    .local v0, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-boolean v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    if-nez v1, :cond_4f

    .line 532
    iget v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:I

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 533
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .line 545
    .restart local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    :goto_14
    return-object v0

    .line 535
    :cond_15
    const-string v1, "PackagePrefetcher"

    const-string v2, "PREFETCH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faild collect cert : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/PackageParser;->getParseError()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-direct {v0, p0, p2, v5}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .restart local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_14

    .line 541
    :cond_4f
    const-string v1, "PackagePrefetcher"

    const-string v2, "PREFETCH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "need to collect cert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-direct {v0, p0, p2, v5}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .restart local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_14
.end method

.method private prefetchInner(Ljava/io/File;)V
    .registers 7
    .param p1, "appDir"    # Ljava/io/File;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    .line 168
    .local v1, "numAppFiles":I
    div-int/lit8 v2, v1, 0x1e

    .line 170
    .local v2, "quota":I
    if-lez v2, :cond_19

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_19

    .line 172
    mul-int v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v2

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/PackagePrefetcher;->startPrefetch(Ljava/io/File;II)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 175
    .end local v0    # "i":I
    :cond_19
    mul-int/lit8 v3, v2, 0x1e

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/pm/PackagePrefetcher;->startPrefetch(Ljava/io/File;II)V

    .line 176
    return-void
.end method

.method private prefetchPermissionsInner()V
    .registers 4

    .prologue
    .line 302
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackagePrefetcher$2;-><init>(Lcom/android/server/pm/PackagePrefetcher;)V

    const-string v2, "PrefetchPermissions"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 309
    .local v0, "th":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    return-void
.end method

.method private readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 492
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 495
    iget-object v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v6, v6, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 496
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_1f

    .line 497
    new-instance v0, Lcom/android/server/pm/BasePermission;

    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 499
    .restart local v0    # "bp":Lcom/android/server/pm/BasePermission;
    iget-object v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v6, v6, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 504
    .local v3, "outerDepth":I
    :cond_23
    :goto_23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v9, :cond_77

    if-ne v5, v10, :cond_31

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_77

    .line 506
    :cond_31
    if-eq v5, v10, :cond_23

    const/4 v6, 0x4

    if-eq v5, v6, :cond_23

    .line 511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 513
    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "gidStr":Ljava/lang/String;
    if-eqz v2, :cond_5a

    .line 515
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .line 516
    .local v1, "gid":I
    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    .line 522
    .end local v1    # "gid":I
    .end local v2    # "gidStr":Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_23

    .line 518
    .restart local v2    # "gidStr":Ljava/lang/String;
    :cond_5a
    const-string v6, "PackagePrefetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 524
    .end local v2    # "gidStr":Ljava/lang/String;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_77
    return-void
.end method

.method private readPermissions()V
    .registers 10

    .prologue
    .line 315
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .local v4, "libraryDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_36

    .line 317
    :cond_17
    const-string v6, "PackagePrefetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_35
    return-void

    .line 320
    :cond_36
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 321
    const-string v6, "PackagePrefetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 326
    :cond_5b
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_61
    if-ge v2, v3, :cond_d2

    aget-object v1, v0, v2

    .line 328
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 326
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 332
    :cond_74
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a9

    .line 333
    const-string v6, "PackagePrefetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 336
    :cond_a9
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_ce

    .line 337
    const-string v6, "PackagePrefetcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permissions library file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 341
    :cond_ce
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackagePrefetcher;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_71

    .line 345
    .end local v1    # "f":Ljava/io/File;
    :cond_d2
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v5, "permFile":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackagePrefetcher;->readPermissionsFromXml(Ljava/io/File;)V

    goto/16 :goto_35
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .registers 23
    .param p1, "permFile"    # Ljava/io/File;

    .prologue
    .line 351
    const/4 v12, 0x0

    .line 353
    .local v12, "permReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_2a

    .line 360
    .end local v12    # "permReader":Ljava/io/FileReader;
    .local v13, "permReader":Ljava/io/FileReader;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 361
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 363
    const-string v18, "permissions"

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 366
    :goto_16
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 367
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_48

    .line 481
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_28} :catch_8a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_28} :catch_b4

    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_28
    move-object v12, v13

    .line 487
    .end local v13    # "permReader":Ljava/io/FileReader;
    .restart local v12    # "permReader":Ljava/io/FileReader;
    :goto_29
    return-void

    .line 354
    :catch_2a
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 371
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "permReader":Ljava/io/FileReader;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "permReader":Ljava/io/FileReader;
    :cond_48
    :try_start_48
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, "name":Ljava/lang/String;
    const-string v18, "group"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c2

    .line 373
    const/16 v18, 0x0

    const-string v19, "gid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "gidStr":Ljava/lang/String;
    if-eqz v6, :cond_97

    .line 375
    invoke-static {v6}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    .line 377
    .local v5, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mGlobalGids:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mGlobalGids:[I

    .line 384
    .end local v5    # "gid":I
    :goto_86
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_89} :catch_8a
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_89} :catch_b4

    goto :goto_16

    .line 482
    .end local v6    # "gidStr":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8a
    move-exception v2

    .line 483
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v18, "PackagePrefetcher"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 380
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "gidStr":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_97
    :try_start_97
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<group> without gid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_b3} :catch_8a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_b3} :catch_b4

    goto :goto_86

    .line 484
    .end local v6    # "gidStr":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_b4
    move-exception v2

    .line 485
    .local v2, "e":Ljava/io/IOException;
    const-string v18, "PackagePrefetcher"

    const-string v19, "Got execption parsing permissions."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 386
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_c2
    :try_start_c2
    const-string v18, "permission"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_106

    .line 387
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, "perm":Ljava/lang/String;
    if-nez v11, :cond_fb

    .line 389
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 394
    :cond_fb
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 395
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/pm/PackagePrefetcher;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 397
    .end local v11    # "perm":Ljava/lang/String;
    :cond_106
    const-string v18, "assign-permission"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1db

    .line 398
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 399
    .restart local v11    # "perm":Ljava/lang/String;
    if-nez v11, :cond_13f

    .line 400
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 405
    :cond_13f
    const/16 v18, 0x0

    const-string v19, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 406
    .local v16, "uidStr":Ljava/lang/String;
    if-nez v16, :cond_16e

    .line 407
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> without uid at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 412
    :cond_16e
    invoke-static/range {v16 .. v16}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v15

    .line 413
    .local v15, "uid":I
    if-gez v15, :cond_1a3

    .line 414
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\" at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 420
    :cond_1a3
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 424
    .local v14, "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v14, :cond_1d3

    .line 425
    new-instance v14, Ljava/util/HashSet;

    .end local v14    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 427
    .restart local v14    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    :cond_1d3
    invoke-virtual {v14, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 432
    .end local v11    # "perm":Ljava/lang/String;
    .end local v14    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15    # "uid":I
    .end local v16    # "uidStr":Ljava/lang/String;
    :cond_1db
    const-string v18, "library"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25e

    .line 433
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "lname":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, "lfile":Ljava/lang/String;
    if-nez v8, :cond_220

    .line 436
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_21b
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 438
    :cond_220
    if-nez v7, :cond_23f

    .line 439
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<library> without file at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21b

    .line 445
    :cond_23f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21b

    .line 450
    .end local v7    # "lfile":Ljava/lang/String;
    .end local v8    # "lname":Ljava/lang/String;
    :cond_25e
    const-string v18, "feature"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2da

    .line 451
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "fname":Ljava/lang/String;
    if-nez v4, :cond_297

    .line 453
    const-string v18, "PackagePrefetcher"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "<feature> without name at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_292
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 457
    :cond_297
    new-instance v3, Landroid/content/pm/FeatureInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 458
    .local v3, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;
    :try_end_29e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_29e} :catch_8a
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_29e} :catch_b4

    .line 461
    const/16 v18, 0x0

    :try_start_2a0
    const-string v19, "level"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 462
    .local v17, "versionCode":Ljava/lang/String;
    if-eqz v17, :cond_2c6

    .line 463
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_2b4
    .catch Ljava/lang/NumberFormatException; {:try_start_2a0 .. :try_end_2b4} :catch_2cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a0 .. :try_end_2b4} :catch_8a
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2b4} :catch_b4

    .line 470
    .end local v17    # "versionCode":Ljava/lang/String;
    :goto_2b4
    :try_start_2b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b4 .. :try_end_2c5} :catch_8a
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_2c5} :catch_b4

    goto :goto_292

    .line 465
    .restart local v17    # "versionCode":Ljava/lang/String;
    :cond_2c6
    const/16 v18, 0x1

    :try_start_2c8
    move/from16 v0, v18

    iput v0, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_2cc
    .catch Ljava/lang/NumberFormatException; {:try_start_2c8 .. :try_end_2cc} :catch_2cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c8 .. :try_end_2cc} :catch_8a
    .catch Ljava/io/IOException; {:try_start_2c8 .. :try_end_2cc} :catch_b4

    goto :goto_2b4

    .line 467
    .end local v17    # "versionCode":Ljava/lang/String;
    :catch_2cd
    move-exception v2

    .line 468
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2ce
    const-string v18, "PackagePrefetcher"

    const-string v19, "Got execption parsing error."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b4

    .line 476
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v4    # "fname":Ljava/lang/String;
    :cond_2da
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ce .. :try_end_2dd} :catch_8a
    .catch Ljava/io/IOException; {:try_start_2ce .. :try_end_2dd} :catch_b4

    goto/16 :goto_16
.end method

.method private startPrefetch(Ljava/io/File;II)V
    .registers 8
    .param p1, "appDir"    # Ljava/io/File;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/PackagePrefetcher$1;-><init>(Lcom/android/server/pm/PackagePrefetcher;Ljava/io/File;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 250
    .local v0, "th":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method


# virtual methods
.method public getAvailableFeatures()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mAvailableFeatures:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGlobalGids()[I
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mGlobalGids:[I

    return-object v0
.end method

.method public getPermissions()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/BasePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mPermissions:Ljava/util/HashMap;

    return-object v0
.end method

.method getPrefetchedPackage(Ljava/lang/String;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_1b

    .line 183
    iget-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 184
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 185
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-object v1, v0

    .line 191
    :goto_1a
    monitor-exit v3

    .line 194
    :cond_1b
    return-object v1

    .line 187
    :cond_1c
    const-string v2, "PackagePrefetcher"

    const-string v4, "PREFETCH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not yet prefetched: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 191
    :catchall_3b
    move-exception v2

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public getSharedLibraries()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSharedLibraries:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hasReadPermissionsStarted()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsStarted:Z

    return v0
.end method

.method public prefetchPackages()V
    .registers 4

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    array-length v0, v2

    .line 160
    .local v0, "dirs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 161
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackagePrefetcher;->prefetchInner(Ljava/io/File;)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 163
    :cond_10
    return-void
.end method

.method public prefetchPermissions()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissionsInner()V

    .line 259
    return-void
.end method

.method setScanFinished(Z)V
    .registers 2
    .param p1, "scanFinished"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    .line 565
    return-void
.end method

.method public waitForReadPermissions()Z
    .registers 4

    .prologue
    .line 282
    const-string v1, "PackagePrefetcher"

    const-string v2, "waiting for read permissions"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_7
    iget-boolean v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsFinished:Z

    if-nez v1, :cond_17

    .line 285
    const-wide/16 v1, 0xa

    :try_start_d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_7

    .line 286
    :catch_11
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 289
    const/4 v1, 0x0

    .line 293
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_16
    return v1

    .line 292
    :cond_17
    const-string v1, "PackagePrefetcher"

    const-string v2, "finished read permissions"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x1

    goto :goto_16
.end method
