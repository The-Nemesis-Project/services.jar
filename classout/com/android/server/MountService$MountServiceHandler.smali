.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 487
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 488
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 492
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_2aa

    .line 603
    :cond_9
    :goto_9
    return-void

    .line 494
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 495
    .local v15, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v16, "MountService"

    const-string v17, "++ H_UNMOUNT_PM_ADDOBJ (%s)"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 501
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 502
    .restart local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v17, "MountService"

    const-string v18, "++ H_UNMOUNT_PM_UPDATE (%s)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz v15, :cond_e2

    iget-object v0, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_51
    aput-object v16, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz v15, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_6b
    const/4 v3, 0x0

    .line 510
    .local v3, "bFoundPath":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 511
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_78
    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_b5

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/MountService$UnmountCallBack;

    .line 513
    .local v14, "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v16

    iget-object v0, v14, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 514
    .local v13, "storage":Landroid/os/storage/StorageVolume;
    if-eqz v13, :cond_e6

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v16

    if-eqz v16, :cond_e6

    .line 515
    const/4 v3, 0x1

    .line 519
    .end local v13    # "storage":Landroid/os/storage/StorageVolume;
    .end local v14    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_b5
    monitor-exit v17
    :try_end_b6
    .catchall {:try_start_78 .. :try_end_b6} :catchall_e9

    .line 521
    if-eqz v3, :cond_ec

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    .line 523
    const-string v16, "MountService"

    const-string v17, "Updating external media status on PackageManager"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_9

    .line 502
    .end local v3    # "bFoundPath":Z
    .end local v6    # "i":I
    :cond_e2
    const-string v16, "null"

    goto/16 :goto_51

    .line 511
    .restart local v3    # "bFoundPath":Z
    .restart local v6    # "i":I
    .restart local v13    # "storage":Landroid/os/storage/StorageVolume;
    .restart local v14    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_e6
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    .line 519
    .end local v13    # "storage":Landroid/os/storage/StorageVolume;
    .end local v14    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :catchall_e9
    move-exception v16

    :try_start_ea
    monitor-exit v17
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v16

    .line 528
    :cond_ec
    const-string v16, "MountService"

    const-string v17, "skip update enternal media status"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 534
    .end local v3    # "bFoundPath":Z
    .end local v6    # "i":I
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_116
    const-string v16, "MountService"

    const-string v17, "++ H_UNMOUNT_PM_DONE"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v16, "MountService"

    const-string v17, "Updated status. Processing requests"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 538
    .local v9, "size":I
    new-array v10, v9, [I

    .line 539
    .local v10, "sizeArr":[I
    const/4 v11, 0x0

    .line 541
    .local v11, "sizeArrN":I
    const-string v16, "activity"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService;

    .line 543
    .local v2, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v12, v11

    .end local v11    # "sizeArrN":I
    .local v12, "sizeArrN":I
    :goto_143
    if-ge v6, v9, :cond_258

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 545
    .restart local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    iget-object v7, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 546
    .local v7, "path":Ljava/lang/String;
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "H_UNMOUNT_PM_DONE -> path : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", force = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v0, v15, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v4, 0x0

    .line 548
    .local v4, "done":Z
    iget-boolean v0, v15, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v16, v0

    if-nez v16, :cond_1cd

    .line 549
    const/4 v4, 0x1

    .line 565
    :cond_185
    :goto_185
    if-nez v4, :cond_21e

    iget v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_21e

    .line 567
    const-string v16, "MountService"

    const-string v17, "Retrying to kill storage users again"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x2

    iget v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x1e

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v11, v12

    .line 543
    .end local v12    # "sizeArrN":I
    .restart local v11    # "sizeArrN":I
    :goto_1c8
    add-int/lit8 v6, v6, 0x1

    move v12, v11

    .end local v11    # "sizeArrN":I
    .restart local v12    # "sizeArrN":I
    goto/16 :goto_143

    .line 551
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v8

    .line 552
    .local v8, "pids":[I
    const-string v16, "MountService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "H_UNMOUNT_PM_DONE -> getStorageUsers : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v8

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-eqz v8, :cond_1fb

    array-length v0, v8

    move/from16 v16, v0

    if-nez v16, :cond_1fd

    .line 554
    :cond_1fb
    const/4 v4, 0x1

    goto :goto_185

    .line 557
    :cond_1fd
    const-string v16, "unmount media"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v8

    .line 560
    if-eqz v8, :cond_21b

    array-length v0, v8

    move/from16 v16, v0

    if-nez v16, :cond_185

    .line 561
    :cond_21b
    const/4 v4, 0x1

    goto/16 :goto_185

    .line 573
    .end local v8    # "pids":[I
    :cond_21e
    iget v0, v15, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_231

    .line 574
    const-string v16, "MountService"

    const-string v17, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_231
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "sizeArrN":I
    .restart local v11    # "sizeArrN":I
    aput v6, v10, v12

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1c8

    .line 583
    .end local v4    # "done":Z
    .end local v7    # "path":Ljava/lang/String;
    .end local v11    # "sizeArrN":I
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v12    # "sizeArrN":I
    :cond_258
    add-int/lit8 v6, v12, -0x1

    :goto_25a
    if-ltz v6, :cond_9

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    aget v17, v10, v6

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    add-int/lit8 v6, v6, -0x1

    goto :goto_25a

    .line 589
    .end local v2    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v6    # "i":I
    .end local v9    # "size":I
    .end local v10    # "sizeArr":[I
    .end local v12    # "sizeArrN":I
    :sswitch_26a
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/MountService$UnmountCallBack;

    .line 590
    .restart local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v16, "MountService"

    const-string v17, "++ H_UNMOUNT_MS (%s)"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v15, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v15}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_9

    .line 596
    .end local v15    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_290
    :try_start_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_299} :catch_29b

    goto/16 :goto_9

    .line 597
    :catch_29b
    move-exception v5

    .line 598
    .local v5, "ex":Ljava/lang/Exception;
    const-string v16, "MountService"

    const-string v17, "Boot-time mount exception"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 492
    nop

    :sswitch_data_2aa
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_116
        0x3 -> :sswitch_26a
        0x4 -> :sswitch_290
        0x64 -> :sswitch_a
    .end sparse-switch
.end method
