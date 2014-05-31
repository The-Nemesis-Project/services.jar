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

    .line 114
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
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "app"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "priv-app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "app"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    .line 115
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    .line 116
    new-instance v3, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    invoke-direct {v3, p0}, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;-><init>(Lcom/android/server/pm/PackagePrefetcher;)V

    iput-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    .line 118
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "separateProcesses":Ljava/lang/String;
    if-eqz v2, :cond_99

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_99

    .line 124
    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 125
    const/16 v0, 0x8

    .line 126
    .local v0, "nDefParseFlags":I
    const/4 v1, 0x0

    .line 127
    .local v1, "nSeparateProcesses":[Ljava/lang/String;
    const-string v3, "PackagePrefetcher"

    const-string v4, "PREFETCH"

    const-string v5, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_72
    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->nSeparateProcessesInner:[Ljava/lang/String;

    .line 141
    or-int/lit8 v3, v0, 0x41

    iput v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:I

    .line 143
    return-void

    .line 130
    .end local v0    # "nDefParseFlags":I
    .end local v1    # "nSeparateProcesses":[Ljava/lang/String;
    :cond_79
    const/4 v0, 0x0

    .line 131
    .restart local v0    # "nDefParseFlags":I
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
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

    goto :goto_72

    .line 136
    .end local v0    # "nDefParseFlags":I
    .end local v1    # "nSeparateProcesses":[Ljava/lang/String;
    :cond_99
    const/4 v0, 0x0

    .line 137
    .restart local v0    # "nDefParseFlags":I
    const/4 v1, 0x0

    .restart local v1    # "nSeparateProcesses":[Ljava/lang/String;
    goto :goto_72
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
    .line 108
    const-class v1, Lcom/android/server/pm/PackagePrefetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    if-nez v0, :cond_e

    .line 109
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {v0}, Lcom/android/server/pm/PackagePrefetcher;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    .line 111
    :cond_e
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasSettingsFile()Z
    .registers 6

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 554
    .local v1, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "system"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v4, "systemDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v5, "packages.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 556
    .local v3, "settingsFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "packages-backup.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    .local v0, "backupSettingsFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "packages-more-backup.xml"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 559
    .local v2, "moreBackupSettingsFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_33

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 562
    :cond_33
    const/4 v5, 0x1

    .line 564
    :goto_34
    return v5

    :cond_35
    const/4 v5, 0x0

    goto :goto_34
.end method

.method private preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 9
    .param p1, "pp"    # Landroid/content/pm/PackageParser;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v5, 0x1

    .line 532
    const/4 v0, 0x0

    .line 535
    .local v0, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-boolean v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    if-nez v1, :cond_4f

    .line 536
    iget v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:I

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 537
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .line 549
    .restart local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    :goto_14
    return-object v0

    .line 539
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

    .line 542
    new-instance v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    .end local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-direct {v0, p0, p2, v5}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    .restart local v0    # "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    goto :goto_14

    .line 545
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

    .line 547
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
    .line 168
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    .line 169
    .local v1, "numAppFiles":I
    div-int/lit8 v2, v1, 0x1e

    .line 171
    .local v2, "quota":I
    if-lez v2, :cond_19

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_19

    .line 173
    mul-int v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v2

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/pm/PackagePrefetcher;->startPrefetch(Ljava/io/File;II)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 176
    .end local v0    # "i":I
    :cond_19
    mul-int/lit8 v3, v2, 0x1e

    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/pm/PackagePrefetcher;->startPrefetch(Ljava/io/File;II)V

    .line 177
    return-void
.end method

.method private prefetchPermissionsInner()V
    .registers 4

    .prologue
    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackagePrefetcher$2;-><init>(Lcom/android/server/pm/PackagePrefetcher;)V

    const-string v2, "PrefetchPermissions"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 310
    .local v0, "th":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 312
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

    .line 496
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 499
    iget-object v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v6, v6, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 500
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_1f

    .line 501
    new-instance v0, Lcom/android/server/pm/BasePermission;

    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    invoke-direct {v0, p2, v11, v9}, Lcom/android/server/pm/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 503
    .restart local v0    # "bp":Lcom/android/server/pm/BasePermission;
    iget-object v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v6, v6, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 508
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

    .line 510
    :cond_31
    if-eq v5, v10, :cond_23

    const/4 v6, 0x4

    if-eq v5, v6, :cond_23

    .line 515
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 517
    const-string v6, "gid"

    invoke-interface {p1, v11, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "gidStr":Ljava/lang/String;
    if-eqz v2, :cond_5a

    .line 519
    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v1

    .line 520
    .local v1, "gid":I
    iget-object v6, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    invoke-static {v6, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/pm/BasePermission;->gids:[I

    .line 526
    .end local v1    # "gid":I
    .end local v2    # "gidStr":Ljava/lang/String;
    :cond_56
    :goto_56
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_23

    .line 522
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

    .line 528
    .end local v2    # "gidStr":Ljava/lang/String;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_77
    return-void
.end method

.method private readPermissions()V
    .registers 10

    .prologue
    .line 316
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v4, "libraryDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_36

    .line 318
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

    .line 349
    :goto_35
    return-void

    .line 321
    :cond_36
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 322
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

    .line 327
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

    .line 329
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 327
    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 333
    :cond_74
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a9

    .line 334
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

    .line 337
    :cond_a9
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_ce

    .line 338
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

    .line 342
    :cond_ce
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackagePrefetcher;->readPermissionsFromXml(Ljava/io/File;)V

    goto :goto_71

    .line 346
    .end local v1    # "f":Ljava/io/File;
    :cond_d2
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/permissions/platform.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v5, "permFile":Ljava/io/File;
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackagePrefetcher;->readPermissionsFromXml(Ljava/io/File;)V

    goto/16 :goto_35
.end method

.method private readPermissionsFromXml(Ljava/io/File;)V
    .registers 24
    .param p1, "permFile"    # Ljava/io/File;

    .prologue
    .line 352
    const/4 v13, 0x0

    .line 354
    .local v13, "permReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_2c

    .line 361
    .end local v13    # "permReader":Ljava/io/FileReader;
    .local v14, "permReader":Ljava/io/FileReader;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 362
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 364
    const-string v19, "permissions"

    move-object/from16 v0, v19

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 367
    :goto_16
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 368
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1c} :catch_8c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_c0
    .catchall {:try_start_8 .. :try_end_1c} :catchall_10e

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4a

    .line 488
    if-eqz v14, :cond_2a

    :try_start_27
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_304

    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2a
    :goto_2a
    move-object v13, v14

    .line 491
    .end local v14    # "permReader":Ljava/io/FileReader;
    .restart local v13    # "permReader":Ljava/io/FileReader;
    :goto_2b
    return-void

    .line 355
    :catch_2c
    move-exception v2

    .line 356
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 372
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "permReader":Ljava/io/FileReader;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permReader":Ljava/io/FileReader;
    :cond_4a
    :try_start_4a
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "name":Ljava/lang/String;
    const-string v19, "group"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d5

    .line 374
    const/16 v19, 0x0

    const-string v20, "gid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "gidStr":Ljava/lang/String;
    if-eqz v6, :cond_a3

    .line 376
    invoke-static {v6}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    .line 378
    .local v5, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mGlobalGids:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mGlobalGids:[I

    .line 385
    .end local v5    # "gid":I
    :goto_88
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_8b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_8b} :catch_c0
    .catchall {:try_start_4a .. :try_end_8b} :catchall_10e

    goto :goto_16

    .line 482
    .end local v6    # "gidStr":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_8c
    move-exception v2

    .line 483
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8d
    const-string v19, "PackagePrefetcher"

    const-string v20, "Got execption parsing permissions."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_10e

    .line 488
    if-eqz v14, :cond_2a

    :try_start_9a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_2a

    .line 489
    :catch_9e
    move-exception v7

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v7, "ie":Ljava/io/IOException;
    :goto_9f
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 381
    .end local v7    # "ie":Ljava/io/IOException;
    .restart local v6    # "gidStr":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_a3
    :try_start_a3
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<group> without gid at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_bf} :catch_8c
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_bf} :catch_c0
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_10e

    goto :goto_88

    .line 484
    .end local v6    # "gidStr":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_c0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/io/IOException;
    :try_start_c1
    const-string v19, "PackagePrefetcher"

    const-string v20, "Got execption parsing permissions."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c1 .. :try_end_cc} :catchall_10e

    .line 488
    if-eqz v14, :cond_2a

    :try_start_ce
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d3

    goto/16 :goto_2a

    .line 489
    :catch_d3
    move-exception v7

    goto :goto_9f

    .line 387
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_d5
    :try_start_d5
    const-string v19, "permission"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_120

    .line 388
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 389
    .local v12, "perm":Ljava/lang/String;
    if-nez v12, :cond_115

    .line 390
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<permission> without name at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_10c} :catch_8c
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_10c} :catch_c0
    .catchall {:try_start_d5 .. :try_end_10c} :catchall_10e

    goto/16 :goto_16

    .line 487
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "perm":Ljava/lang/String;
    :catchall_10e
    move-exception v19

    .line 488
    if-eqz v14, :cond_114

    :try_start_111
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_2fe

    .line 487
    :cond_114
    :goto_114
    throw v19

    .line 395
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "perm":Ljava/lang/String;
    :cond_115
    :try_start_115
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/pm/PackagePrefetcher;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 398
    .end local v12    # "perm":Ljava/lang/String;
    :cond_120
    const-string v19, "assign-permission"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1fa

    .line 399
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 400
    .restart local v12    # "perm":Ljava/lang/String;
    if-nez v12, :cond_159

    .line 401
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<assign-permission> without name at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 406
    :cond_159
    const/16 v19, 0x0

    const-string/jumbo v20, "uid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 407
    .local v17, "uidStr":Ljava/lang/String;
    if-nez v17, :cond_189

    .line 408
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<assign-permission> without uid at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 413
    :cond_189
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v16

    .line 414
    .local v16, "uid":I
    if-gez v16, :cond_1be

    .line 415
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\" at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 421
    :cond_1be
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 425
    .local v15, "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v15, :cond_1f2

    .line 426
    new-instance v15, Ljava/util/HashSet;

    .end local v15    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 428
    .restart local v15    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    :cond_1f2
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 433
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "uid":I
    .end local v17    # "uidStr":Ljava/lang/String;
    :cond_1fa
    const-string v19, "library"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27d

    .line 434
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "lname":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, "lfile":Ljava/lang/String;
    if-nez v9, :cond_23f

    .line 437
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<library> without name at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_23a
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 439
    :cond_23f
    if-nez v8, :cond_25e

    .line 440
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<library> without file at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23a

    .line 446
    :cond_25e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSharedLibraries:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/PackageManagerService$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23a

    .line 451
    .end local v8    # "lfile":Ljava/lang/String;
    .end local v9    # "lname":Ljava/lang/String;
    :cond_27d
    const-string v19, "feature"

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f9

    .line 452
    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "fname":Ljava/lang/String;
    if-nez v4, :cond_2b6

    .line 454
    const-string v19, "PackagePrefetcher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "<feature> without name at "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_2b1
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    .line 458
    :cond_2b6
    new-instance v3, Landroid/content/pm/FeatureInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 459
    .local v3, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;
    :try_end_2bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_115 .. :try_end_2bd} :catch_8c
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_2bd} :catch_c0
    .catchall {:try_start_115 .. :try_end_2bd} :catchall_10e

    .line 462
    const/16 v19, 0x0

    :try_start_2bf
    const-string v20, "level"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 463
    .local v18, "versionCode":Ljava/lang/String;
    if-eqz v18, :cond_2e5

    .line 464
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_2d3
    .catch Ljava/lang/NumberFormatException; {:try_start_2bf .. :try_end_2d3} :catch_2ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2bf .. :try_end_2d3} :catch_8c
    .catch Ljava/io/IOException; {:try_start_2bf .. :try_end_2d3} :catch_c0
    .catchall {:try_start_2bf .. :try_end_2d3} :catchall_10e

    .line 471
    .end local v18    # "versionCode":Ljava/lang/String;
    :goto_2d3
    :try_start_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d3 .. :try_end_2e4} :catch_8c
    .catch Ljava/io/IOException; {:try_start_2d3 .. :try_end_2e4} :catch_c0
    .catchall {:try_start_2d3 .. :try_end_2e4} :catchall_10e

    goto :goto_2b1

    .line 466
    .restart local v18    # "versionCode":Ljava/lang/String;
    :cond_2e5
    const/16 v19, 0x1

    :try_start_2e7
    move/from16 v0, v19

    iput v0, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_2eb
    .catch Ljava/lang/NumberFormatException; {:try_start_2e7 .. :try_end_2eb} :catch_2ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e7 .. :try_end_2eb} :catch_8c
    .catch Ljava/io/IOException; {:try_start_2e7 .. :try_end_2eb} :catch_c0
    .catchall {:try_start_2e7 .. :try_end_2eb} :catchall_10e

    goto :goto_2d3

    .line 468
    .end local v18    # "versionCode":Ljava/lang/String;
    :catch_2ec
    move-exception v2

    .line 469
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2ed
    const-string v19, "PackagePrefetcher"

    const-string v20, "Got execption parsing error."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d3

    .line 477
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v4    # "fname":Ljava/lang/String;
    :cond_2f9
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2fc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ed .. :try_end_2fc} :catch_8c
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_2fc} :catch_c0
    .catchall {:try_start_2ed .. :try_end_2fc} :catchall_10e

    goto/16 :goto_16

    .line 489
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2fe
    move-exception v7

    .restart local v7    # "ie":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_114

    .end local v7    # "ie":Ljava/io/IOException;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_304
    move-exception v7

    goto/16 :goto_9f
.end method

.method private startPrefetch(Ljava/io/File;II)V
    .registers 8
    .param p1, "appDir"    # Ljava/io/File;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 200
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

    .line 251
    .local v0, "th":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 253
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
    .line 279
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mAvailableFeatures:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGlobalGids()[I
    .registers 2

    .prologue
    .line 267
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
    .line 263
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mPermissions:Ljava/util/HashMap;

    return-object v0
.end method

.method getPrefetchedPackage(Ljava/lang/String;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 183
    .local v1, "pPkg":Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_1b

    .line 184
    iget-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 185
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 186
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-object v1, v0

    .line 192
    :goto_1a
    monitor-exit v3

    .line 195
    :cond_1b
    return-object v1

    .line 188
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

    .line 192
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
    .line 275
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
    .line 271
    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPermissions:Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchPermissions;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hasReadPermissionsStarted()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsStarted:Z

    return v0
.end method

.method public prefetchPackages()V
    .registers 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    array-length v0, v2

    .line 161
    .local v0, "dirs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 162
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/pm/PackagePrefetcher;->prefetchInner(Ljava/io/File;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 164
    :cond_10
    return-void
.end method

.method public prefetchPermissions()V
    .registers 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissionsInner()V

    .line 260
    return-void
.end method

.method setScanFinished(Z)V
    .registers 2
    .param p1, "scanFinished"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    .line 569
    return-void
.end method

.method public waitForReadPermissions()Z
    .registers 4

    .prologue
    .line 283
    const-string v1, "PackagePrefetcher"

    const-string/jumbo v2, "waiting for read permissions"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_8
    iget-boolean v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mReadPermissionsFinished:Z

    if-nez v1, :cond_18

    .line 286
    const-wide/16 v1, 0xa

    :try_start_e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_8

    .line 287
    :catch_12
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 290
    const/4 v1, 0x0

    .line 294
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_17
    return v1

    .line 293
    :cond_18
    const-string v1, "PackagePrefetcher"

    const-string v2, "finished read permissions"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v1, 0x1

    goto :goto_17
.end method
