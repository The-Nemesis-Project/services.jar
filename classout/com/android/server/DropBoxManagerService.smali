.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/internal/os/IDropBoxManagerService$Stub;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_AGE_SECONDS_KOR:I = 0x93a80

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"

.field private static final allowDropboxTag:Ljava/lang/String; = "data_app_crash:data_app_anr"

.field private static final exceptDropboxTag:Ljava/lang/String; = "system_server_wtf:system_app_wtf:data_app_wtf:event_log:event_data"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 91
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 95
    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 96
    iput v3, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 97
    iput v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 98
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 100
    iput-boolean v3, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 110
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 148
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/DropBoxManagerService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    new-instance v1, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 22
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 689
    .local v5, "t":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v3, 0x2710

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v17

    .line 690
    .local v17, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v10, 0x0

    .line 691
    .local v10, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v17 .. v17}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 692
    invoke-interface/range {v17 .. v17}, Ljava/util/SortedSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    check-cast v10, [Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 693
    .restart local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface/range {v17 .. v17}, Ljava/util/SortedSet;->clear()V

    .line 696
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v1, v1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 700
    :cond_50
    if-eqz v10, :cond_c3

    .line 701
    move-object v9, v10

    .local v9, "arr$":[Lcom/android/server/DropBoxManagerService$EntryFile;
    array-length v13, v9

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_55
    if-ge v11, v13, :cond_c3

    aget-object v12, v9, v11

    .line 702
    .local v12, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/DropBoxManagerService$FileList;

    .line 704
    .local v16, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v16, :cond_87

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, v12}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 705
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v1, v2

    move-object/from16 v0, v16

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 707
    :cond_87
    iget v1, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_ad

    .line 708
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v2, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v4, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v7, 0x1

    add-long v14, v5, v7

    .end local v5    # "t":J
    .local v14, "t":J
    iget v7, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct/range {v1 .. v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v5, v14

    .line 701
    .end local v14    # "t":J
    .restart local v5    # "t":J
    :goto_aa
    add-int/lit8 v11, v11, 0x1

    goto :goto_55

    .line 711
    :cond_ad
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v3, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v7, 0x1

    add-long v14, v5, v7

    .end local v5    # "t":J
    .restart local v14    # "t":J
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v5, v14

    .end local v14    # "t":J
    .restart local v5    # "t":J
    goto :goto_aa

    .line 716
    .end local v9    # "arr$":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v11    # "i$":I
    .end local v12    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "len$":I
    .end local v16    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_c3
    if-nez p1, :cond_d7

    .line 717
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v1, v2, v0, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_d5
    .catchall {:try_start_1 .. :try_end_d5} :catchall_f0

    .line 721
    :goto_d5
    monitor-exit p0

    return-wide v5

    .line 719
    :cond_d7
    :try_start_d7
    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ef
    .catchall {:try_start_d7 .. :try_end_ef} :catchall_f0

    goto :goto_d5

    .line 683
    .end local v5    # "t":J
    .end local v10    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v17    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :catchall_f0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 6
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    .prologue
    .line 664
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v1, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 665
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v3, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 670
    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-eqz v1, :cond_42

    iget v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v1, :cond_42

    .line 671
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 672
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_36

    .line 673
    new-instance v0, Lcom/android/server/DropBoxManagerService$FileList;

    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 674
    .restart local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_36
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 677
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    .line 679
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_42
    monitor-exit p0

    return-void

    .line 664
    :catchall_44
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized init()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v7, :cond_48

    .line 621
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_33

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_33

    .line 622
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t mkdir: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_30

    .line 620
    :catchall_30
    move-exception v7

    monitor-exit p0

    throw v7

    .line 625
    :cond_33
    :try_start_33
    new-instance v7, Landroid/os/StatFs;

    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 626
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    iput v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_48} :catch_6f
    .catchall {:try_start_33 .. :try_end_48} :catchall_30

    .line 632
    :cond_48
    :try_start_48
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v7, :cond_117

    .line 633
    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 634
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_8b

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t list files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 627
    .end local v4    # "files":[Ljava/io/File;
    :catch_6f
    move-exception v1

    .line 628
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t statfs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 636
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "files":[Ljava/io/File;
    :cond_8b
    new-instance v7, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 637
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    .line 640
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9d
    if-ge v5, v6, :cond_117

    aget-object v3, v0, v5

    .line 641
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 642
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cleaning temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 640
    :goto_c8
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    .line 647
    :cond_cb
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v7, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v2, v3, v7}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 648
    .local v2, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v7, :cond_ef

    .line 649
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 651
    :cond_ef
    iget-wide v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_113

    .line 652
    const-string v7, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_c8

    .line 657
    :cond_113
    invoke-direct {p0, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_116
    .catchall {:try_start_48 .. :try_end_116} :catchall_30

    goto :goto_c8

    .line 660
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_117
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized trimToFit()J
    .registers 30

    .prologue
    .line 731
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_age_seconds"

    const v25, 0x3f480

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 737
    .local v3, "ageSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_max_files"

    const/16 v25, 0x3e8

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 739
    .local v10, "maxFiles":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    int-to-long v0, v3

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x3e8

    mul-long v25, v25, v27

    sub-long v5, v23, v25

    .line 740
    .local v5, "cutoffMillis":J
    :cond_2b
    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_6b

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 742
    .local v8, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v5

    if-lez v23, :cond_1a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v10, :cond_1a4

    .line 755
    .end local v8    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_6b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    .line 756
    .local v21, "uptimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1388

    add-long v23, v23, v25

    cmp-long v23, v21, v23

    if-lez v23, :cond_fc

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_quota_percent"

    const/16 v25, 0xa

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 759
    .local v14, "quotaPercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_reserve_percent"

    const/16 v25, 0xa

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 761
    .local v15, "reservePercent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "dropbox_quota_kb"

    const/16 v25, 0x1400

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 764
    .local v13, "quotaKb":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 766
    .local v4, "available":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/StatFs;->getBlockCount()I

    move-result v23

    mul-int v23, v23, v15

    div-int/lit8 v23, v23, 0x64

    sub-int v12, v4, v23

    .line 767
    .local v12, "nonreserved":I
    mul-int/lit16 v0, v13, 0x400

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v24, v0

    div-int v11, v23, v24

    .line 768
    .local v11, "maximum":I
    const/16 v23, 0x0

    mul-int v24, v12, v14

    div-int/lit8 v24, v24, 0x64

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 769
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 786
    .end local v4    # "available":I
    .end local v11    # "maximum":I
    .end local v12    # "nonreserved":I
    .end local v13    # "quotaKb":I
    .end local v14    # "quotaPercent":I
    .end local v15    # "reservePercent":I
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_18f

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v20, v0

    .local v20, "unsqueezed":I
    const/16 v16, 0x0

    .line 789
    .local v16, "squeezed":I
    new-instance v19, Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 790
    .local v19, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_139
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_15d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 791
    .local v17, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v16, :cond_214

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    div-int v24, v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_214

    .line 797
    .end local v17    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_15d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v20

    div-int v18, v23, v16

    .line 800
    .local v18, "tagQuota":I
    invoke-virtual/range {v19 .. v19}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 801
    .restart local v17    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_220

    .line 817
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "squeezed":I
    .end local v17    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v18    # "tagQuota":I
    .end local v19    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v20    # "unsqueezed":I
    :cond_18f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v24, v0
    :try_end_19b
    .catchall {:try_start_1 .. :try_end_19b} :catchall_211

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    monitor-exit p0

    return-wide v23

    .line 744
    .end local v21    # "uptimeMillis":J
    .restart local v8    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_1a4
    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/DropBoxManagerService$FileList;

    .line 745
    .restart local v17    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v17, :cond_1d6

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d6

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    iget v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 746
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_202

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    iget v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 747
    :cond_202
    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b

    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_20f
    .catchall {:try_start_1a4 .. :try_end_20f} :catchall_211

    goto/16 :goto_2b

    .line 731
    .end local v3    # "ageSeconds":I
    .end local v5    # "cutoffMillis":J
    .end local v8    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v10    # "maxFiles":I
    .end local v17    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :catchall_211
    move-exception v23

    monitor-exit p0

    throw v23

    .line 794
    .restart local v3    # "ageSeconds":I
    .restart local v5    # "cutoffMillis":J
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "maxFiles":I
    .restart local v16    # "squeezed":I
    .restart local v17    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v19    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v20    # "unsqueezed":I
    .restart local v21    # "uptimeMillis":J
    :cond_214
    :try_start_214
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    sub-int v20, v20, v23

    .line 795
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_139

    .line 802
    .restart local v18    # "tagQuota":I
    :cond_220
    :goto_220
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-le v0, v1, :cond_16b

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_16b

    .line 803
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 804
    .restart local v8    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_264

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v23, v0

    iget v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 805
    :cond_264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_290

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    move/from16 v24, v0

    iget v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_290
    .catchall {:try_start_214 .. :try_end_290} :catchall_211

    .line 808
    :cond_290
    :try_start_290
    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    if-eqz v23, :cond_29d

    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 809
    :cond_29d
    new-instance v23, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v24, v0

    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-wide v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-wide/from16 v26, v0

    invoke-direct/range {v23 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_2b7
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_2b7} :catch_2b9
    .catchall {:try_start_290 .. :try_end_2b7} :catchall_211

    goto/16 :goto_220

    .line 810
    :catch_2b9
    move-exception v7

    .line 811
    .local v7, "e":Ljava/io/IOException;
    :try_start_2ba
    const-string v23, "DropBoxManagerService"

    const-string v24, "Can\'t write tombstone file"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c5
    .catchall {:try_start_2ba .. :try_end_2c5} :catchall_211

    goto/16 :goto_220
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 33
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .prologue
    .line 186
    const/16 v23, 0x0

    .line 187
    .local v23, "temp":Ljava/io/File;
    const/16 v19, 0x0

    .line 188
    .local v19, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v22

    .line 190
    .local v22, "tag":Ljava/lang/String;
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v7

    .line 191
    .local v7, "flags":I
    and-int/lit8 v27, v7, 0x1

    if-eqz v27, :cond_45

    new-instance v27, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v27 .. v27}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v27
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1d7

    .line 266
    .end local v7    # "flags":I
    :catch_16
    move-exception v6

    .line 267
    .local v6, "e":Ljava/io/IOException;
    :goto_17
    :try_start_17
    const-string v27, "DropBoxManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Can\'t write: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_1d7

    .line 269
    if-eqz v19, :cond_3c

    :try_start_39
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_1e8

    .line 270
    :cond_3c
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 271
    if-eqz v23, :cond_44

    .end local v6    # "e":Ljava/io/IOException;
    :goto_41
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 273
    :cond_44
    return-void

    .line 193
    .restart local v7    # "flags":I
    :cond_45
    :try_start_45
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_16
    .catchall {:try_start_45 .. :try_end_4f} :catchall_1d7

    move-result v27

    if-nez v27, :cond_5b

    .line 269
    if-eqz v19, :cond_55

    :try_start_54
    throw v19
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_1eb

    .line 270
    :cond_55
    :goto_55
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 271
    if-eqz v23, :cond_44

    goto :goto_41

    .line 195
    :cond_5b
    :try_start_5b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v14

    .line 196
    .local v14, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 198
    .local v10, "lastTrim":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v3, v0, [B

    .line 199
    .local v3, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 204
    .local v9, "input":Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 205
    .local v21, "read":I
    :goto_73
    array-length v0, v3

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_8b

    .line 206
    array-length v0, v3

    move/from16 v27, v0

    sub-int v27, v27, v21

    move/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v9, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .line 207
    .local v16, "n":I
    if-gtz v16, :cond_1c4

    .line 214
    .end local v16    # "n":I
    :cond_8b
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "drop"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Thread;->getId()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_bd} :catch_16
    .catchall {:try_start_5b .. :try_end_bd} :catchall_1d7

    .line 215
    .end local v23    # "temp":Ljava/io/File;
    .local v24, "temp":Ljava/io/File;
    :try_start_bd
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 216
    .local v4, "bufferSize":I
    const/16 v27, 0x1000

    move/from16 v0, v27

    if-le v4, v0, :cond_c9

    const/16 v4, 0x1000

    .line 217
    :cond_c9
    const/16 v27, 0x200

    move/from16 v0, v27

    if-ge v4, v0, :cond_d1

    const/16 v4, 0x200

    .line 218
    :cond_d1
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 219
    .local v8, "foutput":Ljava/io/FileOutputStream;
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v8, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_df} :catch_1cd
    .catchall {:try_start_bd .. :try_end_df} :catchall_1f0

    .line 220
    .end local v19    # "output":Ljava/io/OutputStream;
    .local v20, "output":Ljava/io/OutputStream;
    :try_start_df
    array-length v0, v3

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_201

    and-int/lit8 v27, v7, 0x4

    if-nez v27, :cond_201

    .line 221
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_f1} :catch_1fa
    .catchall {:try_start_df .. :try_end_f1} :catchall_1f4

    .line 222
    .end local v20    # "output":Ljava/io/OutputStream;
    .restart local v19    # "output":Ljava/io/OutputStream;
    or-int/lit8 v7, v7, 0x4

    .line 226
    :cond_f3
    :goto_f3
    const/16 v27, 0x0

    :try_start_f5
    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 229
    .local v17, "now":J
    sub-long v27, v17, v10

    const-wide/16 v29, 0x7530

    cmp-long v27, v27, v29

    if-lez v27, :cond_110

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v14

    .line 231
    move-wide/from16 v10, v17

    .line 234
    :cond_110
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 235
    if-gtz v21, :cond_1c8

    .line 236
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 237
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    .line 238
    const/16 v19, 0x0

    .line 243
    :goto_11e
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 244
    .local v12, "len":J
    cmp-long v27, v12, v14

    if-lez v27, :cond_1d2

    .line 245
    const-string v27, "DropBoxManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Dropping: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " > "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " bytes)"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_165} :catch_1cd
    .catchall {:try_start_f5 .. :try_end_165} :catchall_1f0

    .line 247
    const/16 v23, 0x0

    .line 252
    .end local v24    # "temp":Ljava/io/File;
    .restart local v23    # "temp":Ljava/io/File;
    :goto_167
    :try_start_167
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v25

    .line 253
    .local v25, "time":J
    const/16 v23, 0x0

    .line 255
    new-instance v5, Landroid/content/Intent;

    const-string v27, "android.intent.action.DROPBOX_ENTRY_ADDED"

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v5, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v27, "tag"

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v27, "time"

    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    move/from16 v27, v0

    if-nez v27, :cond_19f

    .line 259
    const/high16 v27, 0x40000000

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_1b8} :catch_16
    .catchall {:try_start_167 .. :try_end_1b8} :catchall_1d7

    .line 269
    if-eqz v19, :cond_1bd

    :try_start_1ba
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bd} :catch_1ee

    .line 270
    :cond_1bd
    :goto_1bd
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 271
    if-eqz v23, :cond_44

    goto/16 :goto_41

    .line 208
    .end local v4    # "bufferSize":I
    .end local v5    # "dropboxIntent":Landroid/content/Intent;
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .end local v12    # "len":J
    .end local v17    # "now":J
    .end local v25    # "time":J
    .restart local v16    # "n":I
    :cond_1c4
    add-int v21, v21, v16

    .line 209
    goto/16 :goto_73

    .line 240
    .end local v16    # "n":I
    .end local v23    # "temp":Ljava/io/File;
    .restart local v4    # "bufferSize":I
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v17    # "now":J
    .restart local v24    # "temp":Ljava/io/File;
    :cond_1c8
    :try_start_1c8
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1cd
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_1f0

    goto/16 :goto_11e

    .line 266
    .end local v4    # "bufferSize":I
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .end local v17    # "now":J
    :catch_1cd
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "temp":Ljava/io/File;
    .restart local v23    # "temp":Ljava/io/File;
    goto/16 :goto_17

    .line 250
    .end local v23    # "temp":Ljava/io/File;
    .restart local v4    # "bufferSize":I
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v12    # "len":J
    .restart local v17    # "now":J
    .restart local v24    # "temp":Ljava/io/File;
    :cond_1d2
    if-gtz v21, :cond_f3

    move-object/from16 v23, v24

    .end local v24    # "temp":Ljava/io/File;
    .restart local v23    # "temp":Ljava/io/File;
    goto :goto_167

    .line 269
    .end local v3    # "buffer":[B
    .end local v4    # "bufferSize":I
    .end local v7    # "flags":I
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .end local v9    # "input":Ljava/io/InputStream;
    .end local v10    # "lastTrim":J
    .end local v12    # "len":J
    .end local v14    # "max":J
    .end local v17    # "now":J
    .end local v21    # "read":I
    :catchall_1d7
    move-exception v27

    :goto_1d8
    if-eqz v19, :cond_1dd

    :try_start_1da
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1e6

    .line 270
    :cond_1dd
    :goto_1dd
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 271
    if-eqz v23, :cond_1e5

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 269
    :cond_1e5
    throw v27

    :catch_1e6
    move-exception v28

    goto :goto_1dd

    .restart local v6    # "e":Ljava/io/IOException;
    :catch_1e8
    move-exception v27

    goto/16 :goto_3c

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "flags":I
    :catch_1eb
    move-exception v27

    goto/16 :goto_55

    .restart local v3    # "buffer":[B
    .restart local v4    # "bufferSize":I
    .restart local v5    # "dropboxIntent":Landroid/content/Intent;
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    .restart local v10    # "lastTrim":J
    .restart local v12    # "len":J
    .restart local v14    # "max":J
    .restart local v17    # "now":J
    .restart local v21    # "read":I
    .restart local v25    # "time":J
    :catch_1ee
    move-exception v27

    goto :goto_1bd

    .end local v4    # "bufferSize":I
    .end local v5    # "dropboxIntent":Landroid/content/Intent;
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .end local v12    # "len":J
    .end local v17    # "now":J
    .end local v23    # "temp":Ljava/io/File;
    .end local v25    # "time":J
    .restart local v24    # "temp":Ljava/io/File;
    :catchall_1f0
    move-exception v27

    move-object/from16 v23, v24

    .end local v24    # "temp":Ljava/io/File;
    .restart local v23    # "temp":Ljava/io/File;
    goto :goto_1d8

    .end local v19    # "output":Ljava/io/OutputStream;
    .end local v23    # "temp":Ljava/io/File;
    .restart local v4    # "bufferSize":I
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v20    # "output":Ljava/io/OutputStream;
    .restart local v24    # "temp":Ljava/io/File;
    :catchall_1f4
    move-exception v27

    move-object/from16 v19, v20

    .end local v20    # "output":Ljava/io/OutputStream;
    .restart local v19    # "output":Ljava/io/OutputStream;
    move-object/from16 v23, v24

    .end local v24    # "temp":Ljava/io/File;
    .restart local v23    # "temp":Ljava/io/File;
    goto :goto_1d8

    .line 266
    .end local v19    # "output":Ljava/io/OutputStream;
    .end local v23    # "temp":Ljava/io/File;
    .restart local v20    # "output":Ljava/io/OutputStream;
    .restart local v24    # "temp":Ljava/io/File;
    :catch_1fa
    move-exception v6

    move-object/from16 v19, v20

    .end local v20    # "output":Ljava/io/OutputStream;
    .restart local v19    # "output":Ljava/io/OutputStream;
    move-object/from16 v23, v24

    .end local v24    # "temp":Ljava/io/File;
    .restart local v23    # "temp":Ljava/io/File;
    goto/16 :goto_17

    .end local v19    # "output":Ljava/io/OutputStream;
    .end local v23    # "temp":Ljava/io/File;
    .restart local v20    # "output":Ljava/io/OutputStream;
    .restart local v24    # "temp":Ljava/io/File;
    :cond_201
    move-object/from16 v19, v20

    .end local v20    # "output":Ljava/io/OutputStream;
    .restart local v19    # "output":Ljava/io/OutputStream;
    goto/16 :goto_f3
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 35
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_16

    .line 330
    const-string v3, "Permission Denial: Can\'t dump DropBoxManagerService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_69

    .line 458
    :goto_14
    monitor-exit p0

    return-void

    .line 335
    :cond_16
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_48
    .catchall {:try_start_16 .. :try_end_19} :catchall_69

    .line 344
    :try_start_19
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v26, "out":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "doPrint":Z
    const/4 v13, 0x0

    .line 346
    .local v13, "doFile":Z
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v27, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_27
    if-eqz p3, :cond_a8

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_a8

    .line 348
    aget-object v3, p3, v17

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    aget-object v3, p3, v17

    const-string v4, "--print"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 349
    :cond_44
    const/4 v14, 0x1

    .line 347
    :goto_45
    add-int/lit8 v17, v17, 0x1

    goto :goto_27

    .line 336
    .end local v13    # "doFile":Z
    .end local v14    # "doPrint":Z
    .end local v17    # "i":I
    .end local v26    # "out":Ljava/lang/StringBuilder;
    .end local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_48
    move-exception v15

    .line 337
    .local v15, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t initialize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string v3, "DropBoxManagerService"

    const-string v4, "Can\'t init"

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_19 .. :try_end_68} :catchall_69

    goto :goto_14

    .line 328
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_69
    move-exception v3

    monitor-exit p0

    throw v3

    .line 350
    .restart local v13    # "doFile":Z
    .restart local v14    # "doPrint":Z
    .restart local v17    # "i":I
    .restart local v26    # "out":Ljava/lang/StringBuilder;
    .restart local v27    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6c
    :try_start_6c
    aget-object v3, p3, v17

    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    aget-object v3, p3, v17

    const-string v4, "--file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 351
    :cond_80
    const/4 v13, 0x1

    goto :goto_45

    .line 352
    :cond_82
    aget-object v3, p3, v17

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 353
    const-string v3, "Unknown argument: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 355
    :cond_a0
    aget-object v3, p3, v17

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 359
    :cond_a8
    const-string v3, "Drop box contents: "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v4, v4, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " entries\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 362
    const-string v3, "Searching for:"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_d4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ec

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    .line 364
    .end local v8    # "a":Ljava/lang/String;
    :cond_ec
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_f3
    const/16 v25, 0x0

    .local v25, "numFound":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 368
    .local v24, "numArgs":I
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 369
    .local v29, "time":Landroid/text/format/Time;
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v3, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_10f
    :goto_10f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_325

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 371
    .local v16, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 372
    const-string v3, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 373
    .local v11, "date":Ljava/lang/String;
    const/16 v21, 0x1

    .line 374
    .local v21, "match":Z
    const/16 v17, 0x0

    :goto_130
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_15a

    if-eqz v21, :cond_15a

    .line 375
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 376
    .local v9, "arg":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_152

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    :cond_152
    const/16 v21, 0x1

    .line 374
    :goto_154
    add-int/lit8 v17, v17, 0x1

    goto :goto_130

    .line 376
    :cond_157
    const/16 v21, 0x0

    goto :goto_154

    .line 378
    .end local v9    # "arg":Ljava/lang/String;
    :cond_15a
    if-eqz v21, :cond_10f

    .line 380
    add-int/lit8 v25, v25, 0x1

    .line 381
    if-eqz v14, :cond_167

    const-string v3, "========================================\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_167
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v3, :cond_18c

    const-string v3, "(no tag)"

    :goto_17b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    if-nez v3, :cond_191

    .line 384
    const-string v3, " (no file)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10f

    .line 382
    :cond_18c
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    goto :goto_17b

    .line 386
    :cond_191
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a2

    .line 387
    const-string v3, " (contents lost)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10f

    .line 390
    :cond_1a2
    const-string v3, " ("

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1b8

    const-string v3, "compressed "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_1b8
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_268

    const-string/jumbo v3, "text"

    :goto_1c3
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v3, ", "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    if-nez v13, :cond_1ed

    if-eqz v14, :cond_209

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_209

    .line 397
    :cond_1ed
    if-nez v14, :cond_1f6

    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_1f6
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_209
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_20d
    .catchall {:try_start_6c .. :try_end_20d} :catchall_69

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_25d

    if-nez v14, :cond_215

    if-nez v13, :cond_25d

    .line 402
    :cond_215
    const/4 v12, 0x0

    .line 403
    .local v12, "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v19, 0x0

    .line 405
    .local v19, "isr":Ljava/io/InputStreamReader;
    :try_start_218
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v2 .. v7}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_22d} :catch_358
    .catchall {:try_start_218 .. :try_end_22d} :catchall_318

    .line 408
    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v2, "dbe":Landroid/os/DropBoxManager$Entry;
    if-eqz v14, :cond_2da

    .line 409
    :try_start_22f
    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_23a} :catch_313
    .catchall {:try_start_22f .. :try_end_23a} :catchall_352

    .line 410
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .local v20, "isr":Ljava/io/InputStreamReader;
    const/16 v3, 0x1000

    :try_start_23c
    new-array v10, v3, [C

    .line 411
    .local v10, "buf":[C
    const/16 v23, 0x0

    .line 413
    .local v23, "newline":Z
    :cond_240
    :goto_240
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v22

    .line 414
    .local v22, "n":I
    if-gtz v22, :cond_26c

    .line 424
    if-nez v23, :cond_251

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_251
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_251} :catch_296
    .catchall {:try_start_23c .. :try_end_251} :catchall_354

    :cond_251
    move-object/from16 v19, v20

    .line 436
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_253
    if-eqz v2, :cond_258

    :try_start_255
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_258
    .catchall {:try_start_255 .. :try_end_258} :catchall_69

    .line 437
    :cond_258
    if-eqz v19, :cond_25d

    .line 439
    :try_start_25a
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_25d} :catch_2d5
    .catchall {:try_start_25a .. :try_end_25d} :catchall_69

    .line 446
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_25d
    :goto_25d
    if-eqz v14, :cond_10f

    :try_start_25f
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10f

    .line 392
    :cond_268
    const-string v3, "data"
    :try_end_26a
    .catchall {:try_start_25f .. :try_end_26a} :catchall_69

    goto/16 :goto_1c3

    .line 415
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_26c
    const/4 v3, 0x0

    :try_start_26d
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v10, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v3, v22, -0x1

    aget-char v3, v10, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2d7

    const/16 v23, 0x1

    .line 419
    :goto_27e
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_240

    .line 420
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 421
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_295
    .catch Ljava/io/IOException; {:try_start_26d .. :try_end_295} :catch_296
    .catchall {:try_start_26d .. :try_end_295} :catchall_354

    goto :goto_240

    .line 432
    .end local v10    # "buf":[C
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    :catch_296
    move-exception v15

    move-object/from16 v19, v20

    .line 433
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "e":Ljava/io/IOException;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :goto_299
    :try_start_299
    const-string v3, "*** "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v3, "DropBoxManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2ca
    .catchall {:try_start_299 .. :try_end_2ca} :catchall_352

    .line 436
    if-eqz v2, :cond_2cf

    :try_start_2cc
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_69

    .line 437
    :cond_2cf
    if-eqz v19, :cond_25d

    .line 439
    :try_start_2d1
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_2d4} :catch_2d5
    .catchall {:try_start_2d1 .. :try_end_2d4} :catchall_69

    goto :goto_25d

    .line 440
    .end local v15    # "e":Ljava/io/IOException;
    :catch_2d5
    move-exception v3

    goto :goto_25d

    .line 416
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "buf":[C
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v22    # "n":I
    .restart local v23    # "newline":Z
    :cond_2d7
    const/16 v23, 0x0

    goto :goto_27e

    .line 426
    .end local v10    # "buf":[C
    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .end local v22    # "n":I
    .end local v23    # "newline":Z
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    :cond_2da
    const/16 v3, 0x46

    :try_start_2dc
    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v28

    .line 427
    .local v28, "text":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_315

    const/16 v30, 0x1

    .line 428
    .local v30, "truncated":Z
    :goto_2ea
    const-string v3, "    "

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    if-eqz v30, :cond_30a

    const-string v3, " ..."

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_30a
    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_311
    .catch Ljava/io/IOException; {:try_start_2dc .. :try_end_311} :catch_313
    .catchall {:try_start_2dc .. :try_end_311} :catchall_352

    goto/16 :goto_253

    .line 432
    .end local v28    # "text":Ljava/lang/String;
    .end local v30    # "truncated":Z
    :catch_313
    move-exception v15

    goto :goto_299

    .line 427
    .restart local v28    # "text":Ljava/lang/String;
    :cond_315
    const/16 v30, 0x0

    goto :goto_2ea

    .line 436
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v28    # "text":Ljava/lang/String;
    .restart local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_318
    move-exception v3

    move-object v2, v12

    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    :goto_31a
    if-eqz v2, :cond_31f

    :try_start_31c
    invoke-virtual {v2}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_31f
    .catchall {:try_start_31c .. :try_end_31f} :catchall_69

    .line 437
    :cond_31f
    if-eqz v19, :cond_324

    .line 439
    :try_start_321
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStreamReader;->close()V
    :try_end_324
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_324} :catch_350
    .catchall {:try_start_321 .. :try_end_324} :catchall_69

    .line 436
    :cond_324
    :goto_324
    :try_start_324
    throw v3

    .line 449
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v11    # "date":Ljava/lang/String;
    .end local v16    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .end local v21    # "match":Z
    :cond_325
    if-nez v25, :cond_32e

    const-string v3, "(No entries found.)\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_32e
    if-eqz p3, :cond_335

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_345

    .line 452
    :cond_335
    if-nez v14, :cond_33e

    const-string v3, "\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    :cond_33e
    const-string v3, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_345
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_34e
    .catchall {:try_start_324 .. :try_end_34e} :catchall_69

    goto/16 :goto_14

    .line 440
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v11    # "date":Ljava/lang/String;
    .restart local v16    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v21    # "match":Z
    :catch_350
    move-exception v4

    goto :goto_324

    .line 436
    :catchall_352
    move-exception v3

    goto :goto_31a

    .end local v19    # "isr":Ljava/io/InputStreamReader;
    .restart local v20    # "isr":Ljava/io/InputStreamReader;
    :catchall_354
    move-exception v3

    move-object/from16 v19, v20

    .end local v20    # "isr":Ljava/io/InputStreamReader;
    .restart local v19    # "isr":Ljava/io/InputStreamReader;
    goto :goto_31a

    .line 432
    .end local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catch_358
    move-exception v15

    move-object v2, v12

    .end local v12    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v2    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto/16 :goto_299
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .prologue
    const/4 v10, 0x0

    .line 295
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 297
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_14

    .line 295
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 301
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_23
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    .line 307
    if-nez p1, :cond_2d

    :try_start_1c
    iget-object v9, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_14

    .line 308
    .local v9, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1e
    if-nez v9, :cond_37

    move-object v0, v10

    .line 324
    .end local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_21
    monitor-exit p0

    return-object v0

    .line 302
    :catch_23
    move-exception v6

    .line 303
    .local v6, "e":Ljava/io/IOException;
    :try_start_24
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 304
    goto :goto_21

    .line 307
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2d
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    goto :goto_1e

    .line 310
    .restart local v9    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_37
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v1, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-direct {v1, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 311
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 312
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_69

    .line 313
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_68
    .catchall {:try_start_24 .. :try_end_68} :catchall_14

    goto :goto_21

    .line 316
    :cond_69
    :try_start_69
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v1, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    iget v5, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_77
    .catchall {:try_start_69 .. :try_end_76} :catchall_14

    goto :goto_21

    .line 318
    :catch_77
    move-exception v6

    .line 319
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_78
    const-string v0, "DropBoxManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_78 .. :try_end_92} :catchall_14

    goto :goto_49

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_93
    move-object v0, v10

    .line 324
    goto :goto_21
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    .local v0, "token":J
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2c

    move-result v2

    if-nez v2, :cond_2a

    const/4 v2, 0x1

    .line 290
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 287
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_26

    .line 290
    :catchall_2c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    return-void
.end method
