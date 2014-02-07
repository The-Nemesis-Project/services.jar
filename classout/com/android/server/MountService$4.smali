.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 866
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string v14, "volume"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 869
    .local v10, "vols":[Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_20
    if-ge v3, v4, :cond_61

    aget-object v11, v1, v3

    .line 870
    .local v11, "volstr":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 872
    .local v9, "tok":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v5, v9, v13

    .line 873
    .local v5, "path":Ljava/lang/String;
    const-string v8, "removed"

    .line 876
    .local v8, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_86

    .line 877
    :try_start_38
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 878
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_83

    .line 881
    if-nez v12, :cond_a2

    .line 882
    :try_start_49
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Break due to unknown volume path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_61} :catch_86

    .line 924
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_61
    :goto_61
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 927
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v13}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 931
    return-void

    .line 878
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    :catchall_83
    move-exception v13

    :try_start_84
    monitor-exit v14
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw v13
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_86

    .line 912
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    :catch_86
    move-exception v2

    .line 913
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "MountService"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v13}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 915
    .local v6, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v6, :cond_61

    .line 916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v14, "removed"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v6, v14}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto :goto_61

    .line 886
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "primary":Landroid/os/storage/StorageVolume;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    .restart local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_a2
    const/4 v13, 0x2

    :try_start_a3
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 887
    .local v7, "st":I
    if-eqz v7, :cond_ae

    const/4 v13, 0x2

    if-ne v7, v13, :cond_d5

    .line 888
    :cond_ae
    const-string v8, "removed"

    .line 907
    :goto_b0
    if-eqz v8, :cond_d1

    .line 908
    const-string v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v13, v12, v8}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 869
    :cond_d1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20

    .line 889
    :cond_d5
    const/4 v13, 0x1

    if-ne v7, v13, :cond_db

    .line 890
    const-string v8, "unmounted"

    goto :goto_b0

    .line 891
    :cond_db
    const/4 v13, 0x4

    if-ne v7, v13, :cond_e8

    .line 892
    const-string v8, "mounted"

    .line 893
    const-string v13, "MountService"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 894
    :cond_e8
    const/4 v13, 0x7

    if-ne v7, v13, :cond_f5

    .line 895
    const-string v8, "shared"

    .line 896
    const-string v13, "MountService"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 899
    :cond_f5
    const/16 v13, 0x9

    if-ne v7, v13, :cond_103

    .line 900
    const-string v8, "checking"

    .line 901
    const-string v13, "MountService"

    const-string v14, "Media at hidden mount state"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 904
    :cond_103
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_11a} :catch_86
.end method
