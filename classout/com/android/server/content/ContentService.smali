.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 70
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 159
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 160
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 161
    return-void
.end method

.method private getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 6

    .prologue
    .line 75
    const-string v1, "config.disable_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 76
    const/4 v1, 0x0

    .line 86
    :goto_a
    return-object v1

    .line 79
    :cond_b
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_e
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_1d} :catch_24
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 86
    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v2

    goto :goto_a

    .line 87
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    throw v1

    .line 83
    :catch_24
    move-exception v0

    .line 84
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_25
    const-string v1, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_21

    goto :goto_1d
.end method

.method public static main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "factoryTest"    # Z

    .prologue
    .line 912
    new-instance v0, Lcom/android/server/content/ContentService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 913
    .local v0, "service":Lcom/android/server/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 914
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 19
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    .prologue
    .line 600
    if-nez p1, :cond_a

    .line 601
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Account must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 603
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 604
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Authority must not be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    :cond_18
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 610
    .local v12, "userId":I
    const-wide/16 v3, 0x3c

    cmp-long v3, p4, v3

    if-gez v3, :cond_4d

    .line 611
    const-string v3, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested poll frequency of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds being rounded up to 60 seconds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-wide/16 p4, 0x3c

    .line 616
    :cond_4d
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v10

    .line 619
    .local v10, "identityToken":J
    :try_start_51
    new-instance v2, Landroid/content/PeriodicSync;

    invoke-static/range {p4 .. p5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v8

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 623
    .local v2, "syncToAdd":Landroid/content/PeriodicSync;
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lcom/android/server/content/SyncStorageEngine;->addPeriodicSync(Landroid/content/PeriodicSync;I)V
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_6f

    .line 625
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 627
    return-void

    .line 625
    .end local v2    # "syncToAdd":Landroid/content/PeriodicSync;
    :catchall_6f
    move-exception v3

    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 888
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 890
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 891
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 892
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 895
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 897
    return-void

    .line 895
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 410
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    .line 411
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must be non-empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 417
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 419
    .local v0, "identityToken":J
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 420
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_24

    .line 421
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 422
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_28

    .line 425
    :cond_24
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 427
    return-void

    .line 425
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_28
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 574
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 576
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 577
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_10

    .line 578
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;ILjava/lang/String;)V

    .line 579
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 582
    :cond_10
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 584
    return-void

    .line 582
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_73

    move-result-wide v11

    .line 99
    .local v11, "identityToken":J
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v2, :cond_62

    .line 100
    const-string v2, "No SyncManager created!  (Disk full?)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 105
    const-string v2, "Observer tree:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v15
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_6e

    .line 107
    const/4 v2, 0x2

    :try_start_2d
    new-array v8, v2, [I

    .line 108
    .local v8, "counts":[I
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 109
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v6, ""

    const-string v7, "  "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 111
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v14, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4e
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_76

    .line 113
    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_de

    .line 112
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    .line 102
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6e

    goto :goto_1d

    .line 139
    :catchall_6e
    move-exception v2

    :try_start_6f
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_73

    .line 92
    .end local v11    # "identityToken":J
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    .restart local v8    # "counts":[I
    .restart local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v10    # "i":I
    .restart local v11    # "identityToken":J
    .restart local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_76
    :try_start_76
    new-instance v2, Lcom/android/server/content/ContentService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    const/4 v10, 0x0

    :goto_81
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_b7

    .line 130
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 131
    .local v13, "pid":I
    const-string v2, "  pid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " observers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_81

    .line 134
    .end local v13    # "pid":I
    :cond_b7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 135
    const-string v2, " Total number of nodes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 136
    const-string v2, " Total number of observers: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 137
    monitor-exit v15
    :try_end_d9
    .catchall {:try_start_76 .. :try_end_d9} :catchall_de

    .line 139
    :try_start_d9
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_73

    .line 141
    monitor-exit p0

    return-void

    .line 137
    .end local v8    # "counts":[I
    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .end local v10    # "i":I
    .end local v14    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_de
    move-exception v2

    :try_start_df
    monitor-exit v15
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    :try_start_e0
    throw v2
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_6e
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 841
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 843
    .local v0, "identityToken":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(I)Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_21

    move-result-object v3

    .line 845
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 843
    return-object v3

    .line 845
    :catchall_21
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 681
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_SETTINGS"

    const-string v6, "no permission to read the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 685
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 687
    .local v0, "identityToken":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 688
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_24

    .line 689
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1f

    move-result v4

    .line 693
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 695
    :goto_1e
    return v4

    .line 693
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_1f
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_24
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 695
    const/4 v4, -0x1

    goto :goto_1e
.end method

.method public getMasterSyncAutomatically()Z
    .registers 8

    .prologue
    .line 721
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_SETTINGS"

    const-string v6, "no permission to read the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 725
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 727
    .local v0, "identityToken":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 728
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_28

    .line 729
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    move-result v4

    .line 732
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 734
    :goto_22
    return v4

    .line 732
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_23
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_28
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 734
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 771
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 776
    .local v0, "identityToken":J
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 777
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_24

    .line 778
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1f

    move-result v3

    .line 781
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 783
    :goto_1e
    return v3

    .line 781
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_24
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 783
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    if-nez p1, :cond_a

    .line 662
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Account must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 664
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 665
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Authority must not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 667
    :cond_18
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 671
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 673
    .local v0, "identityToken":J
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;ILjava/lang/String;)Ljava/util/List;
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_39

    move-result-object v3

    .line 676
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 673
    return-object v3

    .line 676
    :catchall_39
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 6

    .prologue
    .line 437
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 438
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 440
    .local v0, "identityToken":J
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 441
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_14

    move-result-object v4

    .line 443
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 441
    return-object v4

    .line 443
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_14
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 564
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 566
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 567
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-object v3

    .line 569
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 567
    return-object v3

    .line 569
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_10
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_SETTINGS"

    const-string v6, "no permission to read the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 453
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 455
    .local v0, "identityToken":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 456
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_28

    .line 457
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    move-result v4

    .line 461
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 463
    :goto_22
    return v4

    .line 461
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_23
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_28
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 463
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "identityToken":J
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 552
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_24

    .line 553
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1f

    move-result v3

    .line 557
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 559
    :goto_1e
    return v3

    .line 557
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_24
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 559
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 851
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 853
    :cond_e
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_STATS"

    const-string v6, "no permission to read the sync stats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 857
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 859
    .local v0, "identityToken":J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 860
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_36

    .line 861
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_31

    move-result-object v4

    .line 865
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 867
    :goto_30
    return-object v4

    .line 865
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_31
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_36
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 867
    const/4 v4, 0x0

    goto :goto_30
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 819
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_STATS"

    const-string v6, "no permission to read the sync stats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 823
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 825
    .local v0, "identityToken":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 826
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_28

    .line 827
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    move-result v4

    .line 831
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 833
    :goto_22
    return v4

    .line 831
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_23
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_28
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 833
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_STATS"

    const-string v6, "no permission to read the sync stats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 875
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    .local v0, "identityToken":J
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 878
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_28

    .line 879
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    move-result v4

    .line 882
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 884
    :goto_22
    return v4

    .line 882
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_23
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .restart local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_28
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 884
    const/4 v4, 0x0

    goto :goto_22
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z

    .prologue
    .line 303
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V

    .line 305
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZI)V
    .registers 30
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 231
    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 232
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying update of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncToNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_47
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 238
    .local v10, "callingUserHandle":I
    move/from16 v0, p5

    if-eq v0, v10, :cond_5a

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "no permission to notify other users"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_5a
    if-gez p5, :cond_65

    .line 245
    const/4 v2, -0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_e1

    .line 246
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p5

    .line 253
    :cond_65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 256
    .local v22, "uid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v13

    .line 258
    .local v13, "identityToken":J
    :try_start_6d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v8, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_104

    .line 260
    :try_start_79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZILjava/util/ArrayList;)V

    .line 262
    monitor-exit v23
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_101

    .line 263
    :try_start_8a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 264
    .local v17, "numCalls":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8f
    move/from16 v0, v17

    if-ge v12, v0, :cond_152

    .line 265
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_104

    .line 267
    .local v19, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_99
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 268
    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 269
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "update at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_de} :catch_109
    .catchall {:try_start_99 .. :try_end_de} :catchall_104

    .line 264
    :cond_de
    :goto_de
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    .line 247
    .end local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v12    # "i":I
    .end local v13    # "identityToken":J
    .end local v17    # "numCalls":I
    .end local v19    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v22    # "uid":I
    :cond_e1
    const/4 v2, -0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_65

    .line 248
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad user handle for notifyChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    .restart local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v13    # "identityToken":J
    .restart local v22    # "uid":I
    :catchall_101
    move-exception v2

    :try_start_102
    monitor-exit v23
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    :try_start_103
    throw v2
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_104

    .line 297
    .end local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_104
    move-exception v2

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 271
    .restart local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v12    # "i":I
    .restart local v17    # "numCalls":I
    .restart local v19    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_109
    move-exception v11

    .line 272
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v3
    :try_end_10f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_104

    .line 273
    :try_start_10f
    const-string v2, "ContentService"

    const-string v4, "Found dead observer, removing"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 275
    .local v9, "binder":Landroid/os/IBinder;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    # getter for: Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/content/ContentService$ObserverNode;->access$000(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v16

    .line 277
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 278
    .local v18, "numList":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_12b
    move/from16 v0, v18

    if-ge v15, v0, :cond_14d

    .line 279
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 280
    .local v20, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, v9, :cond_14a

    .line 281
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 282
    add-int/lit8 v15, v15, -0x1

    .line 283
    add-int/lit8 v18, v18, -0x1

    .line 278
    :cond_14a
    add-int/lit8 v15, v15, 0x1

    goto :goto_12b

    .line 286
    .end local v20    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_14d
    monitor-exit v3

    goto :goto_de

    .end local v9    # "binder":Landroid/os/IBinder;
    .end local v15    # "j":I
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v18    # "numList":I
    :catchall_14f
    move-exception v2

    monitor-exit v3
    :try_end_151
    .catchall {:try_start_10f .. :try_end_151} :catchall_14f

    :try_start_151
    throw v2

    .line 289
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v19    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :cond_152
    if-eqz p4, :cond_166

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v21

    .line 291
    .local v21, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v21, :cond_166

    .line 292
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v2, v10, v1, v3}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    :try_end_166
    .catchall {:try_start_151 .. :try_end_166} :catchall_104

    .line 297
    .end local v21    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_166
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 299
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 148
    :catch_5
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 152
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_11
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    .prologue
    .line 206
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V

    .line 208
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I

    .prologue
    .line 177
    if-eqz p3, :cond_4

    if-nez p1, :cond_c

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 182
    .local v8, "callingUser":I
    if-eq v8, p4, :cond_1b

    .line 183
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "no permission to observe other users\' provider view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1b
    if-gez p4, :cond_24

    .line 188
    const/4 v0, -0x2

    if-ne p4, v0, :cond_3c

    .line 189
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p4

    .line 196
    :cond_24
    iget-object v9, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v9

    .line 197
    :try_start_27
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 201
    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_58

    .line 202
    return-void

    .line 190
    :cond_3c
    const/4 v0, -0x1

    if-eq p4, v0, :cond_24

    .line 191
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user handle for registerContentObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 631
    if-nez p1, :cond_a

    .line 632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Account must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 635
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_18
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v3, "no permission to write the sync settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 641
    .local v10, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v8

    .line 643
    .local v8, "identityToken":J
    :try_start_29
    new-instance v0, Landroid/content/PeriodicSync;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 645
    .local v0, "syncToRemove":Landroid/content/PeriodicSync;
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lcom/android/server/content/SyncStorageEngine;->removePeriodicSync(Landroid/content/PeriodicSync;I)V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_44

    .line 647
    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 649
    return-void

    .line 647
    .end local v0    # "syncToRemove":Landroid/content/PeriodicSync;
    :catchall_44
    move-exception v1

    invoke-static {v8, v9}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 900
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 902
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 903
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 904
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 907
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 909
    return-void

    .line 907
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeSync(Landroid/content/SyncRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 657
    return-void
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 327
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 329
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 333
    .local v3, "uId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v11

    .line 335
    .local v11, "identityToken":J
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 336
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_21

    .line 337
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_25

    .line 342
    :cond_21
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 344
    return-void

    .line 342
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v1

    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    .prologue
    .line 700
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 701
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_e
    iget-object v4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v6, "no permission to write the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 707
    .local v3, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 709
    .local v0, "identityToken":J
    :try_start_1f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 710
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_2c

    .line 711
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_30

    .line 715
    :cond_2c
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 717
    return-void

    .line 715
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_30
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I
    .param p4, "userId"    # I

    .prologue
    .line 530
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 535
    .local v0, "identityToken":J
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 536
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_1a

    .line 537
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p4, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    .line 541
    :cond_1a
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 543
    return-void

    .line 541
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_1e
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 13
    .param p1, "flag"    # Z

    .prologue
    .line 739
    iget-object v8, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v10, "no permission to write the sync settings"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v8, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 743
    .local v6, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 744
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_3c

    .line 745
    if-eqz v6, :cond_2e

    .line 746
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v4

    .line 747
    .local v4, "rp":Landroid/app/enterprise/RoamingPolicy;
    if-eqz v4, :cond_2e

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-virtual {v4}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 748
    const/4 p1, 0x0

    .line 751
    .end local v4    # "rp":Landroid/app/enterprise/RoamingPolicy;
    :cond_2e
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 752
    .local v3, "restPol":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_3c

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 767
    .end local v3    # "restPol":Landroid/app/enterprise/RestrictionPolicy;
    :goto_3b
    return-void

    .line 757
    :cond_3c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 758
    .local v7, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 760
    .local v1, "identityToken":J
    :try_start_44
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v5

    .line 761
    .local v5, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v5, :cond_51

    .line 762
    invoke-virtual {v5}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v8

    invoke-virtual {v8, p1, v7}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_55

    .line 765
    :cond_51
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    goto :goto_3b

    .end local v5    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_55
    move-exception v8

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 13
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 787
    iget-object v7, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v9, "no permission to write the sync settings"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v7, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 791
    .local v6, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 792
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_3c

    .line 793
    if-eqz v6, :cond_2e

    .line 794
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v4

    .line 795
    .local v4, "rp":Landroid/app/enterprise/RoamingPolicy;
    if-eqz v4, :cond_2e

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {v4}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v7

    if-nez v7, :cond_2e

    .line 796
    const/4 p1, 0x0

    .line 799
    .end local v4    # "rp":Landroid/app/enterprise/RoamingPolicy;
    :cond_2e
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 800
    .local v3, "restPol":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_3c

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 815
    .end local v3    # "restPol":Landroid/app/enterprise/RestrictionPolicy;
    :goto_3b
    return-void

    .line 806
    :cond_3c
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 808
    .local v1, "identityToken":J
    :try_start_40
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v5

    .line 809
    .local v5, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v5, :cond_4d

    .line 810
    invoke-virtual {v5}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_51

    .line 813
    :cond_4d
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    goto :goto_3b

    .end local v5    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_51
    move-exception v7

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .prologue
    .line 468
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 469
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Authority must be non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 471
    :cond_e
    iget-object v6, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v8, "no permission to write the sync settings"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 476
    .local v5, "userId":I
    const-string v6, "com.google"

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 477
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 478
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_3f

    .line 479
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 480
    .local v3, "restPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 481
    const-string v6, "ContentService"

    const-string v7, "policy restricts sync of google account"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "restPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :goto_3e
    return-void

    .line 487
    :cond_3f
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 489
    .local v1, "identityToken":J
    :try_start_43
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    .line 490
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v4, :cond_50

    .line 491
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v6

    invoke-virtual {v6, p1, v5, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_54

    .line 495
    :cond_50
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    goto :goto_3e

    .end local v4    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_54
    move-exception v6

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 501
    iget-object v5, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v7, "no permission to write the sync settings"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v5, "com.google"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 506
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getEDMService()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .line 507
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_2d

    .line 508
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 509
    .local v3, "restPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 510
    const-string v5, "ContentService"

    const-string v6, "policy restricts sync of google account"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "restPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :goto_2c
    return-void

    .line 517
    :cond_2d
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 519
    .local v1, "identityToken":J
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    .line 520
    .local v4, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v4, :cond_3e

    .line 521
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v5

    invoke-virtual {v5, p1, p4, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_42

    .line 525
    :cond_3e
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    goto :goto_2c

    .end local v4    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_42
    move-exception v5

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .registers 24
    .param p1, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 358
    .local v4, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v7

    .line 359
    .local v7, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v5

    .line 360
    .local v5, "runAtTime":J
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 361
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 365
    .local v12, "uId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v20

    .line 367
    .local v20, "identityToken":J
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    .line 368
    .local v9, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v9, :cond_73

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->hasAuthority()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 372
    .local v2, "account":Landroid/accounts/Account;
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v10

    if-eqz v10, :cond_77

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v14, "no permission to write the sync settings"

    invoke-virtual {v10, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-wide/16 v13, 0x3c

    cmp-long v10, v5, v13

    if-gez v10, :cond_63

    .line 378
    const-string v10, "ContentService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Requested poll frequency of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " seconds being rounded up to 60 seconds."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-wide/16 v5, 0x3c

    .line 382
    :cond_63
    new-instance v1, Landroid/content/PeriodicSync;

    invoke-direct/range {v1 .. v8}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 384
    .local v1, "syncToAdd":Landroid/content/PeriodicSync;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v10

    invoke-virtual {v10, v1, v11}, Lcom/android/server/content/SyncStorageEngine;->addPeriodicSync(Landroid/content/PeriodicSync;I)V
    :try_end_73
    .catchall {:try_start_18 .. :try_end_73} :catchall_88

    .line 398
    .end local v1    # "syncToAdd":Landroid/content/PeriodicSync;
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "provider":Ljava/lang/String;
    :cond_73
    :goto_73
    invoke-static/range {v20 .. v21}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 400
    return-void

    .line 386
    .restart local v2    # "account":Landroid/accounts/Account;
    .restart local v3    # "provider":Ljava/lang/String;
    :cond_77
    const-wide/16 v13, 0x3e8

    mul-long v15, v7, v13

    .line 387
    .local v15, "beforeRuntimeMillis":J
    const-wide/16 v13, 0x3e8

    mul-long v17, v5, v13

    .line 388
    .local v17, "runtimeMillis":J
    const/16 v19, 0x0

    move-object v10, v2

    move-object v13, v3

    move-object v14, v4

    :try_start_84
    invoke-virtual/range {v9 .. v19}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_73

    .line 398
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "provider":Ljava/lang/String;
    .end local v9    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v15    # "beforeRuntimeMillis":J
    .end local v17    # "runtimeMillis":J
    :catchall_88
    move-exception v10

    invoke-static/range {v20 .. v21}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v10

    .line 394
    .restart local v9    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_8d
    :try_start_8d
    const-string v10, "ContentService"

    const-string v13, "Unrecognised sync parameters, doing nothing."

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_88

    goto :goto_73
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 165
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .prologue
    .line 211
    if-nez p1, :cond_a

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_a
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v1

    .line 215
    :try_start_d
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0
.end method
