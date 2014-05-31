.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 26
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1843
    const/4 v8, 0x0

    .line 1844
    .local v8, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_3d

    .line 1845
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v14, v14, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    if-ne v14, v0, :cond_119

    .line 1846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    move-object v8, v0

    .line 1850
    :cond_3d
    if-eqz v8, :cond_11d

    .line 1851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1852
    .local v9, "nowELAPSED":J
    iget-object v3, v8, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1853
    .local v3, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v14, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1854
    iget v14, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v14, :cond_62

    .line 1855
    const/4 v14, 0x0

    iput v14, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1856
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-wide/from16 v16, v0

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    move-wide/from16 v18, v0

    sub-long v18, v9, v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 1858
    :cond_62
    iget-object v5, v8, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1859
    .local v5, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v14, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1860
    iget v14, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v14, :cond_81

    .line 1861
    const/4 v14, 0x0

    iput v14, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1862
    iget-wide v0, v5, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-wide/from16 v16, v0

    iget-wide v0, v5, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    move-wide/from16 v18, v0

    sub-long v18, v9, v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J
    :try_end_81
    .catchall {:try_start_b .. :try_end_81} :catchall_151

    .line 1867
    .end local v3    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v5    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v9    # "nowELAPSED":J
    :cond_81
    :goto_81
    const/4 v11, 0x0

    .line 1868
    .local v11, "pkg":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1870
    .local v13, "uid":I
    :try_start_83
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    .line 1871
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1872
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/16 v14, 0x80

    invoke-virtual {v12, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1874
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1875
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_af} :catch_154
    .catchall {:try_start_83 .. :try_end_af} :catchall_151

    .line 1879
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "pm":Landroid/content/pm/PackageManager;
    :goto_af
    :try_start_af
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_173

    .line 1880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1901
    :cond_da
    :goto_da
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v14

    if-eqz v14, :cond_117

    .line 1903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_236

    .line 1904
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$InFlight;

    .line 1905
    .local v7, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 1916
    .end local v7    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_117
    :goto_117
    monitor-exit v15

    .line 1917
    return-void

    .line 1844
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "uid":I
    :cond_119
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 1865
    :cond_11d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No in-flight alarm for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1916
    :catchall_151
    move-exception v14

    monitor-exit v15
    :try_end_153
    .catchall {:try_start_af .. :try_end_153} :catchall_151

    throw v14

    .line 1876
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v13    # "uid":I
    :catch_154
    move-exception v4

    .line 1877
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_155
    const-string v14, "AlarmManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onSendFinished NameNotFoundException Pkg = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_af

    .line 1882
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v14

    if-lez v14, :cond_da

    .line 1883
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # operator-- for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1610(Lcom/android/server/AlarmManagerService;)I

    .line 1884
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v14

    if-nez v14, :cond_da

    .line 1885
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1886
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_da

    .line 1887
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Finished all broadcasts with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " remaining inflights"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 1889
    const/4 v6, 0x0

    :goto_1dc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_229

    .line 1890
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "  Remaining #"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 1889
    add-int/lit8 v6, v6, 0x1

    goto :goto_1dc

    .line 1892
    :cond_229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_234
    .catchall {:try_start_155 .. :try_end_234} :catchall_151

    goto/16 :goto_da

    .line 1909
    :cond_236
    :try_start_236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v14

    const-string v16, "Alarm wakelock still held but sent queue empty"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v14}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_236 .. :try_end_254} :catch_256
    .catchall {:try_start_236 .. :try_end_254} :catchall_151

    goto/16 :goto_117

    .line 1911
    :catch_256
    move-exception v4

    .line 1912
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_257
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_25a
    .catchall {:try_start_257 .. :try_end_25a} :catchall_151

    goto/16 :goto_117
.end method
