.class Lcom/android/server/BackupManagerService$FullBackupObbConnection;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupObbConnection"
.end annotation


# instance fields
.field volatile mService:Lcom/android/internal/backup/IObbBackupService;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 3

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 2595
    return-void
.end method

.method private waitForConnection()V
    .registers 3

    .prologue
    .line 2652
    monitor-enter p0

    .line 2653
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    if-nez v0, :cond_12

    .line 2654
    const-string v0, "BackupManagerService"

    const-string v1, "...waiting for OBB service binding..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b

    .line 2656
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10
    .catchall {:try_start_c .. :try_end_f} :catchall_1b

    goto :goto_1

    .line 2657
    :catch_10
    move-exception v0

    goto :goto_1

    .line 2659
    :cond_12
    :try_start_12
    const-string v0, "BackupManagerService"

    const-string v1, "Connected to OBB service; continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    monitor-exit p0

    .line 2661
    return-void

    .line 2660
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 2611
    const/4 v2, 0x0

    .line 2612
    .local v2, "success":Z
    invoke-direct {p0}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    .line 2614
    const/4 v1, 0x0

    .line 2616
    .local v1, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2617
    iget-object v4, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v3

    .line 2618
    .local v3, "token":I
    iget-object v4, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    const-wide/32 v5, 0x493e0

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V

    .line 2619
    iget-object v4, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    iget-object v7, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, v5, v6, v3, v7}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 2620
    iget-object v4, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    # invokes: Lcom/android/server/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    invoke-static {v4, v5, p2}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 2621
    iget-object v4, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_50
    .catchall {:try_start_5 .. :try_end_33} :catchall_8e

    move-result v2

    .line 2626
    :try_start_34
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2627
    if-eqz v1, :cond_4f

    .line 2628
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_44

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2629
    :cond_44
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4f} :catch_b4

    .line 2635
    .end local v3    # "token":I
    :cond_4f
    :goto_4f
    return v2

    .line 2622
    :catch_50
    move-exception v0

    .line 2623
    .local v0, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to back up OBBs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_51 .. :try_end_69} :catchall_8e

    .line 2626
    :try_start_69
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2627
    if-eqz v1, :cond_4f

    .line 2628
    const/4 v4, 0x0

    aget-object v4, v1, v4

    if-eqz v4, :cond_79

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2629
    :cond_79
    const/4 v4, 0x1

    aget-object v4, v1, v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_84} :catch_85

    goto :goto_4f

    .line 2631
    :catch_85
    move-exception v0

    .line 2632
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    :goto_8a
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    .line 2625
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_8e
    move-exception v4

    .line 2626
    :try_start_8f
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2627
    if-eqz v1, :cond_aa

    .line 2628
    const/4 v5, 0x0

    aget-object v5, v1, v5

    if-eqz v5, :cond_9f

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2629
    :cond_9f
    const/4 v5, 0x1

    aget-object v5, v1, v5

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_aa} :catch_ab

    .line 2625
    :cond_aa
    :goto_aa
    throw v4

    .line 2631
    :catch_ab
    move-exception v0

    .line 2632
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    const-string v6, "I/O error closing down OBB backup"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa

    .line 2631
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "token":I
    :catch_b4
    move-exception v0

    .line 2632
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "I/O error closing down OBB backup"

    goto :goto_8a
.end method

.method public establish()V
    .registers 6

    .prologue
    .line 2598
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiating bind of OBB service on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.sharedstoragebackup"

    const-string v4, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 2602
    .local v0, "obbIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2604
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2665
    monitor-enter p0

    .line 2666
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 2667
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBB service connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connected on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2670
    monitor-exit p0

    .line 2671
    return-void

    .line 2670
    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2675
    monitor-enter p0

    .line 2676
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 2677
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OBB service connection disconnected on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2679
    monitor-exit p0

    .line 2680
    return-void

    .line 2679
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 27
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "fileSize"    # J
    .param p5, "type"    # I
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .param p11, "token"    # I
    .param p12, "callbackBinder"    # Landroid/app/backup/IBackupManager;

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->waitForConnection()V

    .line 2644
    :try_start_3
    iget-object v0, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    .line 2649
    :goto_19
    return-void

    .line 2646
    :catch_1a
    move-exception v13

    .line 2647
    .local v13, "e":Ljava/lang/Exception;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore OBBs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public tearDown()V
    .registers 2

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2608
    return-void
.end method
