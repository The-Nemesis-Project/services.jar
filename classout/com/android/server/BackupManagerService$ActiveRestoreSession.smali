.class Lcom/android/server/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 6189
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 6185
    iput-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 6186
    iput-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 6187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 6190
    iput-object p2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 6191
    # invokes: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {p1, p3}, Lcom/android/server/BackupManagerService;->access$100(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 6192
    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 6181
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 6181
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BackupManagerService$ActiveRestoreSession;
    .param p1, "x1"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 6181
    iput-object p1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    .prologue
    .line 6450
    monitor-enter p0

    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6452
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v0, :cond_17

    .line 6453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 6450
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 6456
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_14

    .line 6457
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .registers 12
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v4, -0x1

    .line 6196
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.BACKUP"

    const-string v7, "getAvailableRestoreSets"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6198
    if-nez p1, :cond_1c

    .line 6199
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_19

    .line 6196
    :catchall_19
    move-exception v4

    monitor-exit p0

    throw v4

    .line 6202
    :cond_1c
    :try_start_1c
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v5, :cond_28

    .line 6203
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6206
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_19

    move-result-wide v2

    .line 6208
    .local v2, "oldId":J
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_3c

    .line 6209
    const-string v5, "RestoreSession"

    const-string v6, "Null transport getting restore sets"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_61
    .catchall {:try_start_2c .. :try_end_37} :catchall_6d

    .line 6222
    :try_start_37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_19

    .line 6220
    :goto_3a
    monitor-exit p0

    return v4

    .line 6213
    :cond_3c
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6214
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    iget-object v8, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v7, v8, v9, p0, p1}, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 6216
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5c} :catch_61
    .catchall {:try_start_3c .. :try_end_5c} :catchall_6d

    .line 6217
    const/4 v4, 0x0

    .line 6222
    :try_start_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_19

    goto :goto_3a

    .line 6218
    .end local v1    # "msg":Landroid/os/Message;
    :catch_61
    move-exception v0

    .line 6219
    .local v0, "e":Ljava/lang/Exception;
    :try_start_62
    const-string v5, "RestoreSession"

    const-string v6, "Error in getAvailableRestoreSets"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_6d

    .line 6222
    :try_start_69
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_19
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .registers 19
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 6227
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    const-string v3, "performRestore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6230
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAll token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " observer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6233
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v1, :cond_45

    .line 6234
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_42

    .line 6227
    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6237
    :cond_45
    :try_start_45
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v1, :cond_57

    .line 6238
    :cond_4d
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_42

    .line 6239
    const/4 v1, -0x1

    .line 6272
    :goto_55
    monitor-exit p0

    return v1

    .line 6242
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_64

    .line 6243
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_42

    .line 6244
    const/4 v1, -0x1

    goto :goto_55

    .line 6249
    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_69} :catch_b3
    .catchall {:try_start_64 .. :try_end_69} :catchall_42

    move-result-object v4

    .line 6256
    .local v4, "dirName":Ljava/lang/String;
    :try_start_6a
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v14, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_42

    .line 6257
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_70
    :try_start_70
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v1, v1

    if-ge v10, v1, :cond_c0

    .line 6258
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v1, v1, v10

    iget-wide v1, v1, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_bd

    .line 6259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 6260
    .local v12, "oldId":J
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6261
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 6262
    .local v11, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v8, 0x1

    move-object/from16 v5, p3

    move-wide/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JZ)V

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6264
    iget-object v1, p0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6265
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6266
    const/4 v1, 0x0

    monitor-exit v14

    goto :goto_55

    .line 6269
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "oldId":J
    :catchall_b0
    move-exception v1

    monitor-exit v14
    :try_end_b2
    .catchall {:try_start_70 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v1

    .line 6250
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v10    # "i":I
    :catch_b3
    move-exception v9

    .line 6252
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreSession"

    const-string v2, "Unable to contact transport for restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_42

    .line 6253
    const/4 v1, -0x1

    goto :goto_55

    .line 6257
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v4    # "dirName":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_bd
    add-int/lit8 v10, v10, 0x1

    goto :goto_70

    .line 6269
    :cond_c0
    :try_start_c0
    monitor-exit v14
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_b0

    .line 6271
    :try_start_c1
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_c1 .. :try_end_e3} :catchall_42

    .line 6272
    const/4 v1, -0x1

    goto/16 :goto_55
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 6346
    monitor-enter p0

    :try_start_1
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePackage pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " obs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6348
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v1, :cond_38

    .line 6349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_35

    .line 6346
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6352
    :cond_38
    :try_start_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_75

    .line 6353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 6354
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring attempt to restore pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on session for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_38 .. :try_end_72} :catchall_35

    .line 6356
    const/4 v1, -0x1

    .line 6415
    :goto_73
    monitor-exit p0

    return v1

    .line 6360
    :cond_75
    const/4 v8, 0x0

    .line 6362
    .local v8, "app":Landroid/content/pm/PackageInfo;
    :try_start_76
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_84} :catch_da
    .catchall {:try_start_76 .. :try_end_84} :catchall_35

    move-result-object v8

    .line 6370
    :try_start_85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    .line 6372
    .local v16, "perm":I
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_f8

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eq v1, v2, :cond_f8

    .line 6374
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePackage: bad packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or calling uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6376
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No permission to restore other packages"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6363
    .end local v16    # "perm":I
    :catch_da
    move-exception v13

    .line 6364
    .local v13, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to restore nonexistent pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6365
    const/4 v1, -0x1

    goto/16 :goto_73

    .line 6380
    .end local v13    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "perm":I
    :cond_f8
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v1, :cond_121

    .line 6381
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to restore package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with no agent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6382
    const/4 v1, -0x1

    goto/16 :goto_73

    .line 6388
    :cond_121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    .line 6393
    .local v6, "token":J
    const-wide/16 v1, 0x0

    cmp-long v1, v6, v1

    if-nez v1, :cond_13b

    .line 6394
    const-string v1, "RestoreSession"

    const-string v2, "No data available for this package; not restoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_85 .. :try_end_138} :catchall_35

    .line 6395
    const/4 v1, -0x1

    goto/16 :goto_73

    .line 6400
    :cond_13b
    :try_start_13b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_13b .. :try_end_142} :catch_17d
    .catchall {:try_start_13b .. :try_end_142} :catchall_35

    move-result-object v4

    .line 6408
    .local v4, "dirName":Ljava/lang/String;
    :try_start_143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 6409
    .local v14, "oldId":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 6411
    .local v12, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v1, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v12}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6414
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6415
    const/4 v1, 0x0

    goto/16 :goto_73

    .line 6401
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v14    # "oldId":J
    :catch_17d
    move-exception v11

    .line 6403
    .local v11, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreSession"

    const-string v2, "Unable to contact transport for restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_143 .. :try_end_185} :catchall_35

    .line 6404
    const/4 v1, -0x1

    goto/16 :goto_73
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .registers 27
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    .line 6277
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    # getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BackupManagerService;->access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.BACKUP"

    const-string v3, "performRestore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6281
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6282
    .local v11, "b":Ljava/lang/StringBuilder;
    const-string v1, "restoreSome token="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6283
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6284
    const-string v1, " observer="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6285
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6286
    const-string v1, " packages="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6287
    if-nez p4, :cond_55

    .line 6288
    const-string v1, "null"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6300
    :goto_3b
    const-string v1, "RestoreSession"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6303
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    if-eqz v1, :cond_7e

    .line 6304
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_52

    .line 6277
    .end local v11    # "b":Ljava/lang/StringBuilder;
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1

    .line 6290
    .restart local v11    # "b":Ljava/lang/StringBuilder;
    :cond_55
    const/16 v1, 0x7b

    :try_start_57
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6291
    const/4 v13, 0x1

    .line 6292
    .local v13, "first":Z
    move-object/from16 v10, p4

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_61
    move/from16 v0, v16

    if-ge v15, v0, :cond_78

    aget-object v20, v10, v15

    .line 6293
    .local v20, "s":Ljava/lang/String;
    if-nez v13, :cond_76

    .line 6294
    const-string v1, ", "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6296
    :goto_6e
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6292
    add-int/lit8 v15, v15, 0x1

    goto :goto_61

    .line 6295
    :cond_76
    const/4 v13, 0x0

    goto :goto_6e

    .line 6298
    .end local v20    # "s":Ljava/lang/String;
    :cond_78
    const/16 v1, 0x7d

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 6307
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v13    # "first":Z
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_7e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_8a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v1, :cond_94

    .line 6308
    :cond_8a
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_57 .. :try_end_91} :catchall_52

    .line 6309
    const/4 v1, -0x1

    .line 6342
    :goto_92
    monitor-exit p0

    return v1

    .line 6312
    :cond_94
    :try_start_94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_a3

    .line 6313
    const-string v1, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_52

    .line 6314
    const/4 v1, -0x1

    goto :goto_92

    .line 6319
    :cond_a3
    :try_start_a3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_aa} :catch_10c
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_52

    move-result-object v4

    .line 6326
    .local v4, "dirName":Ljava/lang/String;
    :try_start_ab
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v0, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_52

    .line 6327
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_b5
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v1, v1

    if-ge v14, v1, :cond_11a

    .line 6328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v1, v1, v14

    iget-wide v1, v1, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_117

    .line 6329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 6330
    .local v18, "oldId":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 6332
    .local v17, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v9, 0x1

    move-object/from16 v5, p3

    move-wide/from16 v6, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    move-object/from16 v0, v17

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6335
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6336
    const/4 v1, 0x0

    monitor-exit v21

    goto :goto_92

    .line 6339
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "oldId":J
    :catchall_109
    move-exception v1

    monitor-exit v21
    :try_end_10b
    .catchall {:try_start_b5 .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v1

    .line 6320
    .end local v4    # "dirName":Ljava/lang/String;
    .end local v14    # "i":I
    :catch_10c
    move-exception v12

    .line 6322
    .local v12, "e":Landroid/os/RemoteException;
    const-string v1, "RestoreSession"

    const-string v2, "Unable to contact transport for restore"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_10b .. :try_end_114} :catchall_52

    .line 6323
    const/4 v1, -0x1

    goto/16 :goto_92

    .line 6327
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v4    # "dirName":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_117
    add-int/lit8 v14, v14, 0x1

    goto :goto_b5

    .line 6339
    :cond_11a
    :try_start_11a
    monitor-exit v21
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_109

    .line 6341
    :try_start_11b
    const-string v1, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_11b .. :try_end_13d} :catchall_52

    .line 6342
    const/4 v1, -0x1

    goto/16 :goto_92
.end method
