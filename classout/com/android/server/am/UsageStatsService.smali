.class public final Lcom/android/server/am/UsageStatsService;
.super Lcom/android/internal/app/IUsageStats$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;,
        Lcom/android/server/am/UsageStatsService$TimeStats;
    }
.end annotation


# static fields
.field private static final CHECKIN_VERSION:I = 0x4

.field private static final FILE_HISTORY:Ljava/lang/String; = "usage-history.xml"

.field private static final FILE_PREFIX:Ljava/lang/String; = "usage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x1b7740

.field private static final LAUNCH_TIME_BINS:[I

.field private static final MAX_NUM_FILES:I = 0x5

.field private static final NUM_LAUNCH_TIME_BINS:I = 0xa

.field private static final REPORT_UNEXPECTED:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "usagestats"

.field private static final TAG:Ljava/lang/String; = "UsageStats"

.field private static final VERSION:I = 0x3f0

.field private static final localLOGV:Z

.field static sService:Lcom/android/internal/app/IUsageStats;


# instance fields
.field private mCal:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mCurrentPackage:Ljava/lang/String;

.field private mDir:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private mFileLeaf:Ljava/lang/String;

.field final mFileLock:Ljava/lang/Object;

.field private mHistoryFile:Landroid/util/AtomicFile;

.field private mIsResumed:Z

.field private final mLastResumeTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastResumedComp:Ljava/lang/String;

.field private mLastResumedPkg:Ljava/lang/String;

.field private final mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPreviousPackage:Ljava/lang/String;

.field private final mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;",
            ">;"
        }
    .end annotation
.end field

.field final mStatsLock:Ljava/lang/Object;

.field private final mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/IUsageStatsWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-void

    :array_a
    .array-data 4
        0xfa
        0x1f4
        0x2ee
        0x3e8
        0x5dc
        0x7d0
        0xbb8
        0xfa0
        0x1388
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/internal/app/IUsageStats$Stub;-><init>()V

    .line 131
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 133
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    .line 136
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mPreviousPackage:Ljava/lang/String;

    .line 137
    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCurrentPackage:Ljava/lang/String;

    .line 286
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    .line 287
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    .line 288
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    .line 289
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    .line 290
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    .line 291
    const-string v4, "GMT+0"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    .line 293
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 296
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 297
    .local v2, "parentDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "fList":[Ljava/lang/String;
    if-eqz v0, :cond_b6

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "prefix":Ljava/lang/String;
    array-length v1, v0

    .line 301
    .local v1, "i":I
    :cond_85
    :goto_85
    if-lez v1, :cond_b6

    .line 302
    add-int/lit8 v1, v1, -0x1

    .line 303
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 304
    const-string v4, "UsageStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting old usage file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_85

    .line 311
    .end local v1    # "i":I
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_b6
    const-string/jumbo v4, "usage-"

    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 312
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 313
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    const-string/jumbo v7, "usage-history.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    .line 314
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readStatsFromFile()V

    .line 315
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readHistoryStatsFromFile()V

    .line 316
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 318
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 319
    return-void
.end method

.method static synthetic access$000()[I
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/UsageStatsService;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/UsageStatsService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UsageStatsService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UsageStatsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UsageStatsService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/UsageStatsService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UsageStatsService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private checkFileLimitFLOCK()V
    .registers 9

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v2

    .line 485
    .local v2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_7

    .line 503
    :cond_6
    return-void

    .line 489
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 490
    .local v0, "count":I
    const/4 v5, 0x5

    if-le v0, v5, :cond_6

    .line 494
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 495
    add-int/lit8 v0, v0, -0x5

    .line 497
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_6

    .line 498
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 499
    .local v3, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 500
    .local v1, "file":Ljava/io/File;
    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting usage file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method private collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "isCompactOutput"    # Z
    .param p3, "deleteAfterPrint"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "ZZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 982
    .local p4, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v9

    .line 983
    .local v9, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_7

    .line 1015
    :cond_6
    :goto_6
    return-void

    .line 986
    :cond_7
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 987
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 988
    .local v8, "file":Ljava/lang/String;
    if-eqz p3, :cond_24

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 993
    :cond_24
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 994
    .local v6, "dFile":Ljava/io/File;
    const-string/jumbo v0, "usage-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 995
    .local v3, "dateStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4e

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-le v0, v2, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x39

    if-ge v0, v2, :cond_e

    .line 1001
    :cond_4e
    :try_start_4e
    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .local v1, "in":Landroid/os/Parcel;
    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 1002
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V

    .line 1004
    if-eqz p3, :cond_e

    .line 1006
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_5e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5e} :catch_83

    goto :goto_e

    .line 1008
    .end local v1    # "in":Landroid/os/Parcel;
    :catch_5f
    move-exception v7

    .line 1009
    .local v7, "e":Ljava/io/FileNotFoundException;
    const-string v0, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when collecting dump info from file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1011
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_83
    move-exception v7

    .line 1012
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when collecting dump info from file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V
    .registers 23
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "isCompactOutput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1019
    .local p5, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v15, 0x200

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1020
    .local v12, "sb":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_33

    .line 1021
    const-string v15, "D:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1031
    .local v14, "vers":I
    const/16 v15, 0x3f0

    if-eq v14, v15, :cond_39

    .line 1032
    const-string v15, " (old data version)"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    :cond_32
    return-void

    .line 1025
    .end local v14    # "vers":I
    :cond_33
    const-string v15, "Date: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1037
    .restart local v14    # "vers":I
    :cond_39
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1040
    .local v2, "N":I
    :goto_46
    if-lez v2, :cond_32

    .line 1041
    add-int/lit8 v2, v2, -0x1

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1043
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_32

    .line 1046
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1047
    new-instance v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 1048
    .local v11, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz p5, :cond_71

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_71

    .line 1160
    :cond_67
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_46

    .line 1051
    :cond_71
    if-eqz p4, :cond_119

    .line 1052
    const-string v15, "P:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    iget v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1056
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    iget-wide v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1058
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1059
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1060
    .local v4, "NLT":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9c
    if-ge v6, v4, :cond_dc

    .line 1061
    const-string v15, "A:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1063
    .local v5, "activity":Ljava/lang/String;
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 1065
    .local v13, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1066
    iget v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_c1
    const/16 v15, 0xa

    if-ge v7, v15, :cond_d4

    .line 1068
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    add-int/lit8 v7, v7, 0x1

    goto :goto_c1

    .line 1071
    :cond_d4
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1060
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 1073
    .end local v5    # "activity":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v13    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_dc
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1074
    .local v3, "NFDT":I
    const/4 v6, 0x0

    :goto_e3
    if-ge v6, v3, :cond_67

    .line 1075
    const-string v15, "A:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1077
    .restart local v5    # "activity":Ljava/lang/String;
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 1079
    .restart local v13    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_fe
    const/16 v15, 0xa

    if-ge v7, v15, :cond_111

    .line 1080
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1079
    add-int/lit8 v7, v7, 0x1

    goto :goto_fe

    .line 1083
    :cond_111
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    add-int/lit8 v6, v6, 0x1

    goto :goto_e3

    .line 1087
    .end local v3    # "NFDT":I
    .end local v4    # "NLT":I
    .end local v5    # "activity":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v13    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_119
    const-string v15, "  "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    iget v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1091
    const-string v15, " times, "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    iget-wide v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1093
    const-string v15, " ms"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1095
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1096
    .restart local v4    # "NLT":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_147
    if-ge v6, v4, :cond_1cf

    .line 1097
    const-string v15, "    "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 1100
    .restart local v13    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    iget v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    const-string v15, " starts"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const/4 v8, 0x0

    .line 1104
    .local v8, "lastBin":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_172
    const/16 v15, 0x9

    if-ge v7, v15, :cond_1a3

    .line 1105
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    if-eqz v15, :cond_19c

    .line 1106
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1108
    const/16 v15, 0x2d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1109
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1110
    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1113
    :cond_19c
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v8, v15, v7

    .line 1104
    add-int/lit8 v7, v7, 0x1

    goto :goto_172

    .line 1115
    :cond_1a3
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    if-eqz v15, :cond_1c6

    .line 1116
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    const-string v15, ">="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1119
    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1122
    :cond_1c6
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1096
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_147

    .line 1124
    .end local v7    # "j":I
    .end local v8    # "lastBin":I
    .end local v13    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_1cf
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1125
    .restart local v3    # "NFDT":I
    const/4 v6, 0x0

    :goto_1d6
    if-ge v6, v3, :cond_67

    .line 1126
    const-string v15, "    "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 1129
    .restart local v13    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    const-string v15, ": fully drawn "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const/4 v9, 0x0

    .line 1131
    .local v9, "needComma":Z
    const/4 v8, 0x0

    .line 1132
    .restart local v8    # "lastBin":I
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_1f8
    const/16 v15, 0x9

    if-ge v7, v15, :cond_22d

    .line 1133
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    if-eqz v15, :cond_224

    .line 1134
    if-eqz v9, :cond_22b

    .line 1135
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :goto_209
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1140
    const/16 v15, 0x2d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1141
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1142
    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1145
    :cond_224
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v8, v15, v7

    .line 1132
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f8

    .line 1137
    :cond_22b
    const/4 v9, 0x1

    goto :goto_209

    .line 1147
    :cond_22d
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    if-eqz v15, :cond_252

    .line 1148
    if-eqz v9, :cond_23c

    .line 1149
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    :cond_23c
    const-string v15, ">="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1153
    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1156
    :cond_252
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d6
.end method

.method private filterHistoryStats()V
    .registers 6

    .prologue
    .line 639
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 640
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 641
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 642
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_2b

    .line 644
    .local v1, "pkg":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_19
    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_26

    .line 645
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_2e
    .catchall {:try_start_19 .. :try_end_24} :catchall_2b

    .line 646
    add-int/lit8 v0, v0, -0x1

    .line 641
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 651
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_29
    :try_start_29
    monitor-exit v4

    .line 652
    return-void

    .line 651
    .end local v0    # "i":I
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v3

    .line 648
    .restart local v0    # "i":I
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_2e
    move-exception v3

    goto :goto_26
.end method

.method private getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v4

    .line 327
    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 328
    if-eqz p1, :cond_18

    .line 329
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_18
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v1, v3, 0x1

    .line 333
    .local v1, "mm":I
    if-ge v1, v7, :cond_34

    .line 334
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 338
    .local v0, "dd":I
    if-ge v0, v7, :cond_45

    .line 339
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_4e

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 342
    .end local v0    # "dd":I
    .end local v1    # "mm":I
    :catchall_4e
    move-exception v3

    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v3
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 347
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 348
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/am/UsageStatsService;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 349
    .local v1, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 350
    .local v0, "in":Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 351
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 352
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 353
    return-object v0
.end method

.method public static getService()Lcom/android/internal/app/IUsageStats;
    .registers 2

    .prologue
    .line 720
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_7

    .line 721
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 725
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 723
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string/jumbo v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 724
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 725
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    goto :goto_6
.end method

.method private getUsageStatsFileListFLOCK()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "fList":[Ljava/lang/String;
    if-nez v1, :cond_a

    .line 466
    const/4 v3, 0x0

    .line 479
    :cond_9
    return-object v3

    .line 468
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v3, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_12
    if-ge v4, v5, :cond_9

    aget-object v2, v0, v4

    .line 470
    .local v2, "file":Ljava/lang/String;
    const-string/jumbo v6, "usage-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 469
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 473
    :cond_22
    const-string v6, ".bak"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 474
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1f

    .line 477
    :cond_35
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .registers 8
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 962
    const/4 v4, 0x0

    .line 963
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 964
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 966
    .local v2, "data":[B
    :cond_8
    :goto_8
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 967
    .local v0, "amt":I
    if-gtz v0, :cond_11

    .line 968
    return-object v2

    .line 970
    :cond_11
    add-int/2addr v4, v0

    .line 971
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 972
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_8

    .line 973
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 974
    .local v3, "newData":[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 975
    move-object v2, v3

    goto :goto_8
.end method

.method private readHistoryStatsFLOCK(Landroid/util/AtomicFile;)V
    .registers 17
    .param p1, "file"    # Landroid/util/AtomicFile;

    .prologue
    .line 404
    const/4 v4, 0x0

    .line 406
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 407
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 408
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v9, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 409
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 410
    .local v3, "eventType":I
    :goto_13
    const/4 v12, 0x2

    if-eq v3, v12, :cond_1e

    const/4 v12, 0x1

    if-eq v3, v12, :cond_1e

    .line 411
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_13

    .line 413
    :cond_1e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 414
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "usage-history"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_50

    .line 415
    const/4 v10, 0x0

    .line 417
    .local v10, "pkg":Ljava/lang/String;
    :cond_2c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 418
    const/4 v12, 0x2

    if-ne v3, v12, :cond_9e

    .line 419
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 420
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 421
    .local v1, "depth":I
    const-string v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_56

    const/4 v12, 0x2

    if-ne v1, v12, :cond_56

    .line 422
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_4c} :catch_af
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4c} :catch_d0
    .catchall {:try_start_1 .. :try_end_4c} :catchall_f3

    move-result-object v10

    .line 446
    .end local v1    # "depth":I
    :cond_4d
    :goto_4d
    const/4 v12, 0x1

    if-ne v3, v12, :cond_2c

    .line 453
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_50
    if-eqz v4, :cond_55

    .line 455
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_fa

    .line 460
    .end local v3    # "eventType":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_55
    :goto_55
    return-void

    .line 423
    .restart local v1    # "depth":I
    .restart local v3    # "eventType":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_56
    :try_start_56
    const-string v12, "comp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4d

    const/4 v12, 0x3

    if-ne v1, v12, :cond_4d

    if-eqz v10, :cond_4d

    .line 424
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "comp":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "lrt"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_70} :catch_af
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_70} :catch_d0
    .catchall {:try_start_56 .. :try_end_70} :catchall_f3

    move-result-object v7

    .line 426
    .local v7, "lastResumeTimeStr":Ljava/lang/String;
    if-eqz v0, :cond_4d

    if-eqz v7, :cond_4d

    .line 428
    :try_start_75
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 429
    .local v5, "lastResumeTime":J
    iget-object v13, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_7c} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_7c} :catch_af
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7c} :catch_d0
    .catchall {:try_start_75 .. :try_end_7c} :catchall_f3

    .line 430
    :try_start_7c
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 431
    .local v8, "lrt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v8, :cond_90

    .line 432
    new-instance v8, Landroid/util/ArrayMap;

    .end local v8    # "lrt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 433
    .restart local v8    # "lrt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_90
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v0, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    monitor-exit v13

    goto :goto_4d

    .end local v8    # "lrt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_99
    move-exception v12

    monitor-exit v13
    :try_end_9b
    .catchall {:try_start_7c .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v12
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_9c} :catch_9c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9b .. :try_end_9c} :catch_af
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9c} :catch_d0
    .catchall {:try_start_9b .. :try_end_9c} :catchall_f3

    .line 437
    .end local v5    # "lastResumeTime":J
    :catch_9c
    move-exception v12

    goto :goto_4d

    .line 441
    .end local v0    # "comp":Ljava/lang/String;
    .end local v1    # "depth":I
    .end local v7    # "lastResumeTimeStr":Ljava/lang/String;
    :cond_9e
    const/4 v12, 0x3

    if-ne v3, v12, :cond_4d

    .line 442
    :try_start_a1
    const-string v12, "pkg"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a1 .. :try_end_aa} :catch_af
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_aa} :catch_d0
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_f3

    move-result v12

    if-eqz v12, :cond_4d

    .line 443
    const/4 v10, 0x0

    goto :goto_4d

    .line 448
    .end local v3    # "eventType":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_af
    move-exception v2

    .line 449
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b0
    const-string v12, "UsageStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading history stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_b0 .. :try_end_c8} :catchall_f3

    .line 453
    if-eqz v4, :cond_55

    .line 455
    :try_start_ca
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    goto :goto_55

    .line 456
    :catch_ce
    move-exception v12

    goto :goto_55

    .line 450
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_d0
    move-exception v2

    .line 451
    .local v2, "e":Ljava/io/IOException;
    :try_start_d1
    const-string v12, "UsageStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading history stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_d1 .. :try_end_e9} :catchall_f3

    .line 453
    if-eqz v4, :cond_55

    .line 455
    :try_start_eb
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f0

    goto/16 :goto_55

    .line 456
    :catch_f0
    move-exception v12

    goto/16 :goto_55

    .line 453
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_f3
    move-exception v12

    if-eqz v4, :cond_f9

    .line 455
    :try_start_f6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fd

    .line 457
    :cond_f9
    :goto_f9
    throw v12

    .line 456
    .restart local v3    # "eventType":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_fa
    move-exception v12

    goto/16 :goto_55

    .end local v3    # "eventType":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_fd
    move-exception v13

    goto :goto_f9
.end method

.method private readHistoryStatsFromFile()V
    .registers 3

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 398
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->readHistoryStatsFLOCK(Landroid/util/AtomicFile;)V

    .line 400
    :cond_14
    monitor-exit v1

    .line 401
    return-void

    .line 400
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .line 375
    .local v1, "in":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 376
    .local v4, "vers":I
    const/16 v5, 0x3f0

    if-eq v4, v5, :cond_14

    .line 377
    const-string v5, "UsageStats"

    const-string v6, "Usage stats version changed; dropping"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_13
    return-void

    .line 380
    :cond_14
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 381
    .local v0, "N":I
    :goto_18
    if-lez v0, :cond_13

    .line 382
    add-int/lit8 v0, v0, -0x1

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 388
    new-instance v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 389
    .local v3, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 390
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit v6

    goto :goto_18

    :catchall_31
    move-exception v5

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v5
.end method

.method private readStatsFromFile()V
    .registers 7

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 358
    .local v1, "newFile":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v3

    .line 360
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 361
    invoke-direct {p0, v1}, Lcom/android/server/am/UsageStatsService;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_17
    .catchall {:try_start_5 .. :try_end_e} :catchall_3b

    .line 370
    :goto_e
    :try_start_e
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_3b

    .line 371
    return-void

    .line 364
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17
    .catchall {:try_start_10 .. :try_end_16} :catchall_3b

    goto :goto_e

    .line 367
    :catch_17
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    :try_start_18
    const-string v2, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reading data from file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 370
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3b
    move-exception v2

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1171
    if-eqz p0, :cond_14

    .line 1172
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    .line 1173
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1174
    const/4 v4, 0x1

    .line 1178
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_10
    return v4

    .line 1172
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1178
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private static scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1188
    if-eqz p0, :cond_15

    .line 1189
    array-length v0, p0

    .line 1190
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_15

    .line 1191
    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1192
    add-int/lit8 v1, v1, 0x1

    .line 1193
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    .line 1197
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_15
    return-object v2

    .line 1190
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method private writeHistoryStatsFLOCK(Landroid/util/AtomicFile;)V
    .registers 12
    .param p1, "historyFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 655
    const/4 v2, 0x0

    .line 657
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 658
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 659
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v6, "utf-8"

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 660
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 661
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 662
    const/4 v6, 0x0

    const-string/jumbo v7, "usage-history"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 663
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_9b

    .line 664
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2a
    :try_start_2a
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v3, v6, :cond_89

    .line 665
    const/4 v6, 0x0

    const-string v8, "pkg"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    const/4 v8, 0x0

    const-string v9, "name"

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 667
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 668
    .local v0, "comp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_80

    .line 669
    const/4 v6, 0x0

    const-string v8, "comp"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    const/4 v8, 0x0

    const-string v9, "lrt"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    const/4 v6, 0x0

    const-string v8, "comp"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 674
    :cond_80
    const/4 v6, 0x0

    const-string v8, "pkg"

    invoke-interface {v5, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 664
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 676
    .end local v0    # "comp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "j":I
    :cond_89
    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_2a .. :try_end_8a} :catchall_98

    .line 677
    const/4 v6, 0x0

    :try_start_8b
    const-string/jumbo v7, "usage-history"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 680
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_97} :catch_9b

    .line 687
    .end local v3    # "i":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_97
    :goto_97
    return-void

    .line 676
    .restart local v3    # "i":I
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_98
    move-exception v6

    :try_start_99
    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v6
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9b} :catch_9b

    .line 681
    .end local v3    # "i":I
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_9b
    move-exception v1

    .line 682
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "UsageStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error writing history stats"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz v2, :cond_97

    .line 684
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_97
.end method

.method private writeStatsFLOCK(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 613
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 614
    .local v0, "out":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToParcelFLOCK(Landroid/os/Parcel;)V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_20

    .line 619
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 620
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 622
    return-void

    .line 619
    .end local v0    # "out":Landroid/os/Parcel;
    :catchall_20
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 620
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private writeStatsToFile(ZZ)V
    .registers 15
    .param p1, "force"    # Z
    .param p2, "forceWriteHistoryStats"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 519
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v8

    .line 520
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 521
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 522
    .local v1, "curDay":I
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_37

    .line 523
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v1, v8, :cond_3a

    move v4, v6

    .line 528
    .local v4, "dayChanged":Z
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 532
    .local v2, "currElapsedTime":J
    if-nez p1, :cond_4f

    .line 533
    if-nez v4, :cond_3c

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0x1b7740

    cmp-long v8, v8, v10

    if-gez v8, :cond_3c

    .line 608
    :cond_36
    :goto_36
    return-void

    .line 522
    .end local v1    # "curDay":I
    .end local v2    # "currElapsedTime":J
    .end local v4    # "dayChanged":Z
    :catchall_37
    move-exception v6

    :try_start_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v6

    .restart local v1    # "curDay":I
    :cond_3a
    move v4, v7

    .line 523
    goto :goto_1f

    .line 538
    .restart local v2    # "currElapsedTime":J
    .restart local v4    # "dayChanged":Z
    :cond_3c
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 539
    new-instance v6, Lcom/android/server/am/UsageStatsService$1;

    const-string v7, "UsageStatsService_DiskWriter"

    invoke-direct {v6, p0, v7}, Lcom/android/server/am/UsageStatsService$1;-><init>(Lcom/android/server/am/UsageStatsService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/UsageStatsService$1;->start()V

    goto :goto_36

    .line 559
    :cond_4f
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v7

    .line 561
    :try_start_52
    const-string/jumbo v6, "usage-"

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, "backupFile":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    if-eqz v6, :cond_a5

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 565
    new-instance v0, Ljava/io/File;

    .end local v0    # "backupFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".bak"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v0    # "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a0

    .line 567
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_a5

    .line 568
    const-string v6, "UsageStats"

    const-string v8, "Failed to persist new stats"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    monitor-exit v7

    goto :goto_36

    .line 606
    .end local v0    # "backupFile":Ljava/io/File;
    :catchall_9d
    move-exception v6

    monitor-exit v7
    :try_end_9f
    .catchall {:try_start_52 .. :try_end_9f} :catchall_9d

    throw v6

    .line 572
    .restart local v0    # "backupFile":Ljava/io/File;
    :cond_a0
    :try_start_a0
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_9d

    .line 578
    :cond_a5
    :try_start_a5
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->writeStatsFLOCK(Ljava/io/File;)V

    .line 579
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 580
    if-eqz v4, :cond_cd

    .line 581
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 583
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    monitor-enter v8
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b9} :catch_e1
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_9d

    .line 584
    :try_start_b9
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    .line 585
    monitor-exit v8
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_de

    .line 586
    :try_start_bf
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 587
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 590
    :cond_cd
    if-nez v4, :cond_d1

    if-eqz p2, :cond_d6

    .line 592
    :cond_d1
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Landroid/util/AtomicFile;

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->writeHistoryStatsFLOCK(Landroid/util/AtomicFile;)V

    .line 596
    :cond_d6
    if-eqz v0, :cond_db

    .line 597
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_db} :catch_e1
    .catchall {:try_start_bf .. :try_end_db} :catchall_9d

    .line 606
    :cond_db
    :goto_db
    :try_start_db
    monitor-exit v7
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_9d

    goto/16 :goto_36

    .line 585
    :catchall_de
    move-exception v6

    :try_start_df
    monitor-exit v8
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v6
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e1} :catch_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_9d

    .line 599
    :catch_e1
    move-exception v5

    .line 600
    .local v5, "e":Ljava/io/IOException;
    :try_start_e2
    const-string v6, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed writing stats to file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-eqz v0, :cond_db

    .line 602
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 603
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_108
    .catchall {:try_start_e2 .. :try_end_108} :catchall_9d

    goto :goto_db
.end method

.method private writeStatsToParcelFLOCK(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 625
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 626
    const/16 v4, 0x3f0

    :try_start_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 628
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 630
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 631
    .local v3, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_19

    .line 634
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_34
    move-exception v4

    monitor-exit v5
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_37
    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 635
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1205
    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3f

    .line 1207
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump UsageStats from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    :goto_3e
    return-void

    .line 1213
    :cond_3f
    const-string v10, "--checkin"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1214
    .local v3, "isCheckinRequest":Z
    if-nez v3, :cond_4f

    const-string v10, "-c"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8d

    :cond_4f
    const/4 v4, 0x1

    .line 1215
    .local v4, "isCompactOutput":Z
    :goto_50
    if-nez v3, :cond_5a

    const-string v10, "-d"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8f

    :cond_5a
    const/4 v1, 0x1

    .line 1216
    .local v1, "deleteAfterPrint":Z
    :goto_5b
    const-string v10, "--packages"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1221
    .local v9, "rawPackages":Ljava/lang/String;
    if-nez v1, :cond_68

    .line 1222
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 1225
    :cond_68
    const/4 v8, 0x0

    .line 1226
    .local v8, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_91

    .line 1227
    const-string v10, "*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9b

    .line 1229
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1230
    .local v7, "names":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7c
    if-ge v2, v5, :cond_9b

    aget-object v6, v0, v2

    .line 1231
    .local v6, "n":Ljava/lang/String;
    if-nez v8, :cond_87

    .line 1232
    new-instance v8, Ljava/util/HashSet;

    .end local v8    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1234
    .restart local v8    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_87
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 1214
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "deleteAfterPrint":Z
    .end local v2    # "i$":I
    .end local v4    # "isCompactOutput":Z
    .end local v5    # "len$":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "names":[Ljava/lang/String;
    .end local v8    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "rawPackages":Ljava/lang/String;
    :cond_8d
    const/4 v4, 0x0

    goto :goto_50

    .line 1215
    .restart local v4    # "isCompactOutput":Z
    :cond_8f
    const/4 v1, 0x0

    goto :goto_5b

    .line 1237
    .restart local v1    # "deleteAfterPrint":Z
    .restart local v8    # "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "rawPackages":Ljava/lang/String;
    :cond_91
    if-eqz v3, :cond_9b

    .line 1240
    const-string v10, "UsageStats"

    const-string v11, "Checkin without packages"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1244
    :cond_9b
    iget-object v11, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1245
    :try_start_9e
    invoke-direct {p0, p2, v4, v1, v8}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V

    .line 1246
    monitor-exit v11

    goto :goto_3e

    :catchall_a3
    move-exception v10

    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_a3

    throw v10
.end method

.method public enforceCallingPermission()V
    .registers 6

    .prologue
    .line 908
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 913
    :goto_a
    return-void

    .line 911
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a
.end method

.method public getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 936
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 939
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 940
    .local v9, "size":I
    if-gtz v9, :cond_15

    .line 941
    monitor-exit v10

    .line 957
    :goto_14
    return-object v8

    .line 943
    :cond_15
    new-array v8, v9, [Lcom/android/internal/os/PkgUsageStats;

    .line 944
    .local v8, "retArr":[Lcom/android/internal/os/PkgUsageStats;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, v9, :cond_45

    .line 945
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 946
    .local v1, "pkg":Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 947
    .local v3, "usageTime":J
    const/4 v2, 0x0

    .line 949
    .local v2, "launchCount":I
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 950
    .local v7, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v7, :cond_33

    .line 951
    iget-wide v3, v7, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 952
    iget v2, v7, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 954
    :cond_33
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    aput-object v0, v8, v6

    .line 944
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 957
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "launchCount":I
    .end local v3    # "usageTime":J
    .end local v7    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_45
    monitor-exit v10

    goto :goto_14

    .line 958
    .end local v6    # "i":I
    .end local v8    # "retArr":[Lcom/android/internal/os/PkgUsageStats;
    .end local v9    # "size":I
    :catchall_47
    move-exception v0

    monitor-exit v10
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_47

    throw v0
.end method

.method public getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;
    .registers 11
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 916
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 931
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_10
    :goto_10
    return-object v0

    .line 923
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_11
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 924
    :try_start_14
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 925
    .local v6, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 926
    .local v5, "lastResumeTimes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v6, :cond_2d

    if-nez v5, :cond_2d

    .line 927
    monitor-exit v7

    goto :goto_10

    .line 932
    .end local v5    # "lastResumeTimes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_2a
    move-exception v0

    monitor-exit v7
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw v0

    .line 929
    .restart local v5    # "lastResumeTimes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_2d
    if-eqz v6, :cond_3c

    :try_start_2f
    iget v2, v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 930
    .local v2, "launchCount":I
    :goto_31
    if-eqz v6, :cond_3e

    iget-wide v3, v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 931
    .local v3, "usageTime":J
    :goto_35
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_2a

    goto :goto_10

    .line 929
    .end local v2    # "launchCount":I
    .end local v3    # "usageTime":J
    :cond_3c
    const/4 v2, 0x0

    goto :goto_31

    .line 930
    .restart local v2    # "launchCount":I
    :cond_3e
    const-wide/16 v3, 0x0

    goto :goto_35
.end method

.method public monitorPackages()V
    .registers 5

    .prologue
    .line 699
    new-instance v0, Lcom/android/server/am/UsageStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/UsageStatsService$2;-><init>(Lcom/android/server/am/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 707
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 708
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->filterHistoryStats()V

    .line 709
    return-void
.end method

.method public noteFullyDrawnTime(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "millis"    # I

    .prologue
    const/4 v2, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 891
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 905
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_c
    :goto_c
    return-void

    .line 897
    .restart local v0    # "pkgName":Ljava/lang/String;
    :cond_d
    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 899
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 900
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 901
    .local v1, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_24

    .line 902
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addFullyDrawnTime(Ljava/lang/String;I)V

    .line 904
    :cond_24
    monitor-exit v3

    goto :goto_c

    .end local v1    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public noteLaunchTime(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "millis"    # I

    .prologue
    const/4 v2, 0x0

    .line 862
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 864
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 878
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_c
    :goto_c
    return-void

    .line 870
    .restart local v0    # "pkgName":Ljava/lang/String;
    :cond_d
    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 872
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 873
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 874
    .local v1, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_24

    .line 875
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchTime(Ljava/lang/String;I)V

    .line 877
    :cond_24
    monitor-exit v3

    goto :goto_c

    .end local v1    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v8, 0x0

    .line 818
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 820
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 822
    if-eqz p1, :cond_f

    :try_start_9
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgName":Ljava/lang/String;
    if-nez v2, :cond_11

    .line 824
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_f
    monitor-exit v7

    .line 859
    :goto_10
    return-void

    .line 826
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_11
    iget-boolean v6, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-nez v6, :cond_1a

    .line 829
    monitor-exit v7

    goto :goto_10

    .line 855
    .end local v2    # "pkgName":Ljava/lang/String;
    :catchall_17
    move-exception v6

    monitor-exit v7
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v6

    .line 831
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_1a
    const/4 v6, 0x0

    :try_start_1b
    iput-boolean v6, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 833
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 834
    .local v4, "wachers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/IUsageStatsWatcher;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/IUsageStatsWatcher;
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_17

    .line 836
    .local v5, "watcher":Lcom/android/internal/app/IUsageStatsWatcher;
    :try_start_34
    invoke-interface {v5, p1}, Lcom/android/internal/app/IUsageStatsWatcher;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_17

    goto :goto_28

    .line 837
    :catch_38
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_39
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 844
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "watcher":Lcom/android/internal/app/IUsageStatsWatcher;
    :cond_3f
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 845
    .local v3, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v3, :cond_63

    .line 847
    const-string v6, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No package stats for pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    monitor-exit v7

    goto :goto_10

    .line 850
    :cond_63
    invoke-virtual {v3}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 852
    iput-object v2, p0, Lcom/android/server/am/UsageStatsService;->mPreviousPackage:Ljava/lang/String;

    .line 855
    monitor-exit v7
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_17

    .line 858
    invoke-direct {p0, v8, v8}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    goto :goto_10
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 16
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 761
    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 762
    if-eqz p1, :cond_e

    :try_start_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "pkgName":Ljava/lang/String;
    if-nez v3, :cond_10

    .line 764
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_e
    monitor-exit v10

    .line 815
    :goto_f
    return-void

    .line 767
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_10
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 768
    .local v6, "samePackage":Z
    iget-boolean v9, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-eqz v9, :cond_2d

    .line 769
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v9, :cond_2d

    .line 774
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    iget-object v11, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 775
    .local v4, "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v4, :cond_2d

    .line 776
    invoke-virtual {v4}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 781
    .end local v4    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_2d
    if-eqz v6, :cond_6c

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6c

    const/4 v5, 0x1

    .line 784
    .local v5, "sameComp":Z
    :goto_3c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 785
    iput-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    .line 786
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    .line 788
    new-instance v7, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 789
    .local v7, "wachers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/IUsageStatsWatcher;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/IUsageStatsWatcher;
    :try_end_5e
    .catchall {:try_start_8 .. :try_end_5e} :catchall_69

    .line 791
    .local v8, "watcher":Lcom/android/internal/app/IUsageStatsWatcher;
    :try_start_5e
    invoke-interface {v8, p1, p2}, Lcom/android/internal/app/IUsageStatsWatcher;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_69

    goto :goto_52

    .line 792
    :catch_62
    move-exception v1

    .line 793
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_63
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_52

    .line 814
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v5    # "sameComp":Z
    .end local v6    # "samePackage":Z
    .end local v7    # "wachers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/IUsageStatsWatcher;>;"
    .end local v8    # "watcher":Lcom/android/internal/app/IUsageStatsWatcher;
    :catchall_69
    move-exception v9

    monitor-exit v10
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_69

    throw v9

    .line 781
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v6    # "samePackage":Z
    :cond_6c
    const/4 v5, 0x0

    goto :goto_3c

    .line 798
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sameComp":Z
    .restart local v7    # "wachers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/IUsageStatsWatcher;>;"
    :cond_6e
    :try_start_6e
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 799
    .restart local v4    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v4, :cond_82

    .line 800
    new-instance v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .end local v4    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-direct {v4, p0}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;)V

    .line 801
    .restart local v4    # "pus":Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_82
    iget-object v11, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    if-nez v6, :cond_b5

    const/4 v9, 0x1

    :goto_87
    invoke-virtual {v4, v11, v9}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updateResume(Ljava/lang/String;Z)V

    .line 804
    if-nez v5, :cond_91

    .line 805
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchCount(Ljava/lang/String;)V

    .line 808
    :cond_91
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 809
    .local v0, "componentResumeTimes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_a5

    .line 810
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "componentResumeTimes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 811
    .restart local v0    # "componentResumeTimes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Landroid/util/ArrayMap;

    invoke-virtual {v9, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_a5
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    monitor-exit v10
    :try_end_b3
    .catchall {:try_start_6e .. :try_end_b3} :catchall_69

    goto/16 :goto_f

    .line 803
    .end local v0    # "componentResumeTimes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_b5
    const/4 v9, 0x0

    goto :goto_87
.end method

.method public noteResumeComponentForMDM(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 732
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 733
    if-eqz p1, :cond_e

    :try_start_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 735
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_e
    monitor-exit v5

    .line 755
    :goto_f
    return-void

    .line 737
    .restart local v1    # "pkgName":Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 738
    .local v3, "samePackage":Z
    if-eqz v3, :cond_40

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v2, 0x1

    .line 741
    .local v2, "sameComp":Z
    :goto_25
    if-nez v2, :cond_3b

    .line 742
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage;
    iput-object v1, p0, Lcom/android/server/am/UsageStatsService;->mCurrentPackage:Ljava/lang/String;

    .line 744
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mPreviousPackage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_42

    .line 745
    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationUsage;->appLaunchCount(Ljava/lang/String;I)V

    .line 754
    .end local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage;
    :cond_3b
    :goto_3b
    monitor-exit v5

    goto :goto_f

    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "sameComp":Z
    .end local v3    # "samePackage":Z
    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw v4

    .line 738
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v3    # "samePackage":Z
    :cond_40
    const/4 v2, 0x0

    goto :goto_25

    .line 747
    .restart local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage;
    .restart local v2    # "sameComp":Z
    :cond_42
    :try_start_42
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCurrentPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mPreviousPackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 748
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mPreviousPackage:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Lcom/android/server/enterprise/application/ApplicationUsage;->appPauseTime(Ljava/lang/String;I)V

    .line 749
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Lcom/android/server/enterprise/application/ApplicationUsage;->appLaunchCount(Ljava/lang/String;I)V
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_3d

    goto :goto_3b
.end method

.method public publish(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    .line 691
    const-string/jumbo v0, "usagestats"

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 692
    return-void
.end method

.method public setUsageStatsWatcher(Lcom/android/internal/app/IUsageStatsWatcher;)V
    .registers 3
    .param p1, "watcher"    # Lcom/android/internal/app/IUsageStatsWatcher;

    .prologue
    .line 881
    monitor-enter p0

    .line 882
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 883
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_e
    monitor-exit p0

    .line 886
    return-void

    .line 885
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public shutdown()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 712
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v0, :cond_a

    .line 713
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 715
    :cond_a
    const-string v0, "UsageStats"

    const-string v1, "Writing usage stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 717
    return-void
.end method
