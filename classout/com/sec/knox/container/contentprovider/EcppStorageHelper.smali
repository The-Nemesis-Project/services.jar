.class public Lcom/sec/knox/container/contentprovider/EcppStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EcppStorageHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EcppStorageHelper"

.field private static db:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstance:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    .line 69
    sput-object v0, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mEcppDbErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 91
    const-string v2, "/data/system/container/databases/ecpp.enterprise.db"

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 92
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public static getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereCond"    # Ljava/lang/String;

    .prologue
    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 591
    .local v0, "cnt":I
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "sql":Ljava/lang/String;
    if-eqz p2, :cond_2e

    .line 593
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 596
    :cond_2e
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 598
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 599
    const-string v4, "EcppStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCount("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Condition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_6d
    .catchall {:try_start_2 .. :try_end_67} :catchall_78

    .line 603
    if-eqz v1, :cond_6c

    .line 604
    .end local v3    # "sql":Ljava/lang/String;
    :goto_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_6c
    return v0

    .line 600
    :catch_6d
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v4, "EcppStorageHelper"

    const-string v5, "getCount() failed"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_78

    .line 603
    if-eqz v1, :cond_6c

    goto :goto_69

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v4

    if-eqz v1, :cond_7e

    .line 604
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_7e
    throw v4
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/EcppStorageHelper;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mEcppDbErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 72
    const-class v3, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_47

    if-nez v2, :cond_25

    .line 74
    :try_start_7
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/container/databases/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "ecppDatabasePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 76
    const-string v2, "EcppStorageHelper"

    const-string v4, "Creating ecpp database directory"

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_29
    .catchall {:try_start_7 .. :try_end_1e} :catchall_47

    .line 82
    .end local v0    # "ecppDatabasePath":Ljava/io/File;
    :cond_1e
    :goto_1e
    :try_start_1e
    new-instance v2, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-direct {v2, p0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v2, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    .line 84
    :cond_25
    sget-object v2, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->mInstance:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_47

    monitor-exit v3

    return-object v2

    .line 79
    :catch_29
    move-exception v1

    .line 80
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2a
    const-string v2, "EcppStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ecpp database directory exception. "

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

    .line 72
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_47
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "exists":Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 325
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_2b} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_30

    .line 326
    const/4 v1, 0x1

    .line 333
    :cond_2c
    :goto_2c
    return v1

    .line 327
    :catch_2d
    move-exception v0

    .line 328
    .local v0, "e":Landroid/database/SQLException;
    const/4 v1, 0x0

    .line 331
    goto :goto_2c

    .line 329
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_30
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2c
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "whereClase"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 504
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 506
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_17

    move-result v3

    if-lez v3, :cond_d

    const/4 v2, 0x1

    .line 512
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_d
    :goto_d
    return v2

    .line 507
    :catch_e
    move-exception v1

    .line 508
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "EcppStorageHelper"

    const-string v4, "could not execute delete() "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 509
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_17
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EcppStorageHelper"

    const-string v4, "could not execute delete()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 480
    const/4 v8, 0x0

    .line 481
    .local v8, "where":Ljava/lang/String;
    const/4 v1, 0x0

    .line 482
    .local v1, "buf":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_7

    if-nez p3, :cond_14

    .line 483
    :cond_7
    const/4 p3, 0x0

    .line 491
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 493
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, p1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_13

    .line 494
    const/4 v9, 0x1

    .line 499
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_13
    :goto_13
    return v9

    .line 485
    :cond_14
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_46

    .line 486
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .local v2, "buf":Ljava/lang/StringBuffer;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_1a
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1c
    if-ge v6, v7, :cond_39

    aget-object v3, v0, v6

    .line 487
    .local v3, "column":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 489
    .end local v3    # "column":Ljava/lang/String;
    :cond_39
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_43} :catch_4f

    move-result-object v8

    move-object v1, v2

    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    goto :goto_8

    .line 496
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_46
    move-exception v5

    .line 497
    .local v5, "e":Ljava/lang/Exception;
    :goto_47
    const-string v10, "EcppStorageHelper"

    const-string v11, "could not execute deleteDataByFields"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 496
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "buf":Ljava/lang/StringBuffer;
    :catch_4f
    move-exception v5

    move-object v1, v2

    .end local v2    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    goto :goto_47
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 26
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "ReturnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 376
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v16, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 378
    .local v14, "count":I
    const/4 v5, 0x0

    .line 379
    .local v5, "where":Ljava/lang/String;
    const/4 v11, 0x0

    .line 380
    .local v11, "buf":Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 383
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_11

    if-nez p3, :cond_56

    .line 384
    :cond_11
    const/16 p3, 0x0

    .line 393
    :goto_13
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    :try_start_1c
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 394
    if-eqz v15, :cond_a8

    .line 395
    :goto_22
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 396
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_34
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_90

    .line 398
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    add-int/lit8 v18, v18, 0x1

    goto :goto_34

    .line 386
    .end local v18    # "i":I
    :cond_56
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5b} :catch_93
    .catchall {:try_start_1c .. :try_end_5b} :catchall_a1

    .line 387
    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .local v12, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v10, p2

    .local v10, "arr$":[Ljava/lang/String;
    :try_start_5d
    array-length v0, v10

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_62
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_83

    aget-object v13, v10, v19

    .line 388
    .local v13, "column":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v19, v19, 0x1

    goto :goto_62

    .line 390
    .end local v13    # "column":Ljava/lang/String;
    :cond_83
    const/4 v3, 0x0

    const-string v4, " AND "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8d} :catch_ae
    .catchall {:try_start_5d .. :try_end_8d} :catchall_ab

    move-result-object v5

    move-object v11, v12

    .end local v12    # "buf":Ljava/lang/StringBuffer;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    goto :goto_13

    .line 400
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .restart local v18    # "i":I
    :cond_90
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 403
    .end local v18    # "i":I
    :catch_93
    move-exception v17

    .line 404
    .local v17, "e":Ljava/lang/Exception;
    :goto_94
    :try_start_94
    const-string v3, "EcppStorageHelper"

    const-string v4, "could not execute getDataByFields"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_a1

    .line 406
    if-eqz v15, :cond_a0

    .line 407
    .end local v17    # "e":Ljava/lang/Exception;
    :goto_9d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_a0
    return-object v16

    .line 406
    :catchall_a1
    move-exception v3

    :goto_a2
    if-eqz v15, :cond_a7

    .line 407
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_a7
    throw v3

    :cond_a8
    if-eqz v15, :cond_a0

    goto :goto_9d

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v12    # "buf":Ljava/lang/StringBuffer;
    :catchall_ab
    move-exception v3

    move-object v11, v12

    .end local v12    # "buf":Ljava/lang/StringBuffer;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    goto :goto_a2

    .line 403
    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v12    # "buf":Ljava/lang/StringBuffer;
    :catch_ae
    move-exception v17

    move-object v11, v12

    .end local v12    # "buf":Ljava/lang/StringBuffer;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    goto :goto_94
.end method

.method insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 13
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sContentValues"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 343
    const-string v3, "EcppStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOrUpdate(): sTableName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 346
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p3, :cond_3c

    .line 347
    invoke-virtual {v0, p1, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_33

    .line 348
    const-string v2, "EcppStorageHelper"

    const-string v3, "insertOrUpdate(): Inserted successfully"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_32
    return v1

    .line 351
    :cond_33
    const-string v1, "EcppStorageHelper"

    const-string v3, "insertOrUpdate(): Insert() some problem happend"

    invoke-static {v1, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 352
    goto :goto_32

    .line 354
    :cond_3c
    invoke-virtual {v0, p1, p2, p3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_62

    .line 355
    const-string v2, "EcppStorageHelper"

    const-string v3, "insertOrUpdate(): DB updated successfully!!"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "EcppStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updating: where: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 358
    :cond_62
    invoke-virtual {v0, p1, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_72

    .line 359
    const-string v2, "EcppStorageHelper"

    const-string v3, "insertOrUpdate(): Inserted DB successfully"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 362
    :cond_72
    const-string v1, "EcppStorageHelper"

    const-string v3, "insertOrUpdate(): some problem happend"

    invoke-static {v1, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 363
    goto :goto_32
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 97
    const-string v1, "EcppStorageHelper"

    const-string v2, "onCreate ContainerPasswordPolicy-DPM db"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_7
    const-string v1, "CREATE TABLE PASSWORD_POLICY( passwordContainerID INTEGER NOT NULL, componentName TEXT NOT NULL, passwordMinimumLength INTEGER UNSIGNED DEFAULT 0, passwordMinimumLetters INTEGER UNSIGNED DEFAULT 1, passwordMinimumLowerCase INTEGER UNSIGNED DEFAULT 0, passwordMinimumNonLetter INTEGER UNSIGNED DEFAULT 0, passwordMinimumNumeric INTEGER UNSIGNED DEFAULT 1, passwordMinimumUpperCase INTEGER UNSIGNED DEFAULT 0, passwordMinimumSymbols INTEGER UNSIGNED DEFAULT 1, passwordQuality INTEGER UNSIGNED DEFAULT 0, passwordVisible INTEGER UNSIGNED DEFAULT 0, passwordHistory INTEGER UNSIGNED DEFAULT 0, passwordExpirationDate INTEGER UNSIGNED DEFAULT 0, maximumFailedPasswordsForWipe INTEGER UNSIGNED DEFAULT 0, allowWifi INTEGER UNSIGNED DEFAULT 1, allowTextMessaging INTEGER UNSIGNED DEFAULT 1, allowInternetSharing INTEGER UNSIGNED DEFAULT 1, allowBluetoothMode INTEGER UNSIGNED DEFAULT 2, allowDesktopSync INTEGER UNSIGNED DEFAULT 1, allowIrDA INTEGER UNSIGNED DEFAULT 1, allowStorageCard INTEGER UNSIGNED DEFAULT 1, allowPOPIMAPEmail INTEGER UNSIGNED DEFAULT 1, maximumTimeToLockPassword INTEGER UNSIGNED DEFAULT 0, maximumTimeToUnmount INTEGER UNSIGNED DEFAULT 0, passwordExpirationTimeout INTEGER UNSIGNED DEFAULT 0, allowCamera INTEGER UNSIGNED DEFAULT 1, allowBrowser INTEGER UNSIGNED DEFAULT 1, allowSimplePassword INTEGER UNSIGNED DEFAULT 1, maximumFailedPasswordsForDisable INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_31

    .line 139
    :goto_c
    :try_start_c
    const-string v1, "CREATE TABLE PASSWORD_HISTORY( _index INTEGER PRIMARY KEY AUTOINCREMENT, containerID INTEGER NOT NULL, oldPasswordHashValue BLOB NOT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_11} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_65

    .line 151
    :goto_11
    :try_start_11
    const-string v1, "CREATE TABLE ACTIVE_PASSWORD_STATE( containerid INTEGER NOT NULL, quality INTEGER UNSIGNED DEFAULT 0, length INTEGER UNSIGNED DEFAULT 0, uppercase INTEGER UNSIGNED DEFAULT 0, lowercase INTEGER UNSIGNED DEFAULT 0, letters INTEGER UNSIGNED DEFAULT 0, numeric INTEGER UNSIGNED DEFAULT 0, nonletters INTEGER UNSIGNED DEFAULT 0, symbols INTEGER UNSIGNED DEFAULT 0, simplepassword INTEGER UNSIGNED DEFAULT 0, charactersequencelength INTEGER UNSIGNED DEFAULT 0, digitsequencelength INTEGER UNSIGNED DEFAULT 0, MaximumCharacteroccurrences INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_16} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_9a

    .line 172
    :goto_16
    return-void

    .line 132
    :catch_17
    move-exception v0

    .line 133
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_POLICYcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 134
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_31
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_POLICYcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4b
    move-exception v0

    .line 146
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_HISTORYcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 147
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_65
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_HISTORYcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7f
    move-exception v0

    .line 168
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVE_PASSWORD_STATEcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 169
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_9a
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVE_PASSWORD_STATEcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 318
    const-string v0, "EcppStorageHelper"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 176
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade ContainerPasswordPolicy-DPM DB Helper from version "

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

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x2

    if-ge p2, v1, :cond_39

    .line 180
    :try_start_25
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordMinimumSymbols INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordHistory INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordExpirationDate INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumFailedPasswordsForWipe INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    :cond_39
    const/4 v1, 0x3

    if-ge p2, v1, :cond_64

    .line 198
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowWifi INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowTextMessaging INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowInternetSharing INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowBluetoothMode INTEGER UNSIGNED DEFAULT 2; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowDesktopSync INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 218
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowIrDA INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowStorageCard INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowPOPIMAPEmail INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    :cond_64
    const/4 v1, 0x4

    if-ge p2, v1, :cond_71

    .line 232
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumTimeToLockPassword INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN passwordExpirationTimeout INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    :cond_71
    const/4 v1, 0x5

    if-ge p2, v1, :cond_83

    .line 242
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowCamera INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN allowBrowser INTEGER UNSIGNED DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7e
    .catch Landroid/database/SQLException; {:try_start_25 .. :try_end_7e} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7e} :catch_fa

    .line 251
    :try_start_7e
    const-string v1, "CREATE TABLE PASSWORD_HISTORY( _index INTEGER PRIMARY KEY AUTOINCREMENT, containerID INTEGER NOT NULL, oldPasswordHashValue BLOB NOT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_83
    .catch Landroid/database/SQLException; {:try_start_7e .. :try_end_83} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_e0

    .line 263
    :cond_83
    :goto_83
    const/4 v1, 0x6

    if-ge p2, v1, :cond_9a

    .line 265
    :try_start_86
    const-string v1, "CREATE TABLE IF NOT EXISTS ACTIVE_PASSWORD_STATE( containerid INTEGER NOT NULL, quality INTEGER UNSIGNED DEFAULT 0, length INTEGER UNSIGNED DEFAULT 0, uppercase INTEGER UNSIGNED DEFAULT 0, lowercase INTEGER UNSIGNED DEFAULT 0, letters INTEGER UNSIGNED DEFAULT 0, numeric INTEGER UNSIGNED DEFAULT 0, nonletters INTEGER UNSIGNED DEFAULT 0, symbols INTEGER UNSIGNED DEFAULT 0, simplepassword INTEGER UNSIGNED DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v1, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN charactersequencelength INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    const-string v1, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN digitsequencelength INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v1, "ALTER TABLE ACTIVE_PASSWORD_STATE ADD COLUMN MaximumCharacteroccurrences INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/database/SQLException; {:try_start_86 .. :try_end_9a} :catch_114
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9a} :catch_12f

    .line 297
    :cond_9a
    :goto_9a
    const/4 v1, 0x7

    if-ge p2, v1, :cond_a2

    .line 298
    :try_start_9d
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumFailedPasswordsForDisable INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    :cond_a2
    const/16 v1, 0x8

    if-ge p2, v1, :cond_ab

    .line 304
    const-string v1, "ALTER TABLE PASSWORD_POLICY ADD COLUMN maximumTimeToUnmount INTEGER UNSIGNED DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    :cond_ab
    :goto_ab
    return-void

    .line 257
    :catch_ac
    move-exception v0

    .line 258
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_HISTORY upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Landroid/database/SQLException; {:try_start_9d .. :try_end_c5} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_c5} :catch_fa

    goto :goto_83

    .line 310
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_c6
    move-exception v0

    .line 311
    .restart local v0    # "e":Landroid/database/SQLException;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_POLICY upgrade failed  SQLException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 259
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_e0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_e1
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_HISTORY upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catch Landroid/database/SQLException; {:try_start_e1 .. :try_end_f9} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f9} :catch_fa

    goto :goto_83

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_fa
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORD_POLICY upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_114
    move-exception v0

    .line 292
    .local v0, "e":Landroid/database/SQLException;
    :try_start_115
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVE_PASSWORD_STATEupgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 293
    .end local v0    # "e":Landroid/database/SQLException;
    :catch_12f
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVE_PASSWORD_STATEupgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Landroid/database/SQLException; {:try_start_115 .. :try_end_148} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_148} :catch_fa

    goto/16 :goto_9a
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 560
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 561
    .local v3, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4, v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_19
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 567
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 568
    if-eqz v0, :cond_37

    .line 569
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_34

    .line 570
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v4, v0

    .line 582
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_33
    return-object v4

    .line 573
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_3c

    .line 581
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_37
    :goto_37
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 582
    const/4 v4, 0x0

    goto :goto_33

    .line 575
    :catch_3c
    move-exception v2

    .line 577
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_37

    .line 578
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_37
.end method

.method remove(Ljava/lang/String;)Z
    .registers 5
    .param p1, "sTableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 521
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 522
    .local v1, "result":Z
    invoke-virtual {v0, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_d

    .line 523
    const/4 v1, 0x1

    .line 525
    :cond_d
    return v1
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "columnResult"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 424
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 425
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    .line 428
    .local v2, "columns":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 432
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_45

    .line 433
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    move-result-object v9

    .line 437
    :goto_36
    if-eqz v9, :cond_53

    .line 438
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_50

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_50

    .line 446
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_44
    return-object v9

    .line 435
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_45
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_36

    .line 441
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_55

    .line 446
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_53
    :goto_53
    const/4 v9, 0x0

    goto :goto_44

    .line 443
    :catch_55
    move-exception v10

    .line 444
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    const-string v5, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-static {v1, v5}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnsToSelect"    # [Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 458
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 459
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 460
    if-eqz v9, :cond_23

    .line 461
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_20

    .line 469
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_1f
    return-object v9

    .line 464
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_20
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_25

    .line 469
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_23
    :goto_23
    const/4 v9, 0x0

    goto :goto_1f

    .line 466
    :catch_25
    move-exception v10

    .line 467
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in select(String tableName, String[] columnsToSelect String whereClause): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .registers 12
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "toBeUpdated"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/HashMap",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 530
    .local p3, "whereParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual {p0}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 532
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 533
    .local v5, "where":Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 534
    .local v6, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 535
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 537
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 539
    .local v2, "i":I
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 540
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, "columnAndOperator":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 543
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 544
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 547
    .end local v0    # "columnAndOperator":Ljava/lang/String;
    :cond_3d
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p1, p2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method
