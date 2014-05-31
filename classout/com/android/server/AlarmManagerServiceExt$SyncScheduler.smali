.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    }
.end annotation


# static fields
.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/AlarmManagerService;

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPid:I

.field private mEmailUid:I

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 345
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    .line 256
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 262
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    .line 292
    const-wide/32 v10, 0x1b77400

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 296
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 300
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 305
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 309
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    .line 313
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    .line 317
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    .line 321
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    .line 325
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    .line 333
    new-instance v10, Ljava/lang/Object;

    invoke-direct/range {v10 .. v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    .line 337
    new-instance v10, Ljava/lang/Object;

    invoke-direct/range {v10 .. v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    .line 340
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    .line 341
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 342
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 343
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 346
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    .line 347
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;

    .line 348
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "cscAppSyncList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "listApps":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v11

    .line 357
    :try_start_81
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 358
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string/jumbo v12, "whitelist"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 362
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_93
    array-length v10, v6

    if-ge v4, v10, :cond_113

    .line 363
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v12, v6, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 370
    .end local v4    # "i":I
    :cond_a0
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v12, "blacklist"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 371
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    .line 372
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    .line 377
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_b2
    array-length v10, v6

    if-ge v4, v10, :cond_113

    .line 378
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    aget-object v12, v6, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    aget-object v12, v6, v4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    .line 386
    .end local v4    # "i":I
    :cond_c6
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.sec.spp.push"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.sec.chaton"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.facebook.katana"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.twitter.android"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.facebook.orca"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.kakao.talk"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.google.android.apps.plus"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.mobilesrepublic.appygeek"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "mnn.Android"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    const-string v12, "com.google.android.apps.maps"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v12, "com.samsung.location"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_113
    iget-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-eqz v10, :cond_12c

    .line 403
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    const-string v12, ".*alarm.*"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    const-string v12, ".*clock.*"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    const-string v12, ".*ims.*"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_12c
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 412
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_137
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 413
    .local v8, "pC":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_137

    .line 421
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_149
    move-exception v10

    monitor-exit v11
    :try_end_14b
    .catchall {:try_start_81 .. :try_end_14b} :catchall_149

    throw v10

    .line 415
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_14c
    :try_start_14c
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_152
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_164

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 416
    .local v9, "pP":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 418
    .end local v9    # "pP":Ljava/lang/String;
    :cond_164
    const/4 v7, 0x0

    .local v7, "nm":I
    :goto_165
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_19a

    .line 419
    const-string v12, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TargetPackages> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ": "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    add-int/lit8 v7, v7, 0x1

    goto :goto_165

    .line 421
    :cond_19a
    monitor-exit v11
    :try_end_19b
    .catchall {:try_start_14c .. :try_end_19b} :catchall_149

    .line 426
    const-string v10, "account"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 427
    .local v1, "am":Landroid/accounts/AccountManager;
    if-eqz v1, :cond_1aa

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v1, p0, v10, v11}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 433
    :cond_1aa
    :try_start_1aa
    new-instance v10, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {v10, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_1b1
    .catch Ljava/net/SocketException; {:try_start_1aa .. :try_end_1b1} :catch_1b2
    .catch Ljava/net/UnknownHostException; {:try_start_1aa .. :try_end_1b1} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1b1} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b1} :catch_1c1

    .line 443
    :goto_1b1
    return-void

    .line 434
    :catch_1b2
    move-exception v3

    .line 435
    .local v3, "e":Ljava/net/SocketException;
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1b1

    .line 436
    .end local v3    # "e":Ljava/net/SocketException;
    :catch_1b7
    move-exception v3

    .line 437
    .local v3, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1b1

    .line 438
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :catch_1bc
    move-exception v3

    .line 439
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b1

    .line 440
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1c1
    move-exception v3

    .line 441
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b1
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .registers 7
    .param p1, "alarmExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1189
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c

    .line 1190
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :goto_b
    return-void

    .line 1196
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1197
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1202
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1204
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .registers 39
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "inputDistance"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 867
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_171

    const/16 v18, 0x1

    .line 868
    .local v18, "isRtc":Z
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 869
    .local v25, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 870
    .local v23, "nowElapsed":J
    sub-long v5, v25, v23

    .line 871
    .local v5, "TIME_SKEW":J
    if-eqz v18, :cond_175

    move-wide/from16 v27, v5

    .line 872
    .local v27, "skewToRtc":J
    :goto_1e
    const-wide v19, 0x7fffffffffffffffL

    .line 873
    .local v19, "nextAlarmWhen":J
    const-wide v21, 0x7fffffffffffffffL

    .line 874
    .local v21, "nextAlarmWhenElapsed":J
    move-wide/from16 v15, p2

    .line 875
    .local v15, "distance":J
    const/16 v17, 0x0

    .line 876
    .local v17, "isFlexibleRepeatingAlarm":Z
    const-wide/16 v9, 0x0

    .line 877
    .local v9, "count":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x3e8

    add-long v11, v30, v32

    .line 878
    .local v11, "curAlarmWhen":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v32, v0

    sub-long v13, v30, v32

    .line 879
    .local v13, "curAlarmWindow":J
    const/16 v29, 0x0

    .line 884
    .local v29, "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v30, v0

    if-nez v30, :cond_68

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_c5

    .line 886
    :cond_68
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v31

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v29

    .line 887
    if-eqz v29, :cond_c5

    .line 891
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_179

    .end local v5    # "TIME_SKEW":J
    :goto_96
    sub-long v19, v30, v5

    .line 893
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 894
    .local v8, "bigTemp":Ljava/math/BigInteger;
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 895
    .local v7, "bigGcd":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    const-wide/32 v32, 0x493e0

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_c5

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    .line 902
    .end local v7    # "bigGcd":Ljava/math/BigInteger;
    .end local v8    # "bigTemp":Ljava/math/BigInteger;
    :cond_c5
    const-wide/16 v30, 0x0

    cmp-long v30, v15, v30

    if-eqz v30, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    rem-long v30, v15, v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_e5

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 907
    :cond_e5
    const-wide v30, 0x7fffffffffffffffL

    cmp-long v30, v19, v30

    if-eqz v30, :cond_252

    .line 911
    add-long v19, v19, v27

    .line 917
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_10c

    add-long v30, v23, v27

    sub-long v30, v11, v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-lez v30, :cond_10c

    .line 919
    const/16 v17, 0x1

    .line 925
    :cond_10c
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v30

    if-eqz v30, :cond_130

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-nez v30, :cond_12e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_130

    .line 927
    :cond_12e
    const/16 v17, 0x1

    .line 934
    :cond_130
    cmp-long v30, v19, v11

    if-gtz v30, :cond_1d3

    .line 938
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v30, v0

    if-eqz v30, :cond_158

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    rem-long v30, p2, v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_158

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    .line 940
    :cond_158
    sub-long v30, v11, v19

    div-long v9, v30, v15

    .line 941
    if-eqz v17, :cond_17d

    .line 945
    :goto_15e
    const-wide/16 v30, 0x1

    add-long v30, v30, v9

    mul-long v30, v30, v15

    add-long v30, v30, v19

    add-long v32, v11, v13

    cmp-long v30, v30, v32

    if-gtz v30, :cond_17d

    const-wide/16 v30, 0x1

    add-long v9, v9, v30

    goto :goto_15e

    .line 867
    .end local v9    # "count":J
    .end local v11    # "curAlarmWhen":J
    .end local v13    # "curAlarmWindow":J
    .end local v15    # "distance":J
    .end local v17    # "isFlexibleRepeatingAlarm":Z
    .end local v18    # "isRtc":Z
    .end local v19    # "nextAlarmWhen":J
    .end local v21    # "nextAlarmWhenElapsed":J
    .end local v23    # "nowElapsed":J
    .end local v25    # "nowRtc":J
    .end local v27    # "skewToRtc":J
    .end local v29    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_171
    const/16 v18, 0x0

    goto/16 :goto_10

    .line 871
    .restart local v5    # "TIME_SKEW":J
    .restart local v18    # "isRtc":Z
    .restart local v23    # "nowElapsed":J
    .restart local v25    # "nowRtc":J
    :cond_175
    const-wide/16 v27, 0x0

    goto/16 :goto_1e

    .line 891
    .restart local v9    # "count":J
    .restart local v11    # "curAlarmWhen":J
    .restart local v13    # "curAlarmWindow":J
    .restart local v15    # "distance":J
    .restart local v17    # "isFlexibleRepeatingAlarm":Z
    .restart local v19    # "nextAlarmWhen":J
    .restart local v21    # "nextAlarmWhenElapsed":J
    .restart local v27    # "skewToRtc":J
    .restart local v29    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_179
    const-wide/16 v5, 0x0

    goto/16 :goto_96

    .line 947
    .end local v5    # "TIME_SKEW":J
    :cond_17d
    mul-long v30, v15, v9

    add-long v30, v30, v19

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 992
    :goto_187
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v30

    if-eqz v30, :cond_1d2

    const-string v30, "AlarmManager"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " next: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", unit: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", C: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", WL:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_1d2
    :goto_1d2
    return-void

    .line 954
    :cond_1d3
    sub-long v30, v19, v11

    div-long v9, v30, v15

    .line 958
    sub-long v30, v11, v15

    add-long v32, v23, v27

    cmp-long v30, v30, v32

    if-gez v30, :cond_21b

    const-wide/16 v30, 0x1

    add-long v30, v30, v9

    mul-long v30, v30, v15

    sub-long v30, v19, v30

    add-long v32, v23, v27

    cmp-long v30, v30, v32

    if-gez v30, :cond_21b

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-gtz v30, :cond_21b

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22b

    const-wide/16 v30, 0x2

    div-long v30, v15, v30

    sub-long v30, v11, v30

    add-long v32, v23, v27

    cmp-long v30, v30, v32

    if-gtz v30, :cond_22b

    .line 969
    :cond_21b
    const-wide/16 v30, 0x1

    add-long v9, v9, v30

    .line 970
    mul-long v30, v15, v9

    sub-long v30, v19, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_187

    .line 980
    :cond_22b
    if-eqz v17, :cond_248

    .line 984
    :goto_22d
    mul-long v30, v15, v9

    sub-long v30, v19, v30

    add-long v32, v11, v13

    cmp-long v30, v30, v32

    if-ltz v30, :cond_23c

    const-wide/16 v30, 0x1

    add-long v9, v9, v30

    goto :goto_22d

    .line 985
    :cond_23c
    mul-long v30, v15, v9

    sub-long v30, v19, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto/16 :goto_187

    .line 988
    :cond_248
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_187

    .line 995
    :cond_252
    const-string v30, "AlarmManager"

    const-string v31, " next == MAX_VALUE"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-lez v30, :cond_1d2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_1d2

    .line 1002
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_1d2
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .registers 13
    .param p1, "interval_old"    # J
    .param p3, "interval_new"    # J

    .prologue
    .line 820
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 821
    .local v1, "newRepeatInterval":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 822
    .local v2, "oldIntervalGcd":Ljava/math/BigInteger;
    move-object v0, v2

    .line 826
    .local v0, "newIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 831
    .local v3, "tempIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    .line 836
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    .line 837
    move-object v0, v3

    .line 840
    :cond_27
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 5
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1178
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1b

    .line 1179
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 1181
    :goto_17
    return v1

    .line 1178
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1181
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1168
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1f

    .line 1169
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    .line 1171
    :goto_1b
    return v1

    .line 1168
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1171
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "targetPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1161
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private queryAccounts()V
    .registers 15

    .prologue
    .line 1324
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;

    const-string v11, "account"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 1325
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 1327
    .local v0, "ads":[Landroid/accounts/AuthenticatorDescription;
    iget-object v11, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v11

    .line 1328
    :try_start_11
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1329
    move-object v2, v0

    .local v2, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_19
    if-ge v4, v6, :cond_32

    aget-object v3, v2, v4

    .line 1330
    .local v3, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2f

    .line 1331
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1338
    .end local v3    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_32
    iget-boolean v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v10, :cond_b7

    .line 1339
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1340
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1341
    .local v8, "pC":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1363
    .end local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_53
    move-exception v10

    monitor-exit v11
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_53

    throw v10

    .line 1346
    .restart local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "len$":I
    :cond_56
    :try_start_56
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1347
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_74

    .line 1348
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1349
    .local v7, "pA":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5c

    .line 1351
    .end local v7    # "pA":Ljava/lang/String;
    :cond_74
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1352
    .restart local v7    # "pA":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 1354
    .end local v7    # "pA":Ljava/lang/String;
    :cond_8c
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1355
    .local v9, "pT":Ljava/lang/String;
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TargetPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1359
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "pT":Ljava/lang/String;
    .local v4, "i$":I
    :cond_b7
    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1360
    .restart local v7    # "pA":Ljava/lang/String;
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<AccPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 1363
    .end local v7    # "pA":Ljava/lang/String;
    :cond_e2
    monitor-exit v11
    :try_end_e3
    .catchall {:try_start_56 .. :try_end_e3} :catchall_53

    .line 1364
    return-void
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .registers 18

    .prologue
    .line 847
    const-wide/32 v7, 0x1b77400

    .line 848
    .local v7, "newIntervalGcd":J
    const/4 v4, 0x0

    .line 849
    .local v4, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 850
    .local v9, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v1, v9, v13

    .line 851
    .local v1, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 852
    .local v3, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v13, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v14, 0x1

    if-gt v13, v14, :cond_47

    const/4 v6, 0x1

    .line 853
    .local v6, "isRtc":Z
    :goto_28
    iget-wide v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    if-eqz v6, :cond_49

    const-wide/16 v13, 0x0

    :goto_2e
    add-long v11, v15, v13

    .line 854
    .local v11, "when":J
    cmp-long v13, v9, v11

    if-gez v13, :cond_16

    iget-wide v13, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_16

    .line 855
    iget-wide v13, v3, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v13, v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v7

    .line 856
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 852
    .end local v6    # "isRtc":Z
    .end local v11    # "when":J
    :cond_47
    const/4 v6, 0x0

    goto :goto_28

    .restart local v6    # "isRtc":Z
    :cond_49
    move-wide v13, v1

    .line 853
    goto :goto_2e

    .line 859
    .end local v3    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v6    # "isRtc":Z
    :cond_4b
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 860
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v13

    if-eqz v13, :cond_7f

    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " GCD_NEW("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_7f
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1303
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1304
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    move v2, v1

    .line 1317
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_8
    return v2

    .line 1309
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1310
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1312
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_d

    .line 1313
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1314
    const/4 v1, 0x1

    goto :goto_d

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2a
    move v2, v1

    .line 1317
    .restart local v2    # "bRet":I
    goto :goto_8
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 8
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1267
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1268
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    move v2, v1

    .line 1281
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_8
    return v2

    .line 1273
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1274
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1275
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1276
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1277
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1278
    const/4 v1, 0x1

    goto :goto_d

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_26
    move v2, v1

    .line 1281
    .restart local v2    # "bRet":I
    goto :goto_8
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 8
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1285
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1286
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    move v2, v1

    .line 1299
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_8
    return v2

    .line 1291
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1292
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1293
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1294
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1295
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1296
    const/4 v1, 0x1

    goto :goto_d

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2a
    move v2, v1

    .line 1299
    .restart local v2    # "bRet":I
    goto :goto_8
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .registers 38
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "interval"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 1012
    const-wide v17, 0x7fffffffffffffffL

    .line 1013
    .local v17, "nextAlarm":J
    const-wide v23, 0x7fffffffffffffffL

    .line 1014
    .local v23, "nextAlarmWithSameInterval":J
    const-wide v21, 0x7fffffffffffffffL

    .line 1015
    .local v21, "nextAlarmWithMultipleInterval":J
    const-wide v19, 0x7fffffffffffffffL

    .line 1016
    .local v19, "nextAlarmWithDividedInterval":J
    const/4 v5, 0x0

    .line 1017
    .local v5, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v8, 0x0

    .line 1018
    .local v8, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v7, 0x0

    .line 1019
    .local v7, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v6, 0x0

    .line 1020
    .local v6, "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 1021
    .local v25, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    sub-long v2, v25, v29

    .line 1022
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v29

    cmp-long v29, p2, v29

    if-nez v29, :cond_bc

    const/4 v13, 0x1

    .line 1023
    .local v13, "isIntSameAsGcd":Z
    :goto_31
    const-wide/16 v10, 0x0

    .line 1025
    .local v10, "biggestGcd":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1030
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    const-wide/32 v31, 0x1b77400

    cmp-long v29, v29, v31

    if-gtz v29, :cond_3d

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    const-wide/32 v31, 0x493e0

    cmp-long v29, v29, v31

    if-ltz v29, :cond_3d

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v31

    rem-long v29, v29, v31

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_3d

    iget-boolean v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3d

    .line 1033
    if-nez p4, :cond_8b

    iget-object v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3d

    .line 1035
    :cond_8b
    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_bf

    const/4 v14, 0x1

    .line 1036
    .local v14, "isRtc":Z
    :goto_98
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v31, v0

    if-eqz v14, :cond_c1

    const-wide/16 v29, 0x0

    :goto_a0
    add-long v27, v31, v29

    .line 1040
    .local v27, "when":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v29

    add-long v29, v29, v27

    cmp-long v29, v25, v29

    if-gez v29, :cond_3d

    .line 1044
    if-eqz v13, :cond_c4

    .line 1045
    cmp-long v29, v27, v17

    if-gez v29, :cond_3d

    .line 1046
    move-wide/from16 v17, v27

    .line 1047
    move-object v5, v4

    goto :goto_3d

    .line 1022
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "biggestGcd":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isIntSameAsGcd":Z
    .end local v14    # "isRtc":Z
    .end local v27    # "when":J
    :cond_bc
    const/4 v13, 0x0

    goto/16 :goto_31

    .line 1035
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "biggestGcd":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "isIntSameAsGcd":Z
    :cond_bf
    const/4 v14, 0x0

    goto :goto_98

    .restart local v14    # "isRtc":Z
    :cond_c1
    move-wide/from16 v29, v2

    .line 1036
    goto :goto_a0

    .line 1051
    .restart local v27    # "when":J
    :cond_c4
    invoke-static/range {p2 .. p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1052
    .local v9, "bigTemp":Ljava/math/BigInteger;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v15

    .line 1056
    .local v15, "longGcd":J
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v29, v0

    cmp-long v29, v29, p2

    if-nez v29, :cond_eb

    .line 1057
    cmp-long v29, v27, v23

    if-gez v29, :cond_3d

    .line 1058
    move-wide/from16 v23, v27

    .line 1059
    move-object v8, v4

    goto/16 :goto_3d

    .line 1065
    :cond_eb
    cmp-long v29, v15, p2

    if-nez v29, :cond_f8

    .line 1066
    cmp-long v29, v27, v21

    if-gez v29, :cond_3d

    .line 1067
    move-wide/from16 v21, v27

    .line 1068
    move-object v7, v4

    goto/16 :goto_3d

    .line 1074
    :cond_f8
    const-wide/16 v29, 0x0

    cmp-long v29, v15, v29

    if-eqz v29, :cond_122

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v29

    rem-long v29, v15, v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-nez v29, :cond_122

    cmp-long v29, v15, v10

    if-ltz v29, :cond_122

    .line 1077
    cmp-long v29, v15, v10

    if-nez v29, :cond_11c

    cmp-long v29, v27, v19

    if-gez v29, :cond_11f

    .line 1078
    :cond_11c
    move-wide/from16 v19, v27

    .line 1079
    move-object v6, v4

    .line 1081
    :cond_11f
    move-wide v10, v15

    goto/16 :goto_3d

    .line 1087
    :cond_122
    cmp-long v29, v27, v17

    if-gez v29, :cond_3d

    .line 1088
    move-wide/from16 v17, v27

    .line 1089
    move-object v5, v4

    goto/16 :goto_3d

    .line 1100
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "bigTemp":Ljava/math/BigInteger;
    .end local v14    # "isRtc":Z
    .end local v15    # "longGcd":J
    .end local v27    # "when":J
    :cond_12b
    if-eqz v6, :cond_12e

    move-object v5, v6

    .line 1104
    :cond_12e
    if-eqz v7, :cond_131

    move-object v5, v7

    .line 1108
    :cond_131
    if-eqz v8, :cond_134

    move-object v5, v8

    .line 1112
    :cond_134
    return-object v5
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .registers 23
    .param p1, "hashCode"    # I
    .param p2, "interval"    # J

    .prologue
    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1213
    .local v17, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v0, p1

    if-ne v4, v0, :cond_8

    .line 1215
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1216
    move-wide/from16 v0, p2

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1217
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_84

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_35
    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1219
    new-instance v3, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v17

    iget-wide v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v17

    iget-wide v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, v17

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1221
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7e

    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TA] Updating the alarm... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_7e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1226
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v17    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_83
    return-void

    .line 1217
    .restart local v17    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_84
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v4

    goto :goto_35
.end method


# virtual methods
.method public doGarbageCollection(J)V
    .registers 24
    .param p1, "nowRtc"    # J

    .prologue
    .line 1402
    const/4 v8, 0x0

    .line 1403
    .local v8, "newAddedCount":I
    const-string v14, "AlarmManager"

    const-string v15, "<AppSync3 Whitelist>"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v14

    if-eqz v14, :cond_51

    .line 1405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v15

    .line 1406
    :try_start_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1407
    .local v9, "pC":Ljava/lang/String;
    const-string v14, "AlarmManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(AppSync) "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1410
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pC":Ljava/lang/String;
    :catchall_44
    move-exception v14

    monitor-exit v15
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_44

    throw v14

    .line 1409
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_47
    :try_start_47
    const-string v14, "AlarmManager"

    const-string v16, "(AppSync) ---------"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    monitor-exit v15
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    .line 1412
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_51
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v14, :cond_67

    .line 1413
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist()V

    .line 1414
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v14

    add-int/2addr v8, v14

    .line 1416
    :cond_67
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(AppSync) ### "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " added ###"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v14

    if-eqz v14, :cond_e5

    .line 1418
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(UID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") [ms]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1423
    :try_start_ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v2, v14, v17

    .line 1427
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1428
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_fe
    :goto_fe
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1eb

    .line 1429
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1433
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_136

    .line 1434
    iget v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_132

    const/4 v6, 0x1

    .line 1435
    .local v6, "isRtc":Z
    :goto_116
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    if-eqz v6, :cond_134

    const-wide/16 v14, 0x0

    :goto_11e
    add-long v12, v17, v14

    .line 1439
    .local v12, "when":J
    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v17, 0x3

    mul-long v14, v14, v17

    add-long/2addr v14, v12

    cmp-long v14, v14, p1

    if-gez v14, :cond_136

    .line 1440
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_fe

    .line 1454
    .end local v2    # "TIME_SKEW":J
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v6    # "isRtc":Z
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v12    # "when":J
    :catchall_12f
    move-exception v14

    monitor-exit v16
    :try_end_131
    .catchall {:try_start_ec .. :try_end_131} :catchall_12f

    throw v14

    .line 1434
    .restart local v2    # "TIME_SKEW":J
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_132
    const/4 v6, 0x0

    goto :goto_116

    .restart local v6    # "isRtc":Z
    :cond_134
    move-wide v14, v2

    .line 1435
    goto :goto_11e

    .line 1444
    .end local v6    # "isRtc":Z
    :cond_136
    :try_start_136
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v14

    if-eqz v14, :cond_fe

    .line 1446
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1447
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    iget v14, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1e6

    const-wide/16 v14, 0x0

    :goto_14c
    add-long v14, v14, v17

    invoke-virtual {v10, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 1448
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    .line 1449
    .local v11, "timeStr":Ljava/lang/String;
    const-string v15, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AppSync] T:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ", INT:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    if-eqz v14, :cond_1e9

    const/4 v14, 0x1

    :goto_1cf
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    .end local v11    # "timeStr":Ljava/lang/String;
    :cond_1e6
    move-wide v14, v2

    .line 1447
    goto/16 :goto_14c

    .line 1449
    .restart local v11    # "timeStr":Ljava/lang/String;
    :cond_1e9
    const/4 v14, 0x0

    goto :goto_1cf

    .line 1453
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "time":Landroid/text/format/Time;
    .end local v11    # "timeStr":Ljava/lang/String;
    :cond_1eb
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v14

    if-eqz v14, :cond_213

    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " GCD:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_213
    monitor-exit v16
    :try_end_214
    .catchall {:try_start_136 .. :try_end_214} :catchall_12f

    .line 1455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v14, :cond_223

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(J)V

    .line 1456
    :cond_223
    return-void
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;J)Z
    .registers 14
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "triggerAtTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1119
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1120
    :try_start_5
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1124
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_b

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    cmp-long v2, v4, p2

    if-eqz v2, :cond_38

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_b

    :cond_38
    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    iget v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-eq v2, v4, :cond_b

    .line 1141
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v2, 0x1

    monitor-exit v3

    .line 1146
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_62
    return v2

    .line 1145
    :cond_63
    monitor-exit v3

    .line 1146
    const/4 v2, 0x0

    goto :goto_62

    .line 1145
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 2
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->queryAccounts()V

    .line 1368
    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1259
    :try_start_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1260
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1262
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    .line 1263
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1264
    :cond_19
    return-void

    .line 1262
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1234
    :try_start_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1235
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1237
    :cond_e
    monitor-exit v1

    .line 1238
    return-void

    .line 1237
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1246
    :try_start_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1247
    invoke-direct {p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->recalculateGcdOfRepeatIntervalsLocked()V

    .line 1249
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    .line 1250
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1251
    :cond_19
    return-void

    .line 1249
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 50
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 456
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mBlacklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 457
    .local v33, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v35, v0
    :try_end_2b
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2b} :catch_49

    .line 719
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v33    # "pkg":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-wide v35

    .line 459
    :catch_2c
    move-exception v24

    .line 460
    .local v24, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual/range {v24 .. v24}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 467
    .end local v24    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_30
    :goto_30
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4e

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v43, 0x0

    cmp-long v3, v6, v43

    if-gtz v3, :cond_4e

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v35, v0

    goto :goto_2b

    .line 461
    :catch_49
    move-exception v24

    .line 462
    .local v24, "e":Ljava/lang/NullPointerException;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_30

    .line 469
    .end local v24    # "e":Ljava/lang/NullPointerException;
    :cond_4e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v0, v6

    move-wide/from16 v37, v0

    .line 470
    .local v37, "sTime":D
    new-instance v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 471
    .local v15, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v35, v0

    .line 472
    .local v35, "returnValue":J
    const-wide/16 v27, -0x1

    .line 473
    .local v27, "intervalValue":J
    const-wide/16 v18, 0x0

    .line 474
    .local v18, "distRounded":J
    const-wide/16 v20, 0x0

    .line 475
    .local v20, "distanceToAlarm":J
    const-wide/16 v22, 0x0

    .line 476
    .local v22, "distanceToAlarmOriginal":J
    const-wide/16 v11, 0x0

    .line 477
    .local v11, "SYNC_TOLERANCE_VALUE":J
    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_298

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 478
    .local v29, "now":J
    :goto_73
    const/16 v16, 0x0

    .line 482
    .local v16, "alarmInfoStr":Ljava/lang/String;
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v43, 0x0

    cmp-long v3, v6, v43

    if-nez v3, :cond_29e

    .line 483
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v20, v6, v29

    .line 484
    const-wide/16 v6, 0x0

    cmp-long v3, v20, v6

    if-gez v3, :cond_8e

    .line 485
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 486
    const-wide/16 v6, -0x1

    mul-long v20, v20, v6

    .line 488
    :cond_8e
    move-wide/from16 v22, v20

    .line 501
    :goto_90
    const-wide/32 v6, 0x325aa0

    cmp-long v3, v20, v6

    if-ltz v3, :cond_2b3

    const-wide/32 v11, 0xea60

    .line 503
    :goto_9a
    move-wide/from16 v0, v20

    long-to-double v6, v0

    long-to-double v0, v11

    move-wide/from16 v43, v0

    div-double v6, v6, v43

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    mul-long v18, v6, v11

    .line 505
    move-wide/from16 v0, v22

    long-to-double v6, v0

    long-to-double v0, v11

    move-wide/from16 v43, v0

    div-double v6, v6, v43

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    mul-long v22, v6, v11

    .line 510
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v43, 0x0

    cmp-long v3, v6, v43

    if-eqz v3, :cond_c2

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 512
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    move-object/from16 v43, v0

    monitor-enter v43

    .line 513
    :try_start_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    sub-long v13, v6, v44

    .line 514
    .local v13, "TIME_SKEW":J
    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v34

    .line 515
    .local v34, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v3, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->WHITELIST:Z

    if-ne v3, v6, :cond_375

    .line 516
    const-wide/16 v39, 0x0

    .line 520
    .local v39, "tempPeriodicity":J
    const-string v3, "com.android.email"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2df

    .line 521
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    if-nez v3, :cond_107

    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I

    .line 522
    :cond_107
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    if-nez v3, :cond_115

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I

    .line 523
    :cond_115
    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v26

    .line 524
    .local v26, "intent":Landroid/content/Intent;
    if-eqz v26, :cond_185

    .line 525
    const-string v3, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 526
    .local v4, "accountId":J
    const-string v3, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    .line 530
    .local v8, "mailAccountInfos":[J
    const-wide/16 v9, 0x2

    .line 531
    .local v9, "ACCOUNT_INFO_UNIT_LENGTH":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v3

    if-eqz v3, :cond_15b

    const-string v3, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(Email) ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_15b
    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_2b7

    const-string v3, "com.android.email.intent.action.ACTION_RESET_IDLE"

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b7

    .line 538
    move-wide/from16 v0, v18

    long-to-double v6, v0

    const-wide v44, 0x41124f8000000000L

    div-double v6, v6, v44

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v44, 0x493e0

    mul-long v39, v6, v44

    move-wide/from16 v0, v39

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 597
    .end local v4    # "accountId":J
    .end local v8    # "mailAccountInfos":[J
    .end local v9    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v26    # "intent":Landroid/content/Intent;
    :cond_185
    :goto_185
    const-wide/16 v6, 0x0

    cmp-long v3, v39, v6

    if-ltz v3, :cond_18f

    .line 598
    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v27, v0

    .line 613
    .end local v39    # "tempPeriodicity":J
    :cond_18f
    :goto_18f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1c5

    const-string v3, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] Periodicity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1c5
    const-wide/16 v6, 0x0

    cmp-long v3, v27, v6

    if-nez v3, :cond_3d4

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v44, 0x493e0

    cmp-long v3, v6, v44

    if-ltz v3, :cond_3d4

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v44, 0x1b77400

    cmp-long v3, v6, v44

    if-gtz v3, :cond_3d4

    .line 625
    const-wide/16 v6, 0x0

    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 629
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    .line 699
    .end local v13    # "TIME_SKEW":J
    :cond_1e8
    :goto_1e8
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v35, v0

    .line 700
    monitor-exit v43
    :try_end_1ed
    .catchall {:try_start_c9 .. :try_end_1ed} :catchall_35f

    .line 704
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double v31, v6, v37

    .line 705
    .local v31, "op_period":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    move-wide/from16 v43, v0

    move-wide/from16 v0, v43

    long-to-double v0, v0

    move-wide/from16 v43, v0

    mul-double v6, v6, v43

    add-double v6, v6, v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    move-wide/from16 v43, v0

    const-wide/16 v45, 0x1

    add-long v45, v45, v43

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpCount:J

    const-wide/16 v45, 0x1

    add-long v43, v43, v45

    move-wide/from16 v0, v43

    long-to-double v0, v0

    move-wide/from16 v43, v0

    div-double v6, v6, v43

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    .line 706
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    cmpl-double v3, v31, v6

    if-lez v3, :cond_23f

    .line 707
    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMax:D

    .line 708
    iget-object v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    int-to-long v6, v3

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTimeMaxUid:J

    .line 710
    :cond_23f
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 711
    const-string v3, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " (SyncScheduler) Processed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (avg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%.2f"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->statOpTime:D

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v43

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") [ms]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    if-eqz v16, :cond_2b

    const-string v3, "AlarmManager"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 477
    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .end local v29    # "now":J
    .end local v31    # "op_period":D
    .end local v34    # "pkgName":Ljava/lang/String;
    :cond_298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    goto/16 :goto_73

    .line 494
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    .restart local v29    # "now":J
    :cond_29e
    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v20, v0

    .line 495
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v6, v29

    if-gez v3, :cond_2ae

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v22, v0

    :goto_2ac
    goto/16 :goto_90

    :cond_2ae
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v22, v6, v29

    goto :goto_2ac

    .line 501
    :cond_2b3
    const-wide/16 v11, 0x2710

    goto/16 :goto_9a

    .line 544
    .restart local v4    # "accountId":J
    .restart local v8    # "mailAccountInfos":[J
    .restart local v9    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v13    # "TIME_SKEW":J
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v34    # "pkgName":Ljava/lang/String;
    .restart local v39    # "tempPeriodicity":J
    :cond_2b7
    const-wide/16 v6, -0x2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_185

    if-eqz v8, :cond_185

    :try_start_2bf
    array-length v3, v8

    int-to-long v6, v3

    const-wide/16 v44, 0x2

    rem-long v6, v6, v44

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-nez v3, :cond_185

    .line 546
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v6

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 547
    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v39, v0

    .end local v39    # "tempPeriodicity":J
    move-wide/from16 v0, v39

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .restart local v39    # "tempPeriodicity":J
    goto/16 :goto_185

    .line 554
    .end local v4    # "accountId":J
    .end local v8    # "mailAccountInfos":[J
    .end local v9    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v26    # "intent":Landroid/content/Intent;
    :cond_2df
    const-wide/32 v6, 0x1b77400

    cmp-long v3, v18, v6

    if-gtz v3, :cond_185

    const-wide/32 v6, 0x493e0

    cmp-long v3, v18, v6

    if-ltz v3, :cond_185

    const-wide/32 v6, 0x186a0

    rem-long v6, v18, v6

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-eqz v3, :cond_303

    const-wide/32 v6, 0xea60

    rem-long v6, v18, v6

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-nez v3, :cond_185

    .line 559
    :cond_303
    const-wide/32 v6, 0x493e0

    rem-long v6, v18, v6

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-nez v3, :cond_31e

    .line 560
    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 561
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-lez v3, :cond_362

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_31c
    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 567
    :cond_31e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_32e

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v15, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v39

    .line 573
    :cond_32e
    const-wide/16 v6, 0x0

    cmp-long v3, v39, v6

    if-ltz v3, :cond_34a

    .line 578
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-eqz v3, :cond_34a

    .line 579
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 587
    :cond_34a
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v3, v22, v6

    if-gez v3, :cond_185

    .line 588
    const-wide/16 v39, 0x0

    .line 589
    const-wide/16 v6, 0x0

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 590
    const-wide/16 v6, 0x0

    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 591
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    goto/16 :goto_185

    .line 700
    .end local v13    # "TIME_SKEW":J
    .end local v34    # "pkgName":Ljava/lang/String;
    .end local v39    # "tempPeriodicity":J
    :catchall_35f
    move-exception v3

    monitor-exit v43
    :try_end_361
    .catchall {:try_start_2bf .. :try_end_361} :catchall_35f

    throw v3

    .line 561
    .restart local v13    # "TIME_SKEW":J
    .restart local v34    # "pkgName":Ljava/lang/String;
    .restart local v39    # "tempPeriodicity":J
    :cond_362
    :try_start_362
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v44, v0

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_31c

    .line 602
    .end local v39    # "tempPeriodicity":J
    :cond_375
    const-wide/32 v6, 0x1b77400

    cmp-long v3, v18, v6

    if-gtz v3, :cond_18f

    const-wide/32 v6, 0x493e0

    cmp-long v3, v18, v6

    if-ltz v3, :cond_18f

    const-wide/32 v6, 0x186a0

    rem-long v6, v18, v6

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-eqz v3, :cond_399

    const-wide/32 v6, 0xea60

    rem-long v6, v18, v6

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-nez v3, :cond_18f

    .line 605
    :cond_399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v3, :cond_3a9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v18

    invoke-virtual {v3, v15, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v27

    .line 606
    :cond_3a9
    const-wide/16 v6, 0x0

    cmp-long v3, v27, v6

    if-lez v3, :cond_18f

    .line 607
    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 608
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-lez v3, :cond_3c1

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    :goto_3bd
    iput-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto/16 :goto_18f

    :cond_3c1
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v44, v0

    iget-wide v0, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    invoke-static {v6, v7, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_3bd

    .line 634
    :cond_3d4
    const-wide/16 v6, 0x0

    cmp-long v3, v27, v6

    if-lez v3, :cond_1e8

    .line 636
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v44, 0x493e0

    cmp-long v3, v6, v44

    if-ltz v3, :cond_4e4

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v44, 0x1b77400

    cmp-long v3, v6, v44

    if-gtz v3, :cond_4e4

    .line 638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 647
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v44

    rem-long v6, v6, v44

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-nez v3, :cond_4da

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 649
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    .line 675
    :cond_42d
    :goto_42d
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_457

    iget-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v3, :cond_457

    .line 679
    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v3, v6, :cond_527

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long/2addr v6, v13

    :goto_43f
    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 684
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v44, v0

    add-long v6, v6, v44

    iput-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 688
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 691
    :cond_457
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1e8

    .line 692
    new-instance v41, Landroid/text/format/Time;

    invoke-direct/range {v41 .. v41}, Landroid/text/format/Time;-><init>()V

    .line 693
    .local v41, "time":Landroid/text/format/Time;
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v3, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/16 v44, 0x1

    move/from16 v0, v44

    if-gt v3, v0, :cond_46e

    const-wide/16 v13, 0x0

    .end local v13    # "TIME_SKEW":J
    :cond_46e
    add-long/2addr v6, v13

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 694
    invoke-virtual/range {v41 .. v41}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v42

    .line 695
    .local v42, "timeStr":Ljava/lang/String;
    new-instance v17, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---> T:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", INT:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v16    # "alarmInfoStr":Ljava/lang/String;
    .local v17, "alarmInfoStr":Ljava/lang/String;
    move-object/from16 v16, v17

    .end local v17    # "alarmInfoStr":Ljava/lang/String;
    .restart local v16    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_1e8

    .line 657
    .end local v41    # "time":Landroid/text/format/Time;
    .end local v42    # "timeStr":Ljava/lang/String;
    .restart local v13    # "TIME_SKEW":J
    :cond_4da
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto/16 :goto_42d

    .line 663
    :cond_4e4
    iget-wide v6, v15, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v44, 0x0

    cmp-long v3, v6, v44

    if-nez v3, :cond_42d

    .line 668
    const-wide/32 v6, 0x1b77400

    cmp-long v3, v27, v6

    if-gtz v3, :cond_42d

    const-wide/32 v6, 0x493e0

    cmp-long v3, v27, v6

    if-ltz v3, :cond_42d

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v7, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 672
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_42d

    .line 679
    :cond_527
    iget-wide v6, v15, Lcom/android/server/AlarmManagerService$Alarm;->when:J
    :try_end_529
    .catchall {:try_start_362 .. :try_end_529} :catchall_35f

    goto/16 :goto_43f
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .registers 9
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 1376
    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1380
    :try_start_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1381
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1382
    iput p2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1383
    iput-wide p3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 1387
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v2, :cond_2a

    .line 1388
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 1389
    monitor-exit v3

    .line 1399
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_29
    :goto_29
    return-void

    .line 1394
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_35

    .line 1398
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    goto :goto_29

    .line 1394
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .registers 12
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    .line 1372
    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_d
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 5
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "bRet":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    .line 732
    monitor-exit v2

    .line 733
    return v0

    .line 732
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 28
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 743
    const/4 v8, 0x0

    .line 744
    .local v8, "bRet":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 745
    .local v14, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 746
    .local v12, "nowElapsed":J
    sub-long v5, v14, v12

    .line 747
    .local v5, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_225

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 751
    .local v7, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_15

    .line 753
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_11e

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v16, v0

    .line 755
    .local v16, "tempRepeatInterval":J
    :goto_49
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 756
    const-wide/16 v20, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    add-long v9, v20, v22

    .line 757
    .local v9, "count":J
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    mul-long v22, v9, v16

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 762
    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_87

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_93

    :cond_87
    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_225

    .line 763
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    .line 765
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    rem-long v20, v20, v22

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_124

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 780
    :goto_e0
    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v20, v0

    if-eqz v20, :cond_189

    .line 781
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 782
    const/4 v8, 0x1

    .line 787
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 788
    :goto_f7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_134

    move-wide/from16 v20, v14

    :goto_10b
    cmp-long v20, v22, v20

    if-lez v20, :cond_137

    .line 789
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_f7

    .line 753
    .end local v9    # "count":J
    .end local v16    # "tempRepeatInterval":J
    :cond_11e
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    goto/16 :goto_49

    .line 774
    .restart local v9    # "count":J
    .restart local v16    # "tempRepeatInterval":J
    :cond_124
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_e0

    :cond_134
    move-wide/from16 v20, v12

    .line 788
    goto :goto_10b

    .line 795
    :cond_137
    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_226

    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v5

    :goto_149
    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 797
    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_22c

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v5

    :goto_161
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 802
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v20, v0

    iget-wide v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 803
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 804
    const-wide/16 v20, 0x1

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 806
    :cond_189
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v20

    if-eqz v20, :cond_225

    .line 807
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 808
    .local v18, "time":Landroid/text/format/Time;
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_1a6

    const-wide/16 v5, 0x0

    .end local v5    # "TIME_SKEW":J
    :cond_1a6
    add-long v20, v20, v5

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 809
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v19

    .line 810
    .local v19, "timeStr":Ljava/lang/String;
    const-string v20, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "--->> T:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", INT:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ") count:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-boolean v0, v7, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    .end local v7    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "count":J
    .end local v16    # "tempRepeatInterval":J
    .end local v18    # "time":Landroid/text/format/Time;
    .end local v19    # "timeStr":Ljava/lang/String;
    :cond_225
    return v8

    .line 795
    .restart local v5    # "TIME_SKEW":J
    .restart local v7    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v9    # "count":J
    .restart local v16    # "tempRepeatInterval":J
    :cond_226
    iget-wide v0, v7, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    goto/16 :goto_149

    .line 797
    :cond_22c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v20, v0

    goto/16 :goto_161
.end method
