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
    .line 1469
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 31
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 1475
    :try_start_9
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2800()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.email"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1477
    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v5, -0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1478
    .local v3, "accountId":J
    const-string v2, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 1479
    .local v7, "mailAccountInfos":[J
    const-wide/16 v8, 0x2

    .line 1481
    .local v8, "ACCOUNT_INFO_UNIT_LENGTH":J
    # getter for: Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1482
    const-string v2, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Email) Trigger ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_59
    const-wide/16 v5, -0x2

    cmp-long v2, v3, v5

    if-eqz v2, :cond_7c

    if-eqz v7, :cond_7c

    array-length v2, v7

    int-to-long v5, v2

    const-wide/16 v23, 0x2

    rem-long v5, v5, v23
    :try_end_67
    .catchall {:try_start_9 .. :try_end_67} :catchall_182

    const-wide/16 v23, 0x0

    cmp-long v2, v5, v23

    if-nez v2, :cond_7c

    .line 1489
    :try_start_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$SyncScheduler;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService$SyncScheduler;->updateEmailSyncStatusLocked(JJ[J)V
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_7c} :catch_17c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7c} :catch_185
    .catchall {:try_start_6d .. :try_end_7c} :catchall_182

    .line 1501
    .end local v3    # "accountId":J
    .end local v7    # "mailAccountInfos":[J
    .end local v8    # "ACCOUNT_INFO_UNIT_LENGTH":J
    :cond_7c
    :goto_7c
    const/16 v16, 0x0

    .line 1502
    .local v16, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_af

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_18b

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    check-cast v16, Lcom/android/server/AlarmManagerService$InFlight;

    .line 1508
    .restart local v16    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_af
    if-eqz v16, :cond_18f

    .line 1509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1510
    .local v17, "nowELAPSED":J
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1511
    .local v11, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1512
    iget v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v2, :cond_d2

    .line 1513
    const/4 v2, 0x0

    iput v2, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1514
    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v0, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    move-wide/from16 v23, v0

    sub-long v23, v17, v23

    add-long v5, v5, v23

    iput-wide v5, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 1516
    :cond_d2
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1517
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1518
    iget v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v2, :cond_ef

    .line 1519
    const/4 v2, 0x0

    iput v2, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1520
    iget-wide v5, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v0, v14, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    move-wide/from16 v23, v0

    sub-long v23, v17, v23

    add-long v5, v5, v23

    iput-wide v5, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J
    :try_end_ef
    .catchall {:try_start_7f .. :try_end_ef} :catchall_182

    .line 1525
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17    # "nowELAPSED":J
    :cond_ef
    :goto_ef
    const/16 v19, 0x0

    .line 1526
    .local v19, "pkg":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1528
    .local v21, "uid":I
    :try_start_f3
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v19

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1530
    .local v20, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 1532
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    .line 1533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_123
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f3 .. :try_end_123} :catch_1bd
    .catchall {:try_start_f3 .. :try_end_123} :catchall_182

    .line 1537
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "pm":Landroid/content/pm/PackageManager;
    :goto_123
    :try_start_123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1559
    :cond_14a
    :goto_14a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-eqz v2, :cond_17a

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_291

    .line 1562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v2}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    .line 1573
    :cond_17a
    :goto_17a
    monitor-exit v22

    .line 1574
    return-void

    .line 1491
    .end local v15    # "i":I
    .end local v16    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v21    # "uid":I
    .restart local v3    # "accountId":J
    .restart local v7    # "mailAccountInfos":[J
    .restart local v8    # "ACCOUNT_INFO_UNIT_LENGTH":J
    :catch_17c
    move-exception v12

    .line 1492
    .local v12, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_7c

    .line 1573
    .end local v3    # "accountId":J
    .end local v7    # "mailAccountInfos":[J
    .end local v8    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :catchall_182
    move-exception v2

    monitor-exit v22
    :try_end_184
    .catchall {:try_start_123 .. :try_end_184} :catchall_182

    throw v2

    .line 1493
    .restart local v3    # "accountId":J
    .restart local v7    # "mailAccountInfos":[J
    .restart local v8    # "ACCOUNT_INFO_UNIT_LENGTH":J
    :catch_185
    move-exception v12

    .line 1494
    .local v12, "e":Ljava/lang/Exception;
    :try_start_186
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7c

    .line 1502
    .end local v3    # "accountId":J
    .end local v7    # "mailAccountInfos":[J
    .end local v8    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v15    # "i":I
    .restart local v16    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_18b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7f

    .line 1523
    :cond_18f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No in-flight alarm for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 1534
    .restart local v19    # "pkg":Ljava/lang/String;
    .restart local v21    # "uid":I
    :catch_1bd
    move-exception v13

    .line 1535
    .local v13, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendFinished NameNotFoundException Pkg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_123

    .line 1540
    .end local v13    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-lez v2, :cond_14a

    .line 1541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # operator-- for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1610(Lcom/android/server/AlarmManagerService;)I

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v2

    if-nez v2, :cond_14a

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14a

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished all broadcasts with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remaining inflights"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 1547
    const/4 v15, 0x0

    :goto_23f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_284

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Remaining #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 1547
    add-int/lit8 v15, v15, 0x1

    goto :goto_23f

    .line 1550
    :cond_284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_28f
    .catchall {:try_start_186 .. :try_end_28f} :catchall_182

    goto/16 :goto_14a

    .line 1566
    :cond_291
    :try_start_291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;

    move-result-object v2

    const-string v5, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_2aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_291 .. :try_end_2aa} :catch_2ac
    .catchall {:try_start_291 .. :try_end_2aa} :catchall_182

    goto/16 :goto_17a

    .line 1568
    :catch_2ac
    move-exception v13

    .line 1569
    .local v13, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_2ad
    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2b0
    .catchall {:try_start_2ad .. :try_end_2b0} :catchall_182

    goto/16 :goto_17a
.end method
