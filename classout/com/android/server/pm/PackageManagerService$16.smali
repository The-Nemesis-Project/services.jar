.class Lcom/android/server/pm/PackageManagerService$16;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingMove(Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$MoveParams;I)V
    .registers 4

    .prologue
    .line 15321
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$16;->val$currentStatus:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 15324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15325
    const/16 v16, 0x0

    .line 15326
    .local v16, "ob":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    if-eqz v2, :cond_1b

    .line 15327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    move-object/from16 v16, v0

    .line 15329
    :cond_1b
    const-string v3, "PackageManager"

    const-string v4, "MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROCESS_PENDING_MOVE: observer{"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v16, :cond_197

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_34
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "}"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$currentStatus:I

    move/from16 v22, v0

    .line 15332
    .local v22, "returnCode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$currentStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10a

    .line 15333
    const/4 v6, 0x0

    .line 15334
    .local v6, "uidArr":[I
    const/4 v5, 0x0

    .line 15335
    .local v5, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 15336
    :try_start_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageParser$Package;

    .line 15337
    .local v19, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_19b

    .line 15338
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " doesn\'t exist. Aborting move"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 15340
    const/16 v22, -0x2

    .line 15354
    :goto_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_60 .. :try_end_9b} :catchall_221

    .line 15355
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_10a

    .line 15357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 15359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 15360
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_3ca

    .line 15361
    :try_start_b8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    check-cast v19, Landroid/content/pm/PackageParser$Package;

    .line 15363
    .restart local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v19, :cond_224

    .line 15364
    const-string v2, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " Package "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " doesn\'t exist. Aborting move"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 15366
    const/16 v22, -0x2

    .line 15432
    :cond_fe
    :goto_fe
    monitor-exit v4
    :try_end_ff
    .catchall {:try_start_b8 .. :try_end_ff} :catchall_3c7

    .line 15433
    :try_start_ff
    monitor-exit v3
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_3ca

    .line 15435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 15438
    .end local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uidArr":[I
    .end local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_10a
    const/4 v2, 0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_3db

    .line 15440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v2, :cond_123

    .line 15441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/16 v3, -0x6e

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 15455
    :cond_123
    :goto_123
    const/4 v2, -0x7

    move/from16 v0, v22

    if-eq v0, v2, :cond_149

    .line 15456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 15457
    :try_start_12f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageParser$Package;

    .line 15458
    .restart local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_148

    .line 15459
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 15461
    :cond_148
    monitor-exit v3
    :try_end_149
    .catchall {:try_start_12f .. :try_end_149} :catchall_3f9

    .line 15464
    .end local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    move-object/from16 v17, v0

    .line 15465
    .local v17, "observer":Landroid/content/pm/IPackageMoveObserver;
    if-eqz v17, :cond_406

    .line 15467
    :try_start_153
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return move result to caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15468
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_196} :catch_3fc

    .line 15476
    :goto_196
    return-void

    .line 15329
    .end local v17    # "observer":Landroid/content/pm/IPackageMoveObserver;
    .end local v22    # "returnCode":I
    :cond_197
    const-string v2, "null"

    goto/16 :goto_34

    .line 15341
    .restart local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "uidArr":[I
    .restart local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v22    # "returnCode":I
    :cond_19b
    :try_start_19b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fd

    .line 15342
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " code path changed from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " Aborting move and returning error"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 15346
    const/16 v22, -0x6

    goto/16 :goto_9a

    .line 15348
    :cond_1fd
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v23, v0

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v4, v23, v2
    :try_end_20b
    .catchall {:try_start_19b .. :try_end_20b} :catchall_221

    .line 15351
    .end local v6    # "uidArr":[I
    .local v23, "uidArr":[I
    :try_start_20b
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_210
    .catchall {:try_start_20b .. :try_end_210} :catchall_40f

    .line 15352
    .end local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v20, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21b
    .catchall {:try_start_210 .. :try_end_21b} :catchall_414

    move-object/from16 v5, v20

    .end local v20    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v6, v23

    .end local v23    # "uidArr":[I
    .restart local v6    # "uidArr":[I
    goto/16 :goto_9a

    .line 15354
    .end local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_221
    move-exception v2

    :goto_222
    :try_start_222
    monitor-exit v3
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_221

    throw v2

    .line 15367
    .restart local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_224
    :try_start_224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a6

    .line 15369
    const-string v2, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Package "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " code path changed from "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " to "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, " Aborting move and returning error"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 15373
    const/16 v22, -0x6

    goto/16 :goto_fe

    .line 15375
    :cond_2a6
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 15376
    .local v18, "oldCodePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v12

    .line 15377
    .local v12, "newCodePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v15

    .line 15378
    .local v15, "newResPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v14

    .line 15381
    .local v14, "newNativePath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15383
    .local v13, "newNativeDir":Ljava/io/File;
    # invokes: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$600(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_2e3

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$700(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_2e3

    .line 15384
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v13}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    .line 15387
    :cond_2e3
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v25

    .line 15388
    .local v25, "users":[I
    move-object/from16 v8, v25

    .local v8, "arr$":[I
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2ed
    if-ge v10, v11, :cond_308

    aget v24, v8, v10

    .line 15389
    .local v24, "user":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, v24

    invoke-virtual {v2, v7, v14, v0}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_305

    .line 15391
    const/16 v22, -0x1

    .line 15388
    :cond_305
    add-int/lit8 v10, v10, 0x1

    goto :goto_2ed

    .line 15395
    .end local v24    # "user":I
    :cond_308
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_328

    .line 15396
    move-object/from16 v0, v19

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 15398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/pm/PackageManagerService;->moveDexFilesLI(Landroid/content/pm/PackageParser$Package;)I
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->access$5600(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_328

    .line 15401
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 15402
    const/16 v22, -0x1

    .line 15406
    :cond_328
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_fe

    .line 15407
    move-object/from16 v0, v19

    iput-object v12, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 15408
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v12, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 15409
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v15, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 15410
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v14, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 15411
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/pm/PackageSetting;

    .line 15412
    .local v21, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 15413
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 15414
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 15416
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 15417
    move-object/from16 v0, v21

    iput-object v14, v0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 15420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3cd

    .line 15421
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v26, 0x40000

    or-int v7, v7, v26

    iput v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15425
    :goto_39b
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setFlags(I)V

    .line 15426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-virtual {v2, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    goto/16 :goto_fe

    .line 15432
    .end local v8    # "arr$":[I
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "newCodePath":Ljava/lang/String;
    .end local v13    # "newNativeDir":Ljava/io/File;
    .end local v14    # "newNativePath":Ljava/lang/String;
    .end local v15    # "newResPath":Ljava/lang/String;
    .end local v18    # "oldCodePath":Ljava/lang/String;
    .end local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "users":[I
    :catchall_3c7
    move-exception v2

    monitor-exit v4
    :try_end_3c9
    .catchall {:try_start_224 .. :try_end_3c9} :catchall_3c7

    :try_start_3c9
    throw v2

    .line 15433
    :catchall_3ca
    move-exception v2

    monitor-exit v3
    :try_end_3cc
    .catchall {:try_start_3c9 .. :try_end_3cc} :catchall_3ca

    throw v2

    .line 15423
    .restart local v8    # "arr$":[I
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "newCodePath":Ljava/lang/String;
    .restart local v13    # "newNativeDir":Ljava/io/File;
    .restart local v14    # "newNativePath":Ljava/lang/String;
    .restart local v15    # "newResPath":Ljava/lang/String;
    .restart local v18    # "oldCodePath":Ljava/lang/String;
    .restart local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v25    # "users":[I
    :cond_3cd
    :try_start_3cd
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v26, -0x40001

    and-int v7, v7, v26

    iput v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_3da
    .catchall {:try_start_3cd .. :try_end_3da} :catchall_3c7

    goto :goto_39b

    .line 15446
    .end local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uidArr":[I
    .end local v8    # "arr$":[I
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "newCodePath":Ljava/lang/String;
    .end local v13    # "newNativeDir":Ljava/io/File;
    .end local v14    # "newNativePath":Ljava/lang/String;
    .end local v15    # "newResPath":Ljava/lang/String;
    .end local v18    # "oldCodePath":Ljava/lang/String;
    .end local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v21    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v25    # "users":[I
    :cond_3db
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 15448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 15449
    :try_start_3e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$16;->val$mp:Lcom/android/server/pm/PackageManagerService$MoveParams;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 15450
    monitor-exit v3

    goto/16 :goto_123

    :catchall_3f6
    move-exception v2

    monitor-exit v3
    :try_end_3f8
    .catchall {:try_start_3e9 .. :try_end_3f8} :catchall_3f6

    throw v2

    .line 15461
    :catchall_3f9
    move-exception v2

    :try_start_3fa
    monitor-exit v3
    :try_end_3fb
    .catchall {:try_start_3fa .. :try_end_3fb} :catchall_3f9

    throw v2

    .line 15470
    .restart local v17    # "observer":Landroid/content/pm/IPackageMoveObserver;
    :catch_3fc
    move-exception v9

    .line 15471
    .local v9, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    .line 15474
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_406
    const-string v2, "PackageManager"

    const-string v3, "observer is null, no one to return insta llresult: "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    .line 15354
    .end local v17    # "observer":Landroid/content/pm/IPackageMoveObserver;
    .restart local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v23    # "uidArr":[I
    :catchall_40f
    move-exception v2

    move-object/from16 v6, v23

    .end local v23    # "uidArr":[I
    .restart local v6    # "uidArr":[I
    goto/16 :goto_222

    .end local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "uidArr":[I
    .restart local v20    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "uidArr":[I
    :catchall_414
    move-exception v2

    move-object/from16 v5, v20

    .end local v20    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v6, v23

    .end local v23    # "uidArr":[I
    .restart local v6    # "uidArr":[I
    goto/16 :goto_222
.end method
