.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 68
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1339
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_b20

    .line 2135
    :cond_7
    :goto_7
    return-void

    .line 1342
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 1343
    .local v34, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "anr_show_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v60, 0x1

    .line 1345
    .local v60, "showBackground":Z
    :goto_25
    const/4 v8, 0x0

    .line 1346
    .local v8, "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1347
    :try_start_2b
    const-string v4, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    .line 1348
    .local v53, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v4, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/server/am/AppErrorResult;

    .line 1349
    .local v57, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v53, :cond_71

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_71

    .line 1350
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    if-eqz v57, :cond_69

    .line 1352
    const/4 v4, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1354
    :cond_69
    monitor-exit v5

    goto :goto_7

    .line 1404
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_6b
    move-exception v4

    :goto_6c
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_2b .. :try_end_6d} :catchall_6b

    throw v4

    .line 1343
    .end local v8    # "d":Landroid/app/Dialog;
    .end local v60    # "showBackground":Z
    :cond_6e
    const/16 v60, 0x0

    goto :goto_25

    .line 1356
    .restart local v8    # "d":Landroid/app/Dialog;
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v60    # "showBackground":Z
    :cond_71
    if-nez v60, :cond_be

    :try_start_73
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-lt v4, v6, :cond_be

    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v4, v6, :cond_be

    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_be

    .line 1359
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": background"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    if-eqz v57, :cond_bb

    .line 1361
    const/4 v4, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1363
    :cond_bb
    monitor-exit v5

    goto/16 :goto_7

    .line 1365
    :cond_be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_122

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_122

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_122

    .line 1366
    new-instance v32, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    move-object/from16 v2, v53

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_ed
    .catchall {:try_start_73 .. :try_end_ed} :catchall_6b

    .line 1370
    .end local v8    # "d":Landroid/app/Dialog;
    .local v32, "d":Landroid/app/Dialog;
    :try_start_ed
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 1372
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1387
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$2;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1396
    :cond_10b
    move-object/from16 v0, v32

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_111
    .catchall {:try_start_ed .. :try_end_111} :catchall_b1b

    move-object/from16 v8, v32

    .line 1404
    .end local v32    # "d":Landroid/app/Dialog;
    .restart local v8    # "d":Landroid/app/Dialog;
    :cond_113
    :goto_113
    :try_start_113
    monitor-exit v5
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_6b

    .line 1405
    if-eqz v8, :cond_119

    .line 1406
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1408
    :cond_119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1400
    :cond_122
    if-eqz v57, :cond_113

    .line 1401
    const/4 v4, 0x0

    :try_start_125
    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_12a
    .catchall {:try_start_125 .. :try_end_12a} :catchall_6b

    goto :goto_113

    .line 1411
    .end local v8    # "d":Landroid/app/Dialog;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v60    # "showBackground":Z
    :sswitch_12b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/util/HashMap;

    .line 1412
    .local v33, "data":Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1413
    :try_start_138
    const-string v4, "errorpermission"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    .line 1414
    .local v50, "permission":Ljava/lang/String;
    const-string v4, "app"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    .line 1415
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v53, :cond_174

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_174

    .line 1416
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    monitor-exit v5

    goto/16 :goto_7

    .line 1432
    .end local v50    # "permission":Ljava/lang/String;
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_171
    move-exception v4

    monitor-exit v5
    :try_end_173
    .catchall {:try_start_138 .. :try_end_173} :catchall_171

    throw v4

    .line 1419
    .restart local v50    # "permission":Ljava/lang/String;
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_174
    :try_start_174
    const-string v4, "result"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/server/am/AppErrorResult;

    .line 1420
    .restart local v57    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_1c6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_1c6

    .line 1421
    new-instance v8, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v57

    move-object/from16 v1, v53

    move-object/from16 v2, v50

    invoke-direct {v8, v4, v0, v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1422
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1423
    move-object/from16 v0, v53

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1424
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mCMMessageByApp:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_1a9
    .catchall {:try_start_174 .. :try_end_1a9} :catchall_171

    .line 1425
    :try_start_1a9
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mCMMessageByApp:Ljava/util/HashSet;

    if-eqz v4, :cond_1b8

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mCMMessageByApp:Ljava/util/HashSet;

    move-object/from16 v0, v53

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1426
    :cond_1b8
    monitor-exit v6
    :try_end_1b9
    .catchall {:try_start_1a9 .. :try_end_1b9} :catchall_1c3

    .line 1432
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_1b9
    :try_start_1b9
    monitor-exit v5
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_171

    .line 1434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1426
    .restart local v8    # "d":Landroid/app/Dialog;
    :catchall_1c3
    move-exception v4

    :try_start_1c4
    monitor-exit v6
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c3

    :try_start_1c5
    throw v4

    .line 1430
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_1c6
    const/4 v4, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1cc
    .catchall {:try_start_1c5 .. :try_end_1cc} :catchall_171

    goto :goto_1b9

    .line 1437
    .end local v33    # "data":Ljava/util/HashMap;
    .end local v50    # "permission":Ljava/lang/String;
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_1cd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/util/HashMap;

    .line 1438
    .restart local v33    # "data":Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1439
    :try_start_1da
    const-string v4, "newIntent_intent"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/Intent;

    .line 1440
    .local v43, "newIntent":Landroid/content/Intent;
    const-string v4, "newIntent_packagename"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;
    :try_end_1ee
    .catchall {:try_start_1da .. :try_end_1ee} :catchall_20f

    .line 1443
    .local v29, "cmPackagename":Ljava/lang/String;
    :try_start_1ee
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1f7
    .catch Landroid/os/RemoteException; {:try_start_1ee .. :try_end_1f7} :catch_212
    .catchall {:try_start_1ee .. :try_end_1f7} :catchall_20f

    move-result-object v30

    .line 1447
    .local v30, "cmPermissions":[Ljava/lang/String;
    :goto_1f8
    :try_start_1f8
    new-instance v8, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-direct {v8, v4, v0, v1, v2}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 1448
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1450
    monitor-exit v5

    goto/16 :goto_7

    .end local v8    # "d":Landroid/app/Dialog;
    .end local v29    # "cmPackagename":Ljava/lang/String;
    .end local v30    # "cmPermissions":[Ljava/lang/String;
    .end local v43    # "newIntent":Landroid/content/Intent;
    :catchall_20f
    move-exception v4

    monitor-exit v5
    :try_end_211
    .catchall {:try_start_1f8 .. :try_end_211} :catchall_20f

    throw v4

    .line 1444
    .restart local v29    # "cmPackagename":Ljava/lang/String;
    .restart local v43    # "newIntent":Landroid/content/Intent;
    :catch_212
    move-exception v35

    .line 1445
    .local v35, "e":Landroid/os/RemoteException;
    const/16 v30, 0x0

    .restart local v30    # "cmPermissions":[Ljava/lang/String;
    goto :goto_1f8

    .line 1453
    .end local v29    # "cmPackagename":Ljava/lang/String;
    .end local v30    # "cmPermissions":[Ljava/lang/String;
    .end local v33    # "data":Ljava/util/HashMap;
    .end local v35    # "e":Landroid/os/RemoteException;
    .end local v43    # "newIntent":Landroid/content/Intent;
    :sswitch_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1454
    :try_start_21d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 1455
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    .line 1456
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v53, :cond_257

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_257

    .line 1457
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    monitor-exit v20

    goto/16 :goto_7

    .line 1507
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_254
    move-exception v4

    monitor-exit v20
    :try_end_256
    .catchall {:try_start_21d .. :try_end_256} :catchall_254

    throw v4

    .line 1461
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_257
    :try_start_257
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_26b

    .line 1463
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1466
    :cond_26b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    const/16 v19, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v4 .. v19}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 1470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2dd

    .line 1471
    new-instance v8, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2db

    const/4 v13, 0x1

    :goto_2ab
    move-object/from16 v11, v53

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 1475
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_2ca

    .line 1477
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$3;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1492
    new-instance v4, Lcom/android/server/am/ActivityManagerService$2$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$2$4;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1501
    :cond_2ca
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1502
    move-object/from16 v0, v53

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1507
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_2d1
    monitor-exit v20
    :try_end_2d2
    .catchall {:try_start_257 .. :try_end_2d2} :catchall_254

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1471
    :cond_2db
    const/4 v13, 0x0

    goto :goto_2ab

    .line 1505
    :cond_2dd
    :try_start_2dd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_2e7
    .catchall {:try_start_2dd .. :try_end_2e7} :catchall_254

    goto :goto_2d1

    .line 1512
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :sswitch_2e8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 1513
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1514
    :try_start_2f5
    const-string v4, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/ProcessRecord;

    .line 1515
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v53, :cond_30e

    .line 1516
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    monitor-exit v5

    goto/16 :goto_7

    .line 1534
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_30b
    move-exception v4

    monitor-exit v5
    :try_end_30d
    .catchall {:try_start_2f5 .. :try_end_30d} :catchall_30b

    throw v4

    .line 1519
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_30e
    :try_start_30e
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_331

    .line 1520
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    monitor-exit v5

    goto/16 :goto_7

    .line 1523
    :cond_331
    const-string v4, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/server/am/AppErrorResult;

    .line 1524
    .restart local v57    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_379

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_379

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_379

    .line 1525
    new-instance v8, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v57

    move-object/from16 v1, v53

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1527
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1528
    move-object/from16 v0, v53

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1534
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_36f
    monitor-exit v5
    :try_end_370
    .catchall {:try_start_30e .. :try_end_370} :catchall_30b

    .line 1535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1532
    :cond_379
    const/4 v4, 0x0

    :try_start_37a
    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_37f
    .catchall {:try_start_37a .. :try_end_37f} :catchall_30b

    goto :goto_36f

    .line 1538
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_380
    new-instance v8, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1540
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1544
    .end local v8    # "d":Landroid/app/Dialog;
    :sswitch_3a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    .line 1545
    .local v58, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v58

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1548
    .end local v58    # "resolver":Landroid/content/ContentResolver;
    :sswitch_3b8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1549
    :try_start_3bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1550
    monitor-exit v5

    goto/16 :goto_7

    :catchall_3c7
    move-exception v4

    monitor-exit v5
    :try_end_3c9
    .catchall {:try_start_3bd .. :try_end_3c9} :catchall_3c7

    throw v4

    .line 1553
    :sswitch_3ca
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1554
    :try_start_3cf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    .line 1555
    .local v26, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_406

    .line 1556
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_400

    .line 1557
    new-instance v8, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v8, v4, v6, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1560
    .restart local v8    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v26

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1561
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1562
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 1570
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_400
    :goto_400
    monitor-exit v5

    goto/16 :goto_7

    .end local v26    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_403
    move-exception v4

    monitor-exit v5
    :try_end_405
    .catchall {:try_start_3cf .. :try_end_405} :catchall_403

    throw v4

    .line 1565
    .restart local v26    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_406
    :try_start_406
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_400

    .line 1566
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1567
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_418
    .catchall {:try_start_406 .. :try_end_418} :catchall_403

    goto :goto_400

    .line 1573
    .end local v26    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_44b

    .line 1574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    .line 1576
    .local v45, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v45

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v45

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1582
    .end local v45    # "nmsg":Landroid/os/Message;
    :cond_44b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1583
    :try_start_450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 1584
    monitor-exit v5

    goto/16 :goto_7

    :catchall_462
    move-exception v4

    monitor-exit v5
    :try_end_464
    .catchall {:try_start_450 .. :try_end_464} :catchall_462

    throw v4

    .line 1587
    :sswitch_465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1588
    :try_start_46a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v40, v4, -0x1

    .local v40, "i":I
    :goto_476
    if-ltz v40, :cond_4b9

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/server/am/ProcessRecord;

    .line 1590
    .local v56, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_48a
    .catchall {:try_start_46a .. :try_end_48a} :catchall_4b6

    if-eqz v4, :cond_493

    .line 1592
    :try_start_48c
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_493
    .catch Landroid/os/RemoteException; {:try_start_48c .. :try_end_493} :catch_496
    .catchall {:try_start_48c .. :try_end_493} :catchall_4b6

    .line 1588
    :cond_493
    :goto_493
    add-int/lit8 v40, v40, -0x1

    goto :goto_476

    .line 1593
    :catch_496
    move-exception v36

    .line 1594
    .local v36, "ex":Landroid/os/RemoteException;
    :try_start_497
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update time zone for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_493

    .line 1598
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v40    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_4b6
    move-exception v4

    monitor-exit v5
    :try_end_4b8
    .catchall {:try_start_497 .. :try_end_4b8} :catchall_4b6

    throw v4

    .restart local v40    # "i":I
    :cond_4b9
    :try_start_4b9
    monitor-exit v5
    :try_end_4ba
    .catchall {:try_start_4b9 .. :try_end_4ba} :catchall_4b6

    goto/16 :goto_7

    .line 1601
    .end local v40    # "i":I
    :sswitch_4bc
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1602
    :try_start_4c1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v40, v4, -0x1

    .restart local v40    # "i":I
    :goto_4cd
    if-ltz v40, :cond_510

    .line 1603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/server/am/ProcessRecord;

    .line 1604
    .restart local v56    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4e1
    .catchall {:try_start_4c1 .. :try_end_4e1} :catchall_50d

    if-eqz v4, :cond_4ea

    .line 1606
    :try_start_4e3
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_4ea
    .catch Landroid/os/RemoteException; {:try_start_4e3 .. :try_end_4ea} :catch_4ed
    .catchall {:try_start_4e3 .. :try_end_4ea} :catchall_50d

    .line 1602
    :cond_4ea
    :goto_4ea
    add-int/lit8 v40, v40, -0x1

    goto :goto_4cd

    .line 1607
    :catch_4ed
    move-exception v36

    .line 1608
    .restart local v36    # "ex":Landroid/os/RemoteException;
    :try_start_4ee
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clear dns cache for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ea

    .line 1612
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v40    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_50d
    move-exception v4

    monitor-exit v5
    :try_end_50f
    .catchall {:try_start_4ee .. :try_end_50f} :catchall_50d

    throw v4

    .restart local v40    # "i":I
    :cond_510
    :try_start_510
    monitor-exit v5
    :try_end_511
    .catchall {:try_start_510 .. :try_end_511} :catchall_50d

    goto/16 :goto_7

    .line 1615
    .end local v40    # "i":I
    :sswitch_513
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/net/ProxyProperties;

    .line 1616
    .local v55, "proxy":Landroid/net/ProxyProperties;
    const-string v39, ""

    .line 1617
    .local v39, "host":Ljava/lang/String;
    const-string v52, ""

    .line 1618
    .local v52, "port":Ljava/lang/String;
    const-string v37, ""

    .line 1619
    .local v37, "exclList":Ljava/lang/String;
    const/16 v49, 0x0

    .line 1620
    .local v49, "pacFileUrl":Ljava/lang/String;
    if-eqz v55, :cond_539

    .line 1621
    invoke-virtual/range {v55 .. v55}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v39

    .line 1622
    invoke-virtual/range {v55 .. v55}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v52

    .line 1623
    invoke-virtual/range {v55 .. v55}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v37

    .line 1624
    invoke-virtual/range {v55 .. v55}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v49

    .line 1626
    :cond_539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1627
    :try_start_53e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v40, v4, -0x1

    .restart local v40    # "i":I
    :goto_54a
    if-ltz v40, :cond_595

    .line 1628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/server/am/ProcessRecord;

    .line 1629
    .restart local v56    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_55e
    .catchall {:try_start_53e .. :try_end_55e} :catchall_592

    if-eqz v4, :cond_56f

    .line 1631
    :try_start_560
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v39

    move-object/from16 v1, v52

    move-object/from16 v2, v37

    move-object/from16 v3, v49

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56f
    .catch Landroid/os/RemoteException; {:try_start_560 .. :try_end_56f} :catch_572
    .catchall {:try_start_560 .. :try_end_56f} :catchall_592

    .line 1627
    :cond_56f
    :goto_56f
    add-int/lit8 v40, v40, -0x1

    goto :goto_54a

    .line 1632
    :catch_572
    move-exception v36

    .line 1633
    .restart local v36    # "ex":Landroid/os/RemoteException;
    :try_start_573
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update http proxy for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56f

    .line 1638
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v40    # "i":I
    .end local v56    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_592
    move-exception v4

    monitor-exit v5
    :try_end_594
    .catchall {:try_start_573 .. :try_end_594} :catchall_592

    throw v4

    .restart local v40    # "i":I
    :cond_595
    :try_start_595
    monitor-exit v5
    :try_end_596
    .catchall {:try_start_595 .. :try_end_596} :catchall_592

    goto/16 :goto_7

    .line 1641
    .end local v37    # "exclList":Ljava/lang/String;
    .end local v39    # "host":Ljava/lang/String;
    .end local v40    # "i":I
    .end local v49    # "pacFileUrl":Ljava/lang/String;
    .end local v52    # "port":Ljava/lang/String;
    .end local v55    # "proxy":Landroid/net/ProxyProperties;
    :sswitch_598
    const-string v64, "System UIDs Inconsistent"

    .line 1642
    .local v64, "title":Ljava/lang/String;
    const-string v62, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 1644
    .local v62, "text":Ljava/lang/String;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1647
    new-instance v8, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1648
    .local v8, "d":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1649
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1650
    move-object/from16 v0, v64

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1651
    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1652
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1655
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1659
    .end local v8    # "d":Landroid/app/AlertDialog;
    .end local v62    # "text":Ljava/lang/String;
    .end local v64    # "title":Ljava/lang/String;
    :sswitch_605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    .line 1660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1665
    :sswitch_61f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_651

    .line 1666
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    .line 1668
    .restart local v45    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v45

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v45

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1672
    .end local v45    # "nmsg":Landroid/os/Message;
    :cond_651
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    .line 1673
    .restart local v26    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1674
    :try_start_65e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1675
    monitor-exit v5

    goto/16 :goto_7

    :catchall_66a
    move-exception v4

    monitor-exit v5
    :try_end_66c
    .catchall {:try_start_65e .. :try_end_66c} :catchall_66a

    throw v4

    .line 1678
    .end local v26    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_66d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1679
    :try_start_672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1680
    monitor-exit v5

    goto/16 :goto_7

    :catchall_67d
    move-exception v4

    monitor-exit v5
    :try_end_67f
    .catchall {:try_start_672 .. :try_end_67f} :catchall_67d

    throw v4

    .line 1683
    :sswitch_680
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1684
    :try_start_685
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1685
    .local v11, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6bb

    const/4 v12, 0x1

    .line 1686
    .local v12, "restart":Z
    :goto_691
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/os/Bundle;

    .line 1687
    .local v28, "bundle":Landroid/os/Bundle;
    const-string v4, "pkg"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1688
    .local v10, "pkg":Ljava/lang/String;
    const-string v4, "reason"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1689
    .local v17, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZILjava/lang/String;)Z
    invoke-static/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZILjava/lang/String;)Z

    .line 1691
    monitor-exit v5

    goto/16 :goto_7

    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "appid":I
    .end local v12    # "restart":Z
    .end local v17    # "reason":Ljava/lang/String;
    .end local v28    # "bundle":Landroid/os/Bundle;
    :catchall_6b8
    move-exception v4

    monitor-exit v5
    :try_end_6ba
    .catchall {:try_start_685 .. :try_end_6ba} :catchall_6b8

    throw v4

    .line 1685
    .restart local v11    # "appid":I
    :cond_6bb
    const/4 v12, 0x0

    goto :goto_691

    .line 1694
    .end local v11    # "appid":I
    :sswitch_6bd
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1697
    :sswitch_6c8
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v41

    .line 1698
    .local v41, "inm":Landroid/app/INotificationManager;
    if-eqz v41, :cond_7

    .line 1702
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Lcom/android/server/am/ActivityRecord;

    .line 1703
    .local v59, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v54, v0

    .line 1704
    .local v54, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v54, :cond_7

    .line 1709
    :try_start_6de
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v54

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v31

    .line 1710
    .local v31, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040687

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v62

    .line 1712
    .restart local v62    # "text":Ljava/lang/String;
    new-instance v46, Landroid/app/Notification;

    invoke-direct/range {v46 .. v46}, Landroid/app/Notification;-><init>()V

    .line 1713
    .local v46, "notification":Landroid/app/Notification;
    const v4, 0x10807be

    move-object/from16 v0, v46

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1714
    const-wide/16 v4, 0x0

    move-object/from16 v0, v46

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1715
    const/4 v4, 0x2

    move-object/from16 v0, v46

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1716
    move-object/from16 v0, v62

    move-object/from16 v1, v46

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1717
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1718
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1719
    const/4 v4, 0x0

    move-object/from16 v0, v46

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040688

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/high16 v21, 0x10000000

    const/16 v22, 0x0

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v59

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v18 .. v23}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_773
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6de .. :try_end_773} :catch_79c

    .line 1727
    const/4 v4, 0x1

    :try_start_774
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 1728
    .local v24, "outId":[I
    const-string v19, "android"

    const-string v20, "android"

    const/16 v21, 0x0

    const v22, 0x1040687

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v25, v0

    move-object/from16 v18, v41

    move-object/from16 v23, v46

    invoke-interface/range {v18 .. v25}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_78e
    .catch Ljava/lang/RuntimeException; {:try_start_774 .. :try_end_78e} :catch_790
    .catch Landroid/os/RemoteException; {:try_start_774 .. :try_end_78e} :catch_b18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_774 .. :try_end_78e} :catch_79c

    goto/16 :goto_7

    .line 1731
    .end local v24    # "outId":[I
    :catch_790
    move-exception v35

    .line 1732
    .local v35, "e":Ljava/lang/RuntimeException;
    :try_start_791
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_791 .. :try_end_79a} :catch_79c

    goto/16 :goto_7

    .line 1736
    .end local v31    # "context":Landroid/content/Context;
    .end local v35    # "e":Ljava/lang/RuntimeException;
    .end local v46    # "notification":Landroid/app/Notification;
    .end local v62    # "text":Ljava/lang/String;
    :catch_79c
    move-exception v35

    .line 1737
    .local v35, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1741
    .end local v35    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v41    # "inm":Landroid/app/INotificationManager;
    .end local v54    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_7a8
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v41

    .line 1742
    .restart local v41    # "inm":Landroid/app/INotificationManager;
    if-eqz v41, :cond_7

    .line 1746
    :try_start_7ae
    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x1040687

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v41

    invoke-interface {v0, v4, v5, v6, v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_7bd
    .catch Ljava/lang/RuntimeException; {:try_start_7ae .. :try_end_7bd} :catch_7bf
    .catch Landroid/os/RemoteException; {:try_start_7ae .. :try_end_7bd} :catch_b15

    goto/16 :goto_7

    .line 1748
    :catch_7bf
    move-exception v35

    .line 1749
    .local v35, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1755
    .end local v35    # "e":Ljava/lang/RuntimeException;
    .end local v41    # "inm":Landroid/app/INotificationManager;
    :sswitch_7cb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1756
    :try_start_7d0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1757
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1758
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v45

    .line 1759
    .restart local v45    # "nmsg":Landroid/os/Message;
    const-wide/32 v13, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1760
    monitor-exit v5

    goto/16 :goto_7

    .end local v45    # "nmsg":Landroid/os/Message;
    :catchall_7f4
    move-exception v4

    monitor-exit v5
    :try_end_7f6
    .catchall {:try_start_7d0 .. :try_end_7f6} :catchall_7f4

    throw v4

    .line 1764
    :sswitch_7f7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v6, v9, v13}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    .line 1768
    :sswitch_804
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1769
    :try_start_809
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/am/ActivityRecord;

    .line 1770
    .local v27, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_847

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_837

    .line 1773
    monitor-exit v5

    goto/16 :goto_7

    .line 1792
    .end local v27    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_834
    move-exception v4

    monitor-exit v5
    :try_end_836
    .catchall {:try_start_809 .. :try_end_836} :catchall_834

    throw v4

    .line 1775
    .restart local v27    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_837
    :try_start_837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1778
    :cond_847
    if-eqz v27, :cond_849

    .line 1792
    :cond_849
    monitor-exit v5
    :try_end_84a
    .catchall {:try_start_837 .. :try_end_84a} :catchall_834

    goto/16 :goto_7

    .line 1796
    .end local v27    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_84c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 1800
    :sswitch_855
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    .line 1801
    .local v51, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v65, v0

    .line 1802
    .local v65, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v51

    move/from16 v1, v65

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 1807
    .end local v51    # "pid":I
    .end local v65    # "uid":I
    :sswitch_86e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1808
    :try_start_873
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v47

    .line 1810
    .local v47, "nowTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v40, v4, -0x1

    .restart local v40    # "i":I
    :goto_883
    if-ltz v40, :cond_930

    .line 1811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    .line 1812
    .restart local v26    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v26, :cond_89b

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_89e

    .line 1810
    :cond_89b
    :goto_89b
    add-int/lit8 v40, v40, -0x1

    goto :goto_883

    .line 1814
    :cond_89e
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->adjChanged:Z

    if-eqz v4, :cond_902

    .line 1815
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->adjChanged:Z

    .line 1816
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x9

    if-lt v4, v6, :cond_8e2

    .line 1817
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-nez v4, :cond_8ca

    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-nez v4, :cond_8ca

    .line 1818
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    goto :goto_89b

    .line 1845
    .end local v26    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "i":I
    .end local v47    # "nowTime":J
    :catchall_8c7
    move-exception v4

    monitor-exit v5
    :try_end_8c9
    .catchall {:try_start_873 .. :try_end_8c9} :catchall_8c7

    throw v4

    .line 1823
    .restart local v26    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "i":I
    .restart local v47    # "nowTime":J
    :cond_8ca
    :try_start_8ca
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-nez v4, :cond_89b

    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-nez v4, :cond_89b

    .line 1824
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    .line 1825
    move-wide/from16 v0, v47

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/server/am/ProcessRecord;->waitTime:J

    goto :goto_89b

    .line 1827
    :cond_8e2
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x9

    if-ge v4, v6, :cond_89b

    .line 1828
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    if-eqz v4, :cond_8f6

    .line 1831
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    goto :goto_89b

    .line 1832
    :cond_8f6
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-eqz v4, :cond_89b

    .line 1833
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    goto :goto_89b

    .line 1836
    :cond_902
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    if-eqz v4, :cond_89b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    move/from16 v0, v40

    if-ge v0, v4, :cond_89b

    move-object/from16 v0, v26

    iget-wide v13, v0, Lcom/android/server/am/ProcessRecord;->waitTime:J

    sub-long v13, v47, v13

    const-wide/16 v15, 0x2710

    cmp-long v4, v13, v15

    if-lez v4, :cond_89b

    .line 1841
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->inHiddenGrp:Z

    .line 1842
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitHidden:Z

    goto/16 :goto_89b

    .line 1845
    .end local v26    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_930
    monitor-exit v5
    :try_end_931
    .catchall {:try_start_8ca .. :try_end_931} :catchall_8c7

    goto/16 :goto_7

    .line 1850
    .end local v40    # "i":I
    .end local v47    # "nowTime":J
    :sswitch_933
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/util/ArrayList;

    .line 1851
    .local v42, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v63, Lcom/android/server/am/ActivityManagerService$2$5;

    move-object/from16 v0, v63

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$2$5;-><init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/util/ArrayList;)V

    .line 2041
    .local v63, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v63 .. v63}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 2045
    .end local v42    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v63    # "thread":Ljava/lang/Thread;
    :sswitch_94b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2050
    :sswitch_962
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling container handler callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-static {}, Lcom/android/server/pm/HandlerCacheManager;->getInstance()Lcom/android/server/pm/HandlerCacheManager;

    move-result-object v38

    .line 2052
    .local v38, "handlerManager":Lcom/android/server/pm/HandlerCacheManager;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/server/pm/HandlerCacheManager;->onPersonaSwitch(I)V

    goto/16 :goto_7

    .line 2057
    .end local v38    # "handlerManager":Lcom/android/server/pm/HandlerCacheManager;
    :sswitch_98d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2061
    :sswitch_9a4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2065
    :sswitch_9bb
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_9de

    const/16 v44, 0x1

    .line 2066
    .local v44, "nextState":Z
    :goto_9c3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v44

    if-eq v4, v0, :cond_7

    .line 2071
    if-eqz v44, :cond_9e1

    .line 2072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 2065
    .end local v44    # "nextState":Z
    :cond_9de
    const/16 v44, 0x0

    goto :goto_9c3

    .line 2074
    .restart local v44    # "nextState":Z
    :cond_9e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 2080
    .end local v44    # "nextState":Z
    :sswitch_9ec
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2084
    :sswitch_9f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v5, v6, v9, v13}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto/16 :goto_7

    .line 2089
    :sswitch_a04
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2096
    :sswitch_a2a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    .line 2097
    .local v61, "stopReason":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v0, v61

    invoke-static {v4, v0}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationStop(Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 2101
    .end local v61    # "stopReason":I
    :sswitch_a3d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2108
    :sswitch_a48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_a76

    .line 2109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0xc

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 2110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2112
    :cond_a76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_aa4

    .line 2113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0x10

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 2114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2116
    :cond_aa4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_ad2

    .line 2117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v18, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "ACTIVITY_RESUME_BOOSTER"

    const/16 v21, 0xe

    const-wide/16 v22, 0x0

    invoke-direct/range {v18 .. v23}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 2118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2121
    :cond_ad2
    sget v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ae5

    .line 2122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2123
    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    .line 2125
    :cond_ae5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_afc

    .line 2126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2128
    :cond_afc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_7

    .line 1751
    .restart local v41    # "inm":Landroid/app/INotificationManager;
    :catch_b15
    move-exception v4

    goto/16 :goto_7

    .line 1734
    .restart local v31    # "context":Landroid/content/Context;
    .restart local v46    # "notification":Landroid/app/Notification;
    .restart local v54    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v59    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v62    # "text":Ljava/lang/String;
    :catch_b18
    move-exception v4

    goto/16 :goto_7

    .line 1404
    .end local v31    # "context":Landroid/content/Context;
    .end local v41    # "inm":Landroid/app/INotificationManager;
    .end local v46    # "notification":Landroid/app/Notification;
    .end local v54    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v62    # "text":Ljava/lang/String;
    .restart local v32    # "d":Landroid/app/Dialog;
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v53    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v60    # "showBackground":Z
    :catchall_b1b
    move-exception v4

    move-object/from16 v8, v32

    .end local v32    # "d":Landroid/app/Dialog;
    .local v8, "d":Landroid/app/Dialog;
    goto/16 :goto_6c

    .line 1339
    :sswitch_data_b20
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_216
        0x3 -> :sswitch_380
        0x4 -> :sswitch_3a1
        0x5 -> :sswitch_3b8
        0x6 -> :sswitch_3ca
        0xc -> :sswitch_419
        0xd -> :sswitch_465
        0xe -> :sswitch_598
        0xf -> :sswitch_605
        0x14 -> :sswitch_61f
        0x15 -> :sswitch_66d
        0x16 -> :sswitch_680
        0x17 -> :sswitch_6bd
        0x18 -> :sswitch_6c8
        0x19 -> :sswitch_7a8
        0x1a -> :sswitch_2e8
        0x1b -> :sswitch_7cb
        0x1c -> :sswitch_4bc
        0x1d -> :sswitch_513
        0x1e -> :sswitch_804
        0x1f -> :sswitch_84c
        0x20 -> :sswitch_855
        0x21 -> :sswitch_933
        0x22 -> :sswitch_94b
        0x23 -> :sswitch_98d
        0x24 -> :sswitch_9a4
        0x25 -> :sswitch_9bb
        0x26 -> :sswitch_9ec
        0x27 -> :sswitch_9f5
        0x28 -> :sswitch_12b
        0x29 -> :sswitch_1cd
        0x2a -> :sswitch_a48
        0x2b -> :sswitch_86e
        0x190 -> :sswitch_a2a
        0x191 -> :sswitch_a3d
        0x1f4 -> :sswitch_a04
        0x258 -> :sswitch_962
        0x3e7 -> :sswitch_7f7
    .end sparse-switch
.end method
