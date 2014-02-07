.class public Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContainerStorageHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "ContainerStorageHelper"

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mEcppDbErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 46
    const-string v2, "/data/system/container/databases/container.db"

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 47
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Created container DB Helper with version 8"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mEcppDbErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 25
    const-class v3, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_47

    if-nez v2, :cond_25

    .line 27
    :try_start_7
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/container/databases/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "containerDatabasePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 29
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v4, "Creating container database directory"

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_29
    .catchall {:try_start_7 .. :try_end_1e} :catchall_47

    .line 35
    .end local v0    # "containerDatabasePath":Ljava/io/File;
    :cond_1e
    :goto_1e
    :try_start_1e
    new-instance v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    invoke-direct {v2, p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    .line 37
    :cond_25
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_47

    monitor-exit v3

    return-object v2

    .line 32
    :catch_29
    move-exception v1

    .line 33
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2a
    sget-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create container database directory exception. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_47

    goto :goto_1e

    .line 25
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_47
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 52
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate container DB Helper"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableContainerAssociatedPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableContainerActive:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableCertificateManager:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate container DB Helper end"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVer"    # I
    .param p3, "newVer"    # I

    .prologue
    .line 67
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade container DB Helper from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x2

    if-ge p2, v1, :cond_2a

    .line 69
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActive:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    :cond_2a
    const/4 v1, 0x5

    if-ge p2, v1, :cond_41

    .line 72
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActivePassExpired:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    :try_start_32
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActiveAdminUid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_37} :catch_60

    .line 81
    :goto_37
    :try_start_37
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerLockType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_69

    .line 87
    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_41} :catch_72

    .line 92
    :cond_41
    :goto_41
    const/4 v1, 0x6

    if-ge p2, v1, :cond_4e

    .line 93
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableContainerActiveFailedPassAttemps:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->createTableCertificateManager:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    :cond_4e
    const/4 v1, 0x7

    if-ge p2, v1, :cond_56

    .line 98
    :try_start_51
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableScreenlock:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_56} :catch_7b

    .line 103
    :cond_56
    :goto_56
    const/16 v1, 0x8

    if-ge p2, v1, :cond_5f

    .line 105
    :try_start_5a
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->upgradeTableFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5f} :catch_84

    .line 110
    :cond_5f
    :goto_5f
    return-void

    .line 76
    :catch_60
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: AdminUid field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 82
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_69
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 88
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_72
    move-exception v0

    .line 89
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7b
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Screenlock field was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 106
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_84
    move-exception v0

    .line 107
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v2, "onUpgrade: Firmware version was already created"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method
