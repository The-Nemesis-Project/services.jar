.class public Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
.super Ljava/lang/Object;
.source "EdmIntegrityStorageHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "EdmIntegrityStorageHelper"

.field static mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper; = null

.field static final mTAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 56
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_b

    const/4 v0, 0x0

    :cond_b
    sput-boolean v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 74
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const-class v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    if-nez v0, :cond_e

    .line 63
    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;

    .line 65
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearFingerPrint(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pISAName"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "EDM"

    const-string v3, "clearFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, v2, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 119
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE EnterpriseIslFpTable SET fpCurrent = NULL ,fpDirty=0 , fpNewRow=0 WHERE isaPackageName = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adminUid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_49} :catch_4b

    .line 125
    const/4 v2, 0x1

    .line 130
    :goto_4a
    return v2

    .line 127
    :catch_4b
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_68

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTableclearFingerPrint failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_68
    const/4 v2, 0x0

    goto :goto_4a
.end method

.method public commitFingerPrint(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pISAName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 82
    sget-boolean v3, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "EDM"

    const-string v4, "commitFingerPrint...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_c
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, v3, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE EnterpriseIslFpTable SET fpBaseLined = fpCurrent WHERE isaPackageName = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fpDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fpDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM EnterpriseIslFpTable WHERE isaPackageName = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'  AND  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fpDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_b9} :catch_ba

    .line 105
    :goto_b9
    return v2

    .line 102
    :catch_ba
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_d7

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTablebaselineFingerPrint commit failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_d7
    const/4 v2, 0x0

    goto :goto_b9
.end method

.method public final getAdminISAMapFromDB(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .registers 18
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "ReturnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    sget-boolean v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "EDM"

    const-string v2, "getAdminISAMapFromDB...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v14, "islMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 325
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_24
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 326
    if-eqz v11, :cond_94

    .line 327
    :goto_2a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 328
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 329
    .local v10, "admin":I
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "isaName":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v1, "EdmIntegrityStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retreived Admin id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " For ISA = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6f} :catch_70
    .catchall {:try_start_24 .. :try_end_6f} :catchall_8d

    goto :goto_2a

    .line 335
    .end local v10    # "admin":I
    .end local v13    # "isaName":Ljava/lang/String;
    :catch_70
    move-exception v12

    .line 336
    .local v12, "e":Ljava/lang/Exception;
    :try_start_71
    sget-boolean v1, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v1, :cond_7c

    const-string v1, "EdmIntegrityStorageHelper"

    const-string v2, "could not execute getAdminISAMapFromDB"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_8d

    .line 338
    :cond_7c
    if-eqz v11, :cond_81

    .line 339
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_7e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_81
    const/4 v1, 0x0

    :cond_82
    :goto_82
    return-object v1

    .line 333
    :cond_83
    :try_start_83
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_70
    .catchall {:try_start_83 .. :try_end_86} :catchall_8d

    move-result-object v1

    .line 338
    if-eqz v11, :cond_82

    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_82

    .line 338
    :catchall_8d
    move-exception v1

    if-eqz v11, :cond_93

    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_93
    throw v1

    :cond_94
    if-eqz v11, :cond_81

    goto :goto_7e
.end method

.method public getPackageListfromDB(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 25
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "ReturnColumn"    # [Ljava/lang/String;
    .param p3, "sColumns"    # [Ljava/lang/String;
    .param p4, "sValues"    # [Ljava/lang/String;
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "EDM"

    const-string v3, "getPackageListfromDB...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, v2, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 355
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v18, "packNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 357
    .local v4, "where":Ljava/lang/String;
    const-string v17, " AND packageName NOT IN ( \'prebaseLine\' , \'system\' )"

    .line 358
    .local v17, "notIn":Ljava/lang/String;
    const/4 v10, 0x0

    .line 359
    .local v10, "buf":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 361
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz p3, :cond_23

    if-nez p4, :cond_77

    .line 362
    :cond_23
    const/16 p4, 0x0

    .line 371
    :goto_25
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    :try_start_2e
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 372
    if-eqz v13, :cond_c2

    .line 373
    :goto_34
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 374
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 375
    .local v19, "pkg":Ljava/lang/String;
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getPackageListfromDB retreived Package Name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_62} :catch_63
    .catchall {:try_start_2e .. :try_end_62} :catchall_b5

    goto :goto_34

    .line 380
    .end local v19    # "pkg":Ljava/lang/String;
    :catch_63
    move-exception v14

    .line 381
    .local v14, "e":Ljava/lang/Exception;
    :goto_64
    :try_start_64
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_6f

    const-string v2, "EdmIntegrityStorageHelper"

    const-string v3, "could not execute getPackageListfromDB"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_b5

    .line 383
    :cond_6f
    if-eqz v13, :cond_74

    .line 384
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_71
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_74
    const/16 v18, 0x0

    .end local v18    # "packNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_76
    :goto_76
    return-object v18

    .line 364
    .restart local v18    # "packNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_77
    :try_start_77
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7c} :catch_63
    .catchall {:try_start_77 .. :try_end_7c} :catchall_b5

    .line 365
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    .local v11, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v9, p3

    .local v9, "arr$":[Ljava/lang/String;
    :try_start_7e
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_82
    move/from16 v0, v16

    if-ge v15, v0, :cond_a1

    aget-object v12, v9, v15

    .line 366
    .local v12, "column":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    add-int/lit8 v15, v15, 0x1

    goto :goto_82

    .line 368
    .end local v12    # "column":Ljava/lang/String;
    :cond_a1
    const/4 v2, 0x0

    const-string v3, " AND "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 369
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b1} :catch_c8
    .catchall {:try_start_7e .. :try_end_b1} :catchall_c5

    move-result-object v4

    move-object v10, v11

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    goto/16 :goto_25

    .line 383
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :catchall_b5
    move-exception v2

    :goto_b6
    if-eqz v13, :cond_bb

    .line 384
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_bb
    throw v2

    :cond_bc
    if-eqz v13, :cond_76

    .line 384
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_76

    .line 383
    :cond_c2
    if-eqz v13, :cond_74

    goto :goto_71

    .end local v10    # "buf":Ljava/lang/StringBuffer;
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    :catchall_c5
    move-exception v2

    move-object v10, v11

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    goto :goto_b6

    .line 380
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    :catch_c8
    move-exception v14

    move-object v10, v11

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    goto :goto_64
.end method

.method readFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[B
    .registers 22
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "ReturnColumns"    # [Ljava/lang/String;

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, v2, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 175
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_15

    const-string v2, "EDM"

    const-string v3, "readFingerPrint...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_15
    const/4 v4, 0x0

    .line 177
    .local v4, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .line 178
    .local v10, "buf":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 180
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_1c

    if-nez p3, :cond_44

    .line 181
    :cond_1c
    const/16 p3, 0x0

    .line 189
    :goto_1e
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v5, p3

    :try_start_27
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 191
    if-eqz v13, :cond_95

    .line 192
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 193
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_7b
    .catchall {:try_start_27 .. :try_end_3d} :catchall_8e

    move-result-object v2

    .line 200
    if-eqz v13, :cond_43

    .line 201
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_43
    :goto_43
    return-object v2

    .line 183
    :cond_44
    :try_start_44
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_7b
    .catchall {:try_start_44 .. :try_end_49} :catchall_8e

    .line 184
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    .local v11, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v9, p2

    .local v9, "arr$":[Ljava/lang/String;
    :try_start_4b
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_4f
    move/from16 v0, v16

    if-ge v15, v0, :cond_6e

    aget-object v12, v9, v15

    .line 185
    .local v12, "column":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v15, v15, 0x1

    goto :goto_4f

    .line 187
    .end local v12    # "column":Ljava/lang/String;
    :cond_6e
    const/4 v2, 0x0

    const-string v3, " AND "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_78} :catch_9b
    .catchall {:try_start_4b .. :try_end_78} :catchall_98

    move-result-object v4

    move-object v10, v11

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    goto :goto_1e

    .line 197
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :catch_7b
    move-exception v14

    .line 198
    .local v14, "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_87

    const-string v2, "EdmIntegrityStorageHelper"

    const-string v3, "could not execute readFingerPrint"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_8e

    .line 200
    :cond_87
    if-eqz v13, :cond_8c

    .line 201
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_89
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_8c
    const/4 v2, 0x0

    goto :goto_43

    .line 200
    :catchall_8e
    move-exception v2

    :goto_8f
    if-eqz v13, :cond_94

    .line 201
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_94
    throw v2

    :cond_95
    if-eqz v13, :cond_8c

    goto :goto_89

    .end local v10    # "buf":Ljava/lang/StringBuffer;
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    :catchall_98
    move-exception v2

    move-object v10, v11

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    goto :goto_8f

    .line 197
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    :catch_9b
    move-exception v14

    move-object v10, v11

    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v10    # "buf":Ljava/lang/StringBuffer;
    goto :goto_7c
.end method

.method public rollbackFingerPrint(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pISAName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 139
    sget-boolean v3, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "EDM"

    const-string v4, "rollbackFingerPrint...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_c
    iget-object v3, p0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, v3, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM EnterpriseIslFpTable WHERE isaPackageName = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fpNewRow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE EnterpriseIslFpTable SET fpCurrent = NULL ,fpDirty = 0,fpNewRow=0 WHERE isaPackageName = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_91} :catch_92

    .line 162
    :goto_91
    return v2

    .line 159
    :catch_92
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v2, :cond_af

    const-string v2, "EdmIntegrityStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnterpriseIslFpTableclearFingerPrint failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_af
    const/4 v2, 0x0

    goto :goto_91
.end method

.method updateFingerPrint(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 25
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 269
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 270
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "fpDirty"

    aput-object v18, v15, v17

    .line 271
    .local v15, "sReturnColumns":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 275
    .local v10, "dirty_flag":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 276
    .local v7, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_64

    .line 277
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_50

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 278
    .local v8, "cvflag":Landroid/content/ContentValues;
    const-string v17, "fpDirty"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 279
    .local v12, "flag":Ljava/lang/Integer;
    if-eqz v12, :cond_35

    .line 280
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_35

    .line 285
    .end local v8    # "cvflag":Landroid/content/ContentValues;
    .end local v12    # "flag":Ljava/lang/Integer;
    :cond_50
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_64

    .line 287
    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_61

    const-string v17, "EdmIntegrityStorageHelper"

    const-string v18, "Trying to update a Item marked for delete"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_61
    const/16 v17, 0x0

    .line 310
    .end local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "dirty_flag":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "sReturnColumns":[Ljava/lang/String;
    :goto_63
    return v17

    .line 292
    .restart local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "dirty_flag":I
    .restart local v15    # "sReturnColumns":[Ljava/lang/String;
    :cond_64
    if-eqz p2, :cond_d9

    if-eqz p3, :cond_d9

    .line 293
    const/16 v16, 0x0

    .line 294
    .local v16, "where":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v5, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v4, p2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_73
    if-ge v13, v14, :cond_94

    aget-object v6, v4, v13

    .line 296
    .local v6, "column":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "= ? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    add-int/lit8 v13, v13, 0x1

    goto :goto_73

    .line 298
    .end local v6    # "column":Ljava/lang/String;
    :cond_94
    const/16 v17, 0x0

    const-string v18, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 299
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    move-object/from16 v3, p3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b1} :catch_ba

    move-result v17

    if-lez v17, :cond_b7

    .line 300
    const/16 v17, 0x1

    goto :goto_63

    .line 303
    :cond_b7
    const/16 v17, 0x0

    goto :goto_63

    .line 306
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "buf":Ljava/lang/StringBuffer;
    .end local v7    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "dirty_flag":I
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "sReturnColumns":[Ljava/lang/String;
    .end local v16    # "where":Ljava/lang/String;
    :catch_ba
    move-exception v11

    .line 307
    .local v11, "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_d9

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not execute updateFingerPrint"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_d9
    const/16 v17, 0x0

    goto :goto_63
.end method

.method writeFingerPrint(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 24
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 214
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 217
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    aput-object v18, v13, v17

    const/16 v17, 0x1

    const-string v18, "packageName"

    aput-object v18, v13, v17

    const/16 v17, 0x2

    const-string v18, "isaPackageName"

    aput-object v18, v13, v17

    .line 218
    .local v13, "sColumns":[Ljava/lang/String;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x1

    const-string v18, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    const/16 v17, 0x2

    const-string v18, "isaPackageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v17

    .line 220
    .local v15, "sValues":[Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "fpDirty"

    aput-object v18, v14, v17

    .line 221
    .local v14, "sReturnColumns":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 222
    .local v16, "where":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v4, "buf":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 225
    .local v9, "dirty_flag":I
    move-object v3, v13

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_6f
    if-ge v11, v12, :cond_90

    aget-object v5, v3, v11

    .line 226
    .local v5, "column":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "= ? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 228
    .end local v5    # "column":Ljava/lang/String;
    :cond_90
    const/16 v17, 0x0

    const-string v18, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v15, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 231
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_12d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_12d

    .line 232
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_bc
    :goto_bc
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_115

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 233
    .local v7, "cvflag":Landroid/content/ContentValues;
    const-string v17, "fpDirty"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 234
    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_bc

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Trying to update a Item marked "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f2} :catch_f3

    goto :goto_bc

    .line 256
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "cvflag":Landroid/content/ContentValues;
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "dirty_flag":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "len$":I
    .end local v13    # "sColumns":[Ljava/lang/String;
    .end local v14    # "sReturnColumns":[Ljava/lang/String;
    .end local v15    # "sValues":[Ljava/lang/String;
    .end local v16    # "where":Ljava/lang/String;
    :catch_f3
    move-exception v10

    .line 257
    .local v10, "e":Ljava/lang/Exception;
    sget-boolean v17, Lcom/android/server/enterprise/storage/EdmIntegrityStorageHelper;->DBG:Z

    if-eqz v17, :cond_112

    const-string v17, "EdmIntegrityStorageHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "could not execute writeFingerPrint"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_112
    const/16 v17, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_114
    return v17

    .line 238
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "buf":Ljava/lang/StringBuffer;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "dirty_flag":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "len$":I
    .restart local v13    # "sColumns":[Ljava/lang/String;
    .restart local v14    # "sReturnColumns":[Ljava/lang/String;
    .restart local v15    # "sValues":[Ljava/lang/String;
    .restart local v16    # "where":Ljava/lang/String;
    :cond_115
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v9, v0, :cond_12a

    .line 240
    :try_start_11b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_12d

    .line 241
    const/16 v17, 0x1

    goto :goto_114

    .line 244
    :cond_12a
    const/16 v17, 0x0

    goto :goto_114

    .line 249
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_12d
    const-string v17, "fpNewRow"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_149} :catch_f3

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_153

    .line 252
    const/16 v17, 0x1

    goto :goto_114

    .line 255
    :cond_153
    const/16 v17, 0x0

    goto :goto_114
.end method
