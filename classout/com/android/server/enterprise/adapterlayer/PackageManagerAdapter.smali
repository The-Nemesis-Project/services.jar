.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# instance fields
.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private final mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 110
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 122
    const-class v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_1c

    .line 123
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 125
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 129
    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .registers 7
    .param p0, "packageURI"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 529
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 531
    .local v2, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v4, "sourceFile":Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 533
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 534
    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 536
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_20

    .line 537
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    .line 541
    :cond_20
    const/4 v2, 0x0

    .line 542
    return-object v3
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p0, :cond_4

    .line 118
    :cond_3
    :goto_3
    return-object v1

    .line 114
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 115
    :catch_10
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public clearApplicationCacheFiles(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    if-eqz p1, :cond_2c

    .line 150
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .line 152
    .local v0, "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :try_start_d
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v0}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 154
    monitor-enter v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_32

    .line 155
    :goto_13
    :try_start_13
    iget-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_2f

    if-nez v3, :cond_1d

    .line 157
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f

    goto :goto_13

    .line 158
    :catch_1b
    move-exception v3

    goto :goto_13

    .line 161
    :cond_1d
    const/4 v3, 0x1

    :try_start_1e
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2d

    iget-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 163
    const/4 v2, 0x1

    .line 167
    :goto_2b
    monitor-exit v0

    .line 173
    .end local v0    # "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :cond_2c
    :goto_2c
    return v2

    .line 165
    .restart local v0    # "clearCacheObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    :cond_2d
    const/4 v2, 0x0

    goto :goto_2b

    .line 167
    :catchall_2f
    move-exception v3

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    .line 168
    :catch_32
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 170
    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 194
    .local v2, "success":Z
    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .line 195
    .local v1, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v1, p2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 196
    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_1e

    .line 197
    :goto_d
    :try_start_d
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1b

    if-nez v3, :cond_17

    .line 199
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_1b

    goto :goto_d

    .line 200
    :catch_15
    move-exception v3

    goto :goto_d

    .line 203
    :cond_17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1b

    .line 204
    :try_start_18
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1a} :catch_1e

    .line 209
    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :goto_1a
    return v2

    .line 203
    .restart local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :catchall_1b
    move-exception v3

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 205
    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :catch_1e
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public clearUserData(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v4, 0x0

    .line 249
    .local v4, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    if-eqz p1, :cond_35

    .line 251
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .line 253
    .local v1, "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :try_start_d
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 255
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    .line 256
    .local v3, "res":Z
    if-nez v3, :cond_36

    .line 259
    const-string v5, "PackageManagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t clear application user data for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .end local v3    # "res":Z
    :cond_35
    :goto_35
    return v4

    .line 261
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .restart local v3    # "res":Z
    :cond_36
    monitor-enter v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_54

    .line 262
    :goto_37
    :try_start_37
    iget-boolean v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_51

    if-nez v5, :cond_41

    .line 264
    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_51

    goto :goto_37

    .line 265
    :catch_3f
    move-exception v5

    goto :goto_37

    .line 268
    :cond_41
    const/4 v5, 0x1

    :try_start_42
    iget-boolean v6, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_60

    iget-object v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 270
    const/4 v4, 0x1

    .line 274
    :goto_4f
    monitor-exit v1

    goto :goto_35

    :catchall_51
    move-exception v5

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_51

    :try_start_53
    throw v5
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_54

    .line 276
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "res":Z
    :catch_54
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 278
    const-string v5, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "res":Z
    :cond_60
    const/4 v4, 0x0

    goto :goto_4f
.end method

.method public clearUserData(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    if-eqz p1, :cond_2f

    .line 216
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    .line 218
    .local v0, "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v2

    .line 219
    .local v2, "res":Z
    if-nez v2, :cond_30

    .line 222
    const-string v4, "PackageManagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v0    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .end local v2    # "res":Z
    :cond_2f
    :goto_2f
    return v3

    .line 224
    .restart local v0    # "clearDataObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
    .restart local v2    # "res":Z
    :cond_30
    monitor-enter v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_31} :catch_4e

    .line 225
    :goto_31
    :try_start_31
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_4b

    if-nez v4, :cond_3b

    .line 227
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_4b

    goto :goto_31

    .line 228
    :catch_39
    move-exception v4

    goto :goto_31

    .line 231
    :cond_3b
    const/4 v4, 0x1

    :try_start_3c
    iget-boolean v5, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v4, v5, :cond_5a

    iget-object v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 233
    const/4 v3, 0x1

    .line 237
    :goto_49
    monitor-exit v0

    goto :goto_2f

    :catchall_4b
    move-exception v4

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v4
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 239
    .end local v2    # "res":Z
    :catch_4e
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 241
    const-string v4, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":Z
    :cond_5a
    const/4 v3, 0x0

    goto :goto_49
.end method

.method public deletePackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uninstallFlags"    # I

    .prologue
    .line 371
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 373
    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 375
    monitor-enter v0

    .line 376
    :goto_f
    :try_start_f
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1d

    if-nez v1, :cond_19

    .line 378
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    goto :goto_f

    .line 379
    :catch_17
    move-exception v1

    goto :goto_f

    .line 382
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1d

    .line 384
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    return v1

    .line 382
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public deletePackageAsUser(Ljava/lang/String;II)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 351
    .local v2, "result":Z
    :try_start_1
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 353
    .local v1, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v1, p2, p3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 354
    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_1d

    .line 355
    :goto_c
    :try_start_c
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_1a

    if-nez v3, :cond_16

    .line 357
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    goto :goto_c

    .line 358
    :catch_14
    move-exception v3

    goto :goto_c

    .line 361
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1a

    .line 362
    :try_start_17
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_19} :catch_1d

    .line 366
    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    :goto_19
    return v2

    .line 361
    .restart local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1d} :catch_1d

    .line 363
    .end local v1    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;
    :catch_1d
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/appwidget/AppWidgetProviderInfo;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const-string v4, "appwidget"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .line 823
    .local v0, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v0, :cond_18

    .line 824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 825
    .local v2, "token":J
    invoke-interface {v0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 826
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    .end local v2    # "token":J
    :cond_18
    return-object v1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 487
    const/4 v1, 0x0

    .line 489
    .local v1, "result":I
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 493
    :goto_7
    return v1

    .line 490
    :catch_8
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 483
    :goto_7
    return-object v0

    .line 480
    :catch_8
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUri"    # Landroid/net/Uri;

    .prologue
    .line 428
    new-instance v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;-><init>()V

    .line 430
    .local v4, "pkg":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    if-eqz p2, :cond_5b

    .line 432
    :try_start_7
    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 433
    .local v6, "pkgInst":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_37

    if-eqz v6, :cond_37

    .line 434
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 435
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_1b

    .line 436
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 438
    :cond_1b
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_37

    .line 439
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_23
    if-ge v2, v3, :cond_33

    aget-object v7, v0, v2

    .line 440
    .local v7, "sig":Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 442
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_33
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signaturesArray:[Landroid/content/pm/Signature;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    .line 473
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "pkgInst":Landroid/content/pm/PackageParser$Package;
    :cond_37
    :goto_37
    return-object v4

    .line 445
    :catch_38
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5b
    if-nez p1, :cond_99

    const-string p1, ""

    .line 451
    :goto_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_37

    .line 453
    :try_start_65
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 455
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_37

    .line 456
    iput-object p1, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 457
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_81

    .line 458
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 460
    :cond_81
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_37

    .line 461
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_89
    if-ge v2, v3, :cond_37

    aget-object v7, v0, v2

    .line 462
    .restart local v7    # "sig":Landroid/content/pm/Signature;
    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_96} :catch_9e

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 450
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    .line 466
    :catch_9e
    move-exception v1

    .line 467
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method public getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "pkgst":Landroid/content/pm/PackageStats;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 658
    if-eqz p1, :cond_2e

    .line 659
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 660
    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 662
    .local v2, "token":J
    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 663
    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_32

    .line 664
    :goto_1a
    :try_start_1a
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_2f

    if-nez v4, :cond_24

    .line 666
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    goto :goto_1a

    .line 667
    :catch_22
    move-exception v4

    goto :goto_1a

    .line 670
    :cond_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_2f

    .line 672
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2e

    .line 674
    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 678
    .end local v0    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .end local v2    # "token":J
    :cond_2e
    return-object v1

    .line 670
    .restart local v0    # "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .restart local v2    # "token":J
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 672
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 673
    iget-boolean v5, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_3c

    .line 674
    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    .line 672
    :cond_3c
    throw v4
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .registers 6
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 510
    .local v1, "result":I
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 514
    :goto_7
    return v1

    .line 511
    :catch_8
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .registers 7
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 405
    .local v0, "appinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result-object v0

    .line 411
    :goto_c
    return-object v0

    .line 407
    :catch_d
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 409
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public getInstalledWidgetProviders(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v5, "providerInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const-string v6, "appwidget"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    .line 803
    .local v0, "aws":Lcom/android/internal/appwidget/IAppWidgetService;
    if-eqz v0, :cond_3d

    .line 804
    const/4 v6, 0x1

    invoke-interface {v0, v6, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v3

    .line 805
    .local v3, "installedProvidersHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/16 v6, 0x100

    invoke-interface {v0, v6, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v1

    .line 806
    .local v1, "installedProvidersEasyHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/16 v6, 0x200

    invoke-interface {v0, v6, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v2

    .line 807
    .local v2, "installedProvidersFavoriteWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/16 v6, 0x400

    invoke-interface {v0, v6, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v4

    .line 808
    .local v4, "installedProvidersMagazineWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v3, :cond_2d

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 809
    :cond_2d
    if-eqz v1, :cond_32

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 810
    :cond_32
    if-eqz v2, :cond_37

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 811
    :cond_37
    if-eqz v4, :cond_3c

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 815
    .end local v1    # "installedProvidersEasyHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v2    # "installedProvidersFavoriteWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v3    # "installedProvidersHomeScreen":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v4    # "installedProvidersMagazineWidget":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_3c
    :goto_3c
    return-object v5

    .line 813
    :cond_3d
    const/4 v5, 0x0

    goto :goto_3c
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 552
    :goto_7
    return-object v1

    .line 549
    :catch_8
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public getPackageSizeInfo(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "pkgst":Landroid/content/pm/PackageStats;
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 559
    .local v1, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :try_start_6
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 560
    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_21

    .line 561
    :goto_c
    :try_start_c
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_1e

    if-nez v3, :cond_16

    .line 563
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14
    .catchall {:try_start_10 .. :try_end_13} :catchall_1e

    goto :goto_c

    .line 564
    :catch_14
    move-exception v3

    goto :goto_c

    .line 567
    :cond_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1e

    .line 568
    :try_start_17
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v3, :cond_1d

    .line 569
    iget-object v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_21

    .line 575
    :cond_1d
    :goto_1d
    return-object v2

    .line 567
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_21

    .line 571
    :catch_21
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, "mpkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 837
    if-eqz p1, :cond_13

    .line 839
    :try_start_7
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_14

    move-result-object v1

    .line 845
    :cond_13
    :goto_13
    return-object v1

    .line 841
    :catch_14
    move-exception v0

    .line 842
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getProcessCpuUsage(I)J
    .registers 11
    .param p1, "pid"    # I

    .prologue
    const-wide/16 v5, 0x0

    .line 583
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 585
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    .line 586
    .local v0, "count":I
    const/4 v2, 0x0

    .line 587
    .local v2, "stat":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1b

    .line 588
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 589
    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v7, p1, :cond_1e

    .line 594
    :cond_1b
    if-nez v2, :cond_21

    .line 605
    :goto_1d
    return-wide v5

    .line 587
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 598
    :cond_21
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v3, v7

    .line 601
    .local v3, "totalCPUTime":J
    cmp-long v5, v3, v5

    if-nez v5, :cond_43

    .line 602
    const-wide/16 v3, 0x1

    .line 605
    :cond_43
    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    div-long/2addr v5, v3

    goto :goto_1d
.end method

.method public getTopCpuUsageProcesses(IZ)Ljava/util/List;
    .registers 16
    .param p1, "aAppCount"    # I
    .param p2, "bShowAllProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 611
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v2

    .line 613
    .local v2, "count":I
    if-lez p1, :cond_f

    if-ge v2, p1, :cond_10

    .line 614
    :cond_f
    move p1, v2

    .line 617
    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v9, v11

    .line 622
    .local v9, "totalCPUTime":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_39

    .line 623
    const-wide/16 v9, 0x1

    .line 626
    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v1, "appPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p2, :cond_68

    .line 628
    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 630
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 632
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 633
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 637
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_68
    const/4 v8, 0x0

    .line 639
    .local v8, "stat":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6a
    if-ge v3, p1, :cond_9d

    .line 640
    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v11, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v8

    .line 642
    if-eqz v8, :cond_9a

    if-nez p2, :cond_82

    iget v11, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 643
    :cond_82
    new-instance v5, Landroid/app/enterprise/AppInfo;

    invoke-direct {v5}, Landroid/app/enterprise/AppInfo;-><init>()V

    .line 644
    .local v5, "info":Landroid/app/enterprise/AppInfo;
    iget-object v11, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iput-object v11, v5, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    .line 645
    iget v11, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v12, v8, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x64

    int-to-long v11, v11

    div-long/2addr v11, v9

    long-to-double v11, v11

    iput-wide v11, v5, Landroid/app/enterprise/AppInfo;->mUsage:D

    .line 646
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v5    # "info":Landroid/app/enterprise/AppInfo;
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 649
    :cond_9d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a4

    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :goto_a3
    return-object v7

    .restart local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AppInfo;>;"
    :cond_a4
    const/4 v7, 0x0

    goto :goto_a3
.end method

.method public initProcessStats()V
    .registers 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 580
    return-void
.end method

.method public installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 884
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installPackage(Ljava/io/File;I)Ljava/lang/String;
    .registers 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "installFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 300
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 301
    .local v0, "obs":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2, v1}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 303
    monitor-enter v0

    .line 304
    :goto_14
    :try_start_14
    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->finished:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_29

    if-nez v2, :cond_1e

    .line 306
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_29

    goto :goto_14

    .line 307
    :catch_1c
    move-exception v2

    goto :goto_14

    .line 310
    :cond_1e
    :try_start_1e
    iget v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 311
    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->pkgName:Ljava/lang/String;

    monitor-exit v0

    .line 313
    :goto_26
    return-object v1

    :cond_27
    monitor-exit v0

    goto :goto_26

    .line 315
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;I)V
    .registers 8
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "icb"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;
    .param p3, "installFlags"    # I

    .prologue
    .line 338
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 346
    return-void
.end method

.method public isBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1d

    .line 854
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 856
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1d

    .line 857
    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x1

    .line 862
    :goto_1c
    return v0

    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    goto :goto_1c
.end method

.method public readAppSizeInfo()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    const-string v11, "PackageManagerAdapter"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 762
    .local v3, "lPkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v6, "lStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 765
    .local v9, "token":J
    :try_start_1b
    new-instance v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 766
    .local v5, "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 767
    .local v2, "lPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 768
    .local v4, "lPkgName":Ljava/lang/String;
    if-eqz v4, :cond_24

    .line 769
    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 770
    monitor-enter v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_69
    .catchall {:try_start_1b .. :try_end_3e} :catchall_81

    .line 771
    :goto_3e
    :try_start_3e
    iget-boolean v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_7e

    if-nez v11, :cond_48

    .line 773
    :try_start_42
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_7e

    goto :goto_3e

    .line 774
    :catch_46
    move-exception v11

    goto :goto_3e

    .line 777
    :cond_48
    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_7e

    .line 778
    :try_start_49
    iget-boolean v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_24

    .line 779
    iget-object v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_24

    .line 780
    iget-object v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    .line 784
    .local v7, "lTotalSize":J
    new-instance v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    invoke-direct {v11, v4, v7, v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_68} :catch_69
    .catchall {:try_start_49 .. :try_end_68} :catchall_81

    goto :goto_24

    .line 789
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lPkgName":Ljava/lang/String;
    .end local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    .end local v7    # "lTotalSize":J
    :catch_69
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    const-string v11, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_81

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_73
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 795
    const-string v11, "PackageManagerAdapter"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    return-object v6

    .line 777
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "lPkgName":Ljava/lang/String;
    .restart local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :catchall_7e
    move-exception v11

    :try_start_7f
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v11
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_69
    .catchall {:try_start_80 .. :try_end_81} :catchall_81

    .line 792
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lPkgInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "lPkgName":Ljava/lang/String;
    .end local v5    # "lPkgSizeObserver":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;
    :catchall_81
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 880
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    .registers 14
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v7, 0x1

    .line 500
    .local v7, "result":Z
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 504
    :goto_b
    return v7

    .line 501
    :catch_c
    move-exception v6

    .line 502
    .local v6, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_b
.end method

.method public setBackupEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1c

    .line 867
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    .line 869
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1c

    .line 870
    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :goto_1b
    return-void

    .line 875
    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    goto :goto_1b
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    .registers 8
    .param p1, "appComponentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    .line 519
    const/4 v1, 0x1

    .line 521
    .local v1, "result":Z
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    .line 525
    :goto_6
    return v1

    .line 522
    :catch_7
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setLicensePermissions(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 849
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 887
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
