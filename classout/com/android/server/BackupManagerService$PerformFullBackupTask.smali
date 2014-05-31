.class Lcom/android/server/BackupManagerService$PerformFullBackupTask;
.super Lcom/android/server/BackupManagerService$ObbServiceClient;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformFullBackupTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    }
.end annotation


# instance fields
.field mAllApps:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mEncryptPassword:Ljava/lang/String;

.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field final mIncludeSystem:Z

.field mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mManifestFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZLjava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 16
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "curPassword"    # Ljava/lang/String;
    .param p8, "encryptPassword"    # Ljava/lang/String;
    .param p9, "doAllApps"    # Z
    .param p10, "doSystem"    # Z
    .param p11, "packages"    # [Ljava/lang/String;
    .param p12, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 2774
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$ObbServiceClient;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 2775
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 2776
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 2777
    iput-boolean p4, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    .line 2778
    iput-boolean p5, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeObbs:Z

    .line 2779
    iput-boolean p6, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    .line 2780
    iput-boolean p9, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    .line 2781
    iput-boolean p10, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    .line 2782
    iput-object p11, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .line 2783
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 2788
    if-eqz p8, :cond_21

    const-string v0, ""

    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2789
    :cond_21
    iput-object p7, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 2793
    :goto_23
    iput-object p12, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2795
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    .line 2796
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mFilesDir:Ljava/io/File;

    const-string v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mManifestFile:Ljava/io/File;

    .line 2797
    return-void

    .line 2791
    :cond_3a
    iput-object p8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_23
.end method

.method static synthetic access$1300(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2701
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$PerformFullBackupTask;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;
    .param p2, "x2"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    .line 2701
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method private backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V
    .registers 18
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3082
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to full backup agent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const/4 v4, 0x0

    .line 3086
    .local v4, "agent":Landroid/app/IBackupAgent;
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v2, :cond_f9

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mExceptionList:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f9

    .line 3088
    const-string v2, "BackupManagerService"

    const-string v3, "changing backup agent name to null for edm restore request"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10, v2}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 3090
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    iput-object v2, v10, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3091
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v10, v3}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    .line 3097
    .end local v10    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4b
    if-eqz v4, :cond_19d

    .line 3098
    const/4 v13, 0x0

    .line 3100
    .local v13, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_4e
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 3102
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3103
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.sharedstoragebackup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3104
    .local v12, "isSharedStorage":Z
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeApks:Z

    if-eqz v2, :cond_106

    if-nez v12, :cond_106

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-nez v2, :cond_106

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_79

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_106

    :cond_79
    const/4 v7, 0x1

    .line 3110
    .local v7, "sendApk":Z
    :goto_7a
    if-eqz v12, :cond_109

    const-string v2, "Shared storage"

    :goto_7e
    invoke-virtual {p0, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 3112
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v6

    .line 3113
    .local v6, "token":I
    new-instance v1, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;

    const/4 v2, 0x1

    aget-object v5, v13, v2

    if-nez v12, :cond_10f

    const/4 v8, 0x1

    :goto_8f
    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;-><init>(Lcom/android/server/BackupManagerService$PerformFullBackupTask;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ)V

    .line 3115
    .local v1, "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3116
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v13, v2

    .line 3117
    new-instance v14, Ljava/lang/Thread;

    invoke-direct {v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3118
    .local v14, "t":Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_a7} :catch_11b
    .catchall {:try_start_4e .. :try_end_a7} :catchall_180

    .line 3122
    :try_start_a7
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/BackupManagerService;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/BackupManagerService;->access$1200(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b1} :catch_112
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_180

    .line 3127
    :goto_b1
    :try_start_b1
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_162

    .line 3128
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full backup failed on package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_da} :catch_11b
    .catchall {:try_start_b1 .. :try_end_da} :catchall_180

    .line 3144
    :goto_da
    :try_start_da
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 3145
    if-eqz v13, :cond_f5

    .line 3146
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_ea

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3147
    :cond_ea
    const/4 v2, 0x1

    aget-object v2, v13, v2

    if-eqz v2, :cond_f5

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_f5} :catch_1c9

    .line 3159
    .end local v1    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isSharedStorage":Z
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "t":Ljava/lang/Thread;
    :cond_f5
    :goto_f5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 3160
    return-void

    .line 3094
    :cond_f9
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    goto/16 :goto_4b

    .line 3104
    .restart local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isSharedStorage":Z
    .restart local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_106
    const/4 v7, 0x0

    goto/16 :goto_7a

    .line 3110
    .restart local v7    # "sendApk":Z
    :cond_109
    :try_start_109
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_7e

    .line 3113
    .restart local v6    # "token":I
    :cond_10f
    const/4 v8, 0x0

    goto/16 :goto_8f

    .line 3123
    .restart local v1    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v14    # "t":Ljava/lang/Thread;
    :catch_112
    move-exception v11

    .line 3124
    .local v11, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Caught exception reading from agent"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_11a} :catch_11b
    .catchall {:try_start_109 .. :try_end_11a} :catchall_180

    goto :goto_b1

    .line 3136
    .end local v1    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "isSharedStorage":Z
    .end local v14    # "t":Ljava/lang/Thread;
    :catch_11b
    move-exception v11

    .line 3137
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_11c
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error backing up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3139
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z
    :try_end_13d
    .catchall {:try_start_11c .. :try_end_13d} :catchall_180

    .line 3144
    :try_start_13d
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 3145
    if-eqz v13, :cond_f5

    .line 3146
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_14d

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3147
    :cond_14d
    const/4 v2, 0x1

    aget-object v2, v13, v2

    if-eqz v2, :cond_f5

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_158} :catch_159

    goto :goto_f5

    .line 3149
    :catch_159
    move-exception v11

    .line 3150
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    :goto_15e
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    .line 3133
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v1    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v6    # "token":I
    .restart local v7    # "sendApk":Z
    .restart local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isSharedStorage":Z
    .restart local v14    # "t":Ljava/lang/Thread;
    :cond_162
    :try_start_162
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full package backup success: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_17e} :catch_11b
    .catchall {:try_start_162 .. :try_end_17e} :catchall_180

    goto/16 :goto_da

    .line 3142
    .end local v1    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isSharedStorage":Z
    .end local v14    # "t":Ljava/lang/Thread;
    :catchall_180
    move-exception v2

    .line 3144
    :try_start_181
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 3145
    if-eqz v13, :cond_19c

    .line 3146
    const/4 v3, 0x0

    aget-object v3, v13, v3

    if-eqz v3, :cond_191

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3147
    :cond_191
    const/4 v3, 0x1

    aget-object v3, v13, v3

    if-eqz v3, :cond_19c

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_19c} :catch_1c0

    .line 3142
    :cond_19c
    :goto_19c
    throw v2

    .line 3154
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_19d
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to full agent for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    goto/16 :goto_f5

    .line 3149
    .restart local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :catch_1c0
    move-exception v11

    .line 3150
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v5, "Error bringing down backup stack"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19c

    .line 3149
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v1    # "runner":Lcom/android/server/BackupManagerService$PerformFullBackupTask$FullBackupRunner;
    .restart local v6    # "token":I
    .restart local v7    # "sendApk":Z
    .restart local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isSharedStorage":Z
    .restart local v14    # "t":Ljava/lang/Thread;
    :catch_1c9
    move-exception v11

    .line 3150
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error bringing down backup stack"

    goto :goto_15e
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 23
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    # invokes: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v15

    .line 3013
    .local v15, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    # invokes: Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/BackupManagerService;->access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v16

    .line 3017
    .local v16, "userKey":Ljavax/crypto/SecretKey;
    const/16 v17, 0x20

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 3018
    .local v11, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v17 .. v17}, Lcom/android/server/BackupManagerService;->access$1700(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x200

    # invokes: Lcom/android/server/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v17 .. v18}, Lcom/android/server/BackupManagerService;->access$1500(Lcom/android/server/BackupManagerService;I)[B

    move-result-object v7

    .line 3022
    .local v7, "checksumSalt":[B
    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 3023
    .local v5, "c":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v17, "AES"

    move-object/from16 v0, v17

    invoke-direct {v10, v11, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3024
    .local v10, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3025
    new-instance v9, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 3028
    .local v9, "finalOutput":Ljava/io/OutputStream;
    const-string v17, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3029
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3037
    const/16 v17, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3038
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3041
    const-string v17, "AES/CBC/PKCS5Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 3042
    .local v13, "mkC":Ljavax/crypto/Cipher;
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3044
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 3045
    .local v3, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3046
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3058
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 3059
    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    .line 3060
    .local v12, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v18

    const/16 v19, 0x2710

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    # invokes: Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B
    invoke-static {v0, v1, v7, v2}, Lcom/android/server/BackupManagerService;->access$1900(Lcom/android/server/BackupManagerService;[B[BI)[B

    move-result-object v6

    .line 3063
    .local v6, "checksum":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    array-length v0, v3

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    array-length v0, v6

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3065
    .local v4, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3066
    .local v14, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3067
    invoke-virtual {v14, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 3068
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3069
    invoke-virtual {v14, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 3070
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3071
    invoke-virtual {v14, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 3072
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->flush()V

    .line 3073
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 3074
    .local v8, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/server/BackupManagerService;->access$1800(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3077
    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3192
    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    .line 3193
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 3197
    .end local v1    # "eof":[B
    :goto_7
    return-void

    .line 3194
    :catch_8
    move-exception v0

    .line 3195
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .registers 7
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 3239
    if-eqz p1, :cond_28

    .line 3240
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3241
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_28

    .line 3244
    :try_start_6
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3247
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_28

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_28

    .line 3250
    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/BackupManagerService;->access$1000(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_28} :catch_29

    .line 3259
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_28
    :goto_28
    return-void

    .line 3254
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_29
    move-exception v1

    .line 3255
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BackupManagerService"

    const-string v3, "Lost app trying to shut down"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    .registers 22
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    .line 3164
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3165
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 3166
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 3174
    new-instance v18, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3175
    .local v18, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v16, v1, v2

    .line 3176
    .local v16, "obbDir":Ljava/io/File;
    if-eqz v16, :cond_57

    .line 3178
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    .line 3179
    .local v17, "obbFiles":[Ljava/io/File;
    if-eqz v17, :cond_57

    .line 3180
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 3181
    .local v9, "obbDirName":Ljava/lang/String;
    move-object/from16 v12, v17

    .local v12, "arr$":[Ljava/io/File;
    array-length v14, v12

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_40
    if-ge v13, v14, :cond_57

    aget-object v15, v12, v13

    .line 3182
    .local v15, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "obb"

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 3181
    add-int/lit8 v13, v13, 0x1

    goto :goto_40

    .line 3187
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "obb":Ljava/io/File;
    .end local v17    # "obbFiles":[Ljava/io/File;
    :cond_57
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;Z)V
    .registers 14
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3212
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3213
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v6, Landroid/util/StringBuilderPrinter;

    invoke-direct {v6, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3215
    .local v6, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3216
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3217
    iget v8, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3218
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3220
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3221
    .local v3, "installerName":Ljava/lang/String;
    if-eqz v3, :cond_60

    .end local v3    # "installerName":Ljava/lang/String;
    :goto_39
    invoke-virtual {v6, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3223
    if-eqz p3, :cond_63

    const-string v8, "1"

    :goto_40
    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3224
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v8, :cond_66

    .line 3225
    const-string v8, "0"

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3233
    :cond_4c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3234
    .local v5, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 3235
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 3236
    return-void

    .line 3221
    .end local v5    # "outstream":Ljava/io/FileOutputStream;
    .restart local v3    # "installerName":Ljava/lang/String;
    :cond_60
    const-string v3, ""

    goto :goto_39

    .line 3223
    .end local v3    # "installerName":Ljava/lang/String;
    :cond_63
    const-string v8, "0"

    goto :goto_40

    .line 3227
    :cond_66
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3228
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_74
    if-ge v2, v4, :cond_4c

    aget-object v7, v0, v2

    .line 3229
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3228
    add-int/lit8 v2, v2, 0x1

    goto :goto_74
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 2801
    const-string v24, "BackupManagerService"

    const-string v25, "--- Performing full-dataset backup ---"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2804
    .local v21, "packagesToBackup":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v17, Lcom/android/server/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 2805
    .local v17, "obbConnection":Lcom/android/server/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 2807
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendStartBackup()V

    .line 2810
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mAllApps:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6b

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v24

    const/16 v25, 0x40

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v21

    .line 2814
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeSystem:Z

    move/from16 v24, v0

    if-nez v24, :cond_6b

    .line 2815
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_42
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_6b

    .line 2816
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PackageInfo;

    .line 2817
    .local v22, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_68

    .line 2818
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_42

    .line 2820
    :cond_68
    add-int/lit8 v14, v14, 0x1

    goto :goto_42

    .line 2829
    .end local v14    # "i":I
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10a

    .line 2830
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mPackages:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_7b
    move/from16 v0, v16

    if-ge v15, v0, :cond_10a

    aget-object v23, v5, v15

    .line 2831
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c8

    .line 2833
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    const/16 v25, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/BackupManagerService;->mEdmUserId:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_bc} :catch_bf

    .line 2830
    :goto_bc
    add-int/lit8 v15, v15, 0x1

    goto :goto_7b

    .line 2835
    :catch_bf
    move-exception v8

    .line 2836
    .local v8, "e":Landroid/os/RemoteException;
    const-string v24, "BackupManagerService"

    const-string v25, "Fail to obtain package\'s info for backup - mdm request"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 2840
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_c8
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v24

    const/16 v25, 0x40

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c8 .. :try_end_e5} :catch_e6

    goto :goto_bc

    .line 2842
    :catch_e6
    move-exception v8

    .line 2843
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown package "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", skipping"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 2852
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v23    # "pkgName":Ljava/lang/String;
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v24, v0

    if-nez v24, :cond_153

    .line 2853
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_119
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_153

    .line 2854
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PackageInfo;

    .line 2855
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    const v25, 0x8000

    and-int v24, v24, v25

    if-eqz v24, :cond_14a

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "com.android.sharedstoragebackup"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_150

    .line 2857
    :cond_14a
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_119

    .line 2859
    :cond_150
    add-int/lit8 v14, v14, 0x1

    goto :goto_119

    .line 2866
    .end local v14    # "i":I
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_153
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_154
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_18f

    .line 2867
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PackageInfo;

    .line 2868
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    const/16 v25, 0x2710

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_18c

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_18c

    .line 2873
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_154

    .line 2875
    :cond_18c
    add-int/lit8 v14, v14, 0x1

    goto :goto_154

    .line 2879
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_18f
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2880
    .local v19, "ofstream":Ljava/io/FileOutputStream;
    const/16 v20, 0x0

    .line 2882
    .local v20, "out":Ljava/io/OutputStream;
    const/16 v22, 0x0

    .line 2884
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_1a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_260

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_260

    const/4 v9, 0x1

    .line 2885
    .local v9, "encrypting":Z
    :goto_1bb
    const/4 v6, 0x1

    .line 2886
    .local v6, "compressing":Z
    move-object/from16 v10, v19

    .line 2890
    .local v10, "finalOutput":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v24, v0

    if-nez v24, :cond_263

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/BackupManagerService;->hasBackupPassword()Z

    move-result v24

    if-eqz v24, :cond_263

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x2710

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_263

    .line 2892
    const-string v24, "BackupManagerService"

    const-string v25, "Backup password mismatch; aborting"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1f3} :catch_337
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1f3} :catch_449
    .catchall {:try_start_1a6 .. :try_end_1f3} :catchall_53a

    .line 2988
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2990
    if-eqz v20, :cond_1fd

    :try_start_1fc
    throw v20

    .line 2991
    :cond_1fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_206} :catch_5d0

    .line 2995
    :goto_206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2996
    :try_start_213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 2997
    monitor-exit v25
    :try_end_223
    .catchall {:try_start_213 .. :try_end_223} :catchall_5b8

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2999
    :try_start_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 3001
    monitor-exit v25
    :try_end_243
    .catchall {:try_start_22a .. :try_end_243} :catchall_5bb

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 3003
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3004
    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    .end local v6    # "compressing":Z
    .end local v9    # "encrypting":Z
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    :goto_25c
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3007
    return-void

    .line 2884
    :cond_260
    const/4 v9, 0x0

    goto/16 :goto_1bb

    .line 2922
    .restart local v6    # "compressing":Z
    .restart local v9    # "encrypting":Z
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    :cond_263
    :try_start_263
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v24, 0x400

    move/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2924
    .local v13, "headerbuf":Ljava/lang/StringBuilder;
    const-string v24, "ANDROID BACKUP\n"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2926
    if-eqz v6, :cond_3ac

    const-string v24, "\n1\n"

    :goto_27e
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_283
    .catch Landroid/os/RemoteException; {:try_start_263 .. :try_end_283} :catch_337
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_283} :catch_449
    .catchall {:try_start_263 .. :try_end_283} :catchall_53a

    .line 2930
    if-eqz v9, :cond_3b0

    :try_start_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v24, v0

    if-nez v24, :cond_3b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    move/from16 v24, v0

    if-nez v24, :cond_3b0

    .line 2931
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_2a6} :catch_3ba
    .catch Landroid/os/RemoteException; {:try_start_285 .. :try_end_2a6} :catch_337
    .catchall {:try_start_285 .. :try_end_2a6} :catchall_53a

    move-result-object v10

    move-object v11, v10

    .line 2936
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .local v11, "finalOutput":Ljava/io/OutputStream;
    :goto_2a8
    :try_start_2a8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "UTF-8"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 2937
    .local v12, "header":[B
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 2940
    if-eqz v6, :cond_5e0

    .line 2941
    new-instance v7, Ljava/util/zip/Deflater;

    const/16 v24, 0x9

    move/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 2942
    .local v7, "deflater":Ljava/util/zip/Deflater;
    new-instance v10, Ljava/util/zip/DeflaterOutputStream;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-direct {v10, v11, v7, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2cb
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2cb} :catch_5dc
    .catch Landroid/os/RemoteException; {:try_start_2a8 .. :try_end_2cb} :catch_337
    .catchall {:try_start_2a8 .. :try_end_2cb} :catchall_53a

    .line 2945
    .end local v7    # "deflater":Ljava/util/zip/Deflater;
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    :goto_2cb
    move-object/from16 v20, v10

    .line 2956
    :try_start_2cd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeShared:Z

    move/from16 v24, v0
    :try_end_2d3
    .catch Landroid/os/RemoteException; {:try_start_2cd .. :try_end_2d3} :catch_337
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_2d3} :catch_449
    .catchall {:try_start_2cd .. :try_end_2d3} :catchall_53a

    if-eqz v24, :cond_2ea

    .line 2958
    :try_start_2d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v24 .. v24}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.android.sharedstoragebackup"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 2959
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2ea
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d5 .. :try_end_2ea} :catch_43f
    .catch Landroid/os/RemoteException; {:try_start_2d5 .. :try_end_2ea} :catch_337
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2ea} :catch_449
    .catchall {:try_start_2d5 .. :try_end_2ea} :catchall_53a

    .line 2966
    :cond_2ea
    :goto_2ea
    :try_start_2ea
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    .line 2967
    .local v4, "N":I
    const/4 v14, 0x0

    :goto_2ef
    if-ge v14, v4, :cond_4c6

    .line 2968
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    .line 2969
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->backupOnePackage(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)V

    .line 2973
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mIncludeObbs:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4c2

    .line 2974
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v18

    .line 2975
    .local v18, "obbOkay":Z
    if-nez v18, :cond_4c2

    .line 2976
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failure writing OBB stack for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_337
    .catch Landroid/os/RemoteException; {:try_start_2ea .. :try_end_337} :catch_337
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_337} :catch_449
    .catchall {:try_start_2ea .. :try_end_337} :catchall_53a

    .line 2983
    .end local v4    # "N":I
    .end local v6    # "compressing":Z
    .end local v9    # "encrypting":Z
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .end local v12    # "header":[B
    .end local v13    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v18    # "obbOkay":Z
    :catch_337
    move-exception v8

    .line 2984
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_338
    const-string v24, "BackupManagerService"

    const-string v25, "App died during full backup"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33f
    .catchall {:try_start_338 .. :try_end_33f} :catchall_53a

    .line 2988
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2990
    if-eqz v20, :cond_34b

    :try_start_348
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 2991
    :cond_34b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_354
    .catch Ljava/io/IOException; {:try_start_348 .. :try_end_354} :catch_5d6

    .line 2995
    :goto_354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2996
    :try_start_361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 2997
    monitor-exit v25
    :try_end_371
    .catchall {:try_start_361 .. :try_end_371} :catchall_5ac

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2999
    :try_start_378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 3001
    monitor-exit v25
    :try_end_391
    .catchall {:try_start_378 .. :try_end_391} :catchall_5af

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 3003
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3004
    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    goto/16 :goto_25c

    .line 2926
    .end local v8    # "e":Landroid/os/RemoteException;
    .restart local v6    # "compressing":Z
    .restart local v9    # "encrypting":Z
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_3ac
    :try_start_3ac
    const-string v24, "\n0\n"
    :try_end_3ae
    .catch Landroid/os/RemoteException; {:try_start_3ac .. :try_end_3ae} :catch_337
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3ae} :catch_449
    .catchall {:try_start_3ac .. :try_end_3ae} :catchall_53a

    goto/16 :goto_27e

    .line 2933
    :cond_3b0
    :try_start_3b0
    const-string v24, "none\n"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b7
    .catch Ljava/lang/Exception; {:try_start_3b0 .. :try_end_3b7} :catch_3ba
    .catch Landroid/os/RemoteException; {:try_start_3b0 .. :try_end_3b7} :catch_337
    .catchall {:try_start_3b0 .. :try_end_3b7} :catchall_53a

    move-object v11, v10

    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_2a8

    .line 2946
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    :catch_3ba
    move-exception v8

    .line 2948
    .local v8, "e":Ljava/lang/Exception;
    :goto_3bb
    :try_start_3bb
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to emit archive header"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z
    :try_end_3d4
    .catch Landroid/os/RemoteException; {:try_start_3bb .. :try_end_3d4} :catch_337
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3d4} :catch_449
    .catchall {:try_start_3bb .. :try_end_3d4} :catchall_53a

    .line 2988
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2990
    if-eqz v20, :cond_3de

    :try_start_3dd
    throw v20

    .line 2991
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e7
    .catch Ljava/io/IOException; {:try_start_3dd .. :try_end_3e7} :catch_5cd

    .line 2995
    :goto_3e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2996
    :try_start_3f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 2997
    monitor-exit v25
    :try_end_404
    .catchall {:try_start_3f4 .. :try_end_404} :catchall_5be

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2999
    :try_start_40b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 3001
    monitor-exit v25
    :try_end_424
    .catchall {:try_start_40b .. :try_end_424} :catchall_5c1

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 3003
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3004
    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    goto/16 :goto_25c

    .line 2960
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "header":[B
    :catch_43f
    move-exception v8

    .line 2961
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_440
    const-string v24, "BackupManagerService"

    const-string v25, "Unable to find shared-storage backup handler"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_447
    .catch Landroid/os/RemoteException; {:try_start_440 .. :try_end_447} :catch_337
    .catch Ljava/lang/Exception; {:try_start_440 .. :try_end_447} :catch_449
    .catchall {:try_start_440 .. :try_end_447} :catchall_53a

    goto/16 :goto_2ea

    .line 2985
    .end local v6    # "compressing":Z
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "encrypting":Z
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .end local v12    # "header":[B
    .end local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_449
    move-exception v8

    .line 2986
    .local v8, "e":Ljava/lang/Exception;
    :try_start_44a
    const-string v24, "BackupManagerService"

    const-string v25, "Internal exception during full backup"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_455
    .catchall {:try_start_44a .. :try_end_455} :catchall_53a

    .line 2988
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2990
    if-eqz v20, :cond_461

    :try_start_45e
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 2991
    :cond_461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46a
    .catch Ljava/io/IOException; {:try_start_45e .. :try_end_46a} :catch_5d3

    .line 2995
    :goto_46a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2996
    :try_start_477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 2997
    monitor-exit v25
    :try_end_487
    .catchall {:try_start_477 .. :try_end_487} :catchall_5b2

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2999
    :try_start_48e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 3001
    monitor-exit v25
    :try_end_4a7
    .catchall {:try_start_48e .. :try_end_4a7} :catchall_5b5

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 3003
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3004
    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    goto/16 :goto_25c

    .line 2967
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "N":I
    .restart local v6    # "compressing":Z
    .restart local v9    # "encrypting":Z
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "header":[B
    .restart local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_4c2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2ef

    .line 2982
    :cond_4c6
    :try_start_4c6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_4cd
    .catch Landroid/os/RemoteException; {:try_start_4c6 .. :try_end_4cd} :catch_337
    .catch Ljava/lang/Exception; {:try_start_4c6 .. :try_end_4cd} :catch_449
    .catchall {:try_start_4c6 .. :try_end_4cd} :catchall_53a

    .line 2988
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2990
    if-eqz v20, :cond_4d9

    :try_start_4d6
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 2991
    :cond_4d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e2
    .catch Ljava/io/IOException; {:try_start_4d6 .. :try_end_4e2} :catch_5ca

    .line 2995
    :goto_4e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2996
    :try_start_4ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    .line 2997
    monitor-exit v25
    :try_end_4ff
    .catchall {:try_start_4ef .. :try_end_4ff} :catchall_5c4

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2999
    :try_start_506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notifyAll()V

    .line 3001
    monitor-exit v25
    :try_end_51f
    .catchall {:try_start_506 .. :try_end_51f} :catchall_5c7

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 3003
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3004
    const-string v24, "BackupManagerService"

    const-string v25, "Full backup pass complete."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    goto/16 :goto_25c

    .line 2988
    .end local v4    # "N":I
    .end local v6    # "compressing":Z
    .end local v9    # "encrypting":Z
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .end local v12    # "header":[B
    .end local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_53a
    move-exception v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 2990
    if-eqz v20, :cond_547

    :try_start_544
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 2991
    :cond_547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_550
    .catch Ljava/io/IOException; {:try_start_544 .. :try_end_550} :catch_5d9

    .line 2995
    :goto_550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2996
    :try_start_55d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->clear()V

    .line 2997
    monitor-exit v25
    :try_end_56d
    .catchall {:try_start_55d .. :try_end_56d} :catchall_5a6

    .line 2998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2999
    :try_start_574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notifyAll()V

    .line 3001
    monitor-exit v25
    :try_end_589
    .catchall {:try_start_574 .. :try_end_589} :catchall_5a9

    .line 3002
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->sendEndBackup()V

    .line 3003
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3004
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2988
    throw v24

    .line 2997
    :catchall_5a6
    move-exception v24

    :try_start_5a7
    monitor-exit v25
    :try_end_5a8
    .catchall {:try_start_5a7 .. :try_end_5a8} :catchall_5a6

    throw v24

    .line 3001
    :catchall_5a9
    move-exception v24

    :try_start_5aa
    monitor-exit v25
    :try_end_5ab
    .catchall {:try_start_5aa .. :try_end_5ab} :catchall_5a9

    throw v24

    .line 2997
    .local v8, "e":Landroid/os/RemoteException;
    :catchall_5ac
    move-exception v24

    :try_start_5ad
    monitor-exit v25
    :try_end_5ae
    .catchall {:try_start_5ad .. :try_end_5ae} :catchall_5ac

    throw v24

    .line 3001
    :catchall_5af
    move-exception v24

    :try_start_5b0
    monitor-exit v25
    :try_end_5b1
    .catchall {:try_start_5b0 .. :try_end_5b1} :catchall_5af

    throw v24

    .line 2997
    .local v8, "e":Ljava/lang/Exception;
    :catchall_5b2
    move-exception v24

    :try_start_5b3
    monitor-exit v25
    :try_end_5b4
    .catchall {:try_start_5b3 .. :try_end_5b4} :catchall_5b2

    throw v24

    .line 3001
    :catchall_5b5
    move-exception v24

    :try_start_5b6
    monitor-exit v25
    :try_end_5b7
    .catchall {:try_start_5b6 .. :try_end_5b7} :catchall_5b5

    throw v24

    .line 2997
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "compressing":Z
    .restart local v9    # "encrypting":Z
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    :catchall_5b8
    move-exception v24

    :try_start_5b9
    monitor-exit v25
    :try_end_5ba
    .catchall {:try_start_5b9 .. :try_end_5ba} :catchall_5b8

    throw v24

    .line 3001
    :catchall_5bb
    move-exception v24

    :try_start_5bc
    monitor-exit v25
    :try_end_5bd
    .catchall {:try_start_5bc .. :try_end_5bd} :catchall_5bb

    throw v24

    .line 2997
    .restart local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_5be
    move-exception v24

    :try_start_5bf
    monitor-exit v25
    :try_end_5c0
    .catchall {:try_start_5bf .. :try_end_5c0} :catchall_5be

    throw v24

    .line 3001
    :catchall_5c1
    move-exception v24

    :try_start_5c2
    monitor-exit v25
    :try_end_5c3
    .catchall {:try_start_5c2 .. :try_end_5c3} :catchall_5c1

    throw v24

    .line 2997
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "N":I
    .restart local v12    # "header":[B
    :catchall_5c4
    move-exception v24

    :try_start_5c5
    monitor-exit v25
    :try_end_5c6
    .catchall {:try_start_5c5 .. :try_end_5c6} :catchall_5c4

    throw v24

    .line 3001
    :catchall_5c7
    move-exception v24

    :try_start_5c8
    monitor-exit v25
    :try_end_5c9
    .catchall {:try_start_5c8 .. :try_end_5c9} :catchall_5c7

    throw v24

    .line 2992
    :catch_5ca
    move-exception v24

    goto/16 :goto_4e2

    .end local v4    # "N":I
    .end local v12    # "header":[B
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_5cd
    move-exception v24

    goto/16 :goto_3e7

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_5d0
    move-exception v24

    goto/16 :goto_206

    .end local v6    # "compressing":Z
    .end local v9    # "encrypting":Z
    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_5d3
    move-exception v24

    goto/16 :goto_46a

    .local v8, "e":Landroid/os/RemoteException;
    :catch_5d6
    move-exception v24

    goto/16 :goto_354

    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_5d9
    move-exception v25

    goto/16 :goto_550

    .line 2946
    .restart local v6    # "compressing":Z
    .restart local v9    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_5dc
    move-exception v8

    move-object v10, v11

    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_3bb

    .end local v10    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "header":[B
    :cond_5e0
    move-object v10, v11

    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v10    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_2cb
.end method

.method sendEndBackup()V
    .registers 4

    .prologue
    .line 3286
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 3288
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3294
    :cond_9
    :goto_9
    return-void

    .line 3289
    :catch_a
    move-exception v0

    .line 3290
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendOnBackupPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3274
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 3277
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3283
    :cond_9
    :goto_9
    return-void

    .line 3278
    :catch_a
    move-exception v0

    .line 3279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method sendStartBackup()V
    .registers 4

    .prologue
    .line 3263
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 3265
    :try_start_4
    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3271
    :cond_9
    :goto_9
    return-void

    .line 3266
    :catch_a
    move-exception v0

    .line 3267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method
