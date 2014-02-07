.class public Lcom/android/server/enterprise/storage/EdmStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EdmStorageHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "enterprise.db"

.field public static final DATABASE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "EdmStorageHelper"

.field static mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper; = null

.field private static final mTAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v0, "enterprise.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 97
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 3
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 4
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    const/4 v3, 0x0

    .line 443
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 445
    :try_start_4
    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 446
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_1f

    const-string v4, "containerID"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 447
    const-string v4, "EdmStorageHelper"

    const-string v5, "Generic Table is already updated."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_e9
    .catchall {:try_start_4 .. :try_end_1b} :catchall_109

    .line 466
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 469
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_1e
    return v3

    .line 451
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1f
    :try_start_1f
    const-string v3, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "temp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SELECT *,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_e3} :catch_e9
    .catchall {:try_start_1f .. :try_end_e3} :catchall_109

    .line 466
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "temp":Ljava/lang/String;
    :goto_e3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 469
    const/4 v3, 0x1

    goto/16 :goto_1e

    .line 463
    :catch_e9
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ea
    const-string v3, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " upgrade EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catchall {:try_start_ea .. :try_end_108} :catchall_109

    goto :goto_e3

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_109
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .registers 11
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 2295
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 2296
    .local v3, "hasContainerId":Z
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 2297
    .local v2, "hasAdminId":Z
    const/4 v1, -0x1

    .line 2298
    .local v1, "containerId":I
    const/4 v0, -0x1

    .line 2300
    .local v0, "adminId":I
    if-eqz v2, :cond_4f

    if-eqz v3, :cond_4f

    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4f

    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 2303
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2304
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2305
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2306
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2307
    const-string v4, "adminUid"

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2310
    :cond_4f
    return-void
.end method

.method private convertAdminIdToLUID(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2350
    .local p1, "fv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 2351
    .local v3, "hasContainerId":Z
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 2352
    .local v2, "hasAdminId":Z
    const/4 v1, -0x1

    .line 2353
    .local v1, "containerId":I
    const/4 v0, -0x1

    .line 2355
    .local v0, "adminId":I
    if-eqz v2, :cond_4b

    if-eqz v3, :cond_4b

    .line 2357
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2358
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2359
    const-string v4, "containerID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    const-string v4, "adminUid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    const-string v4, "adminUid"

    int-to-long v5, v0

    int-to-long v7, v1

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2365
    :cond_4b
    return-void
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    const-string v2, "CREATE TABLE %s (%s"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "primarykeys":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 141
    const-string v2, "%s, PRIMARY KEY (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_27
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    if-eqz v2, :cond_4b

    .line 147
    const-string v2, "%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v2, "EdmStorageHelper"

    const-string v3, "onTableFound Created Table %s with Columns %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static getAdminLUIDWhereIn()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2260
    const-string v0, "adminUid IN ( ? )"

    return-object v0
.end method

.method public static getAdminLUIDWhereIn(I)Ljava/lang/String;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 2278
    const/4 v1, -0x1

    if-ne p0, v1, :cond_5

    .line 2279
    const/4 v1, 0x0

    .line 2288
    :goto_4
    return-object v1

    .line 2282
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2284
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string v1, "adminUid IN ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereInArgs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 2338
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereInStr(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 2339
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2343
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getAdminLUIDWhereInArgs(I)Ljava/lang/String;
    .registers 4
    .param p0, "containerId"    # I

    .prologue
    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2265
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT adminUid FROM ADMIN WHERE containerID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAdminLUIDWhereInStr(Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 5
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 2317
    if-nez p1, :cond_4

    .line 2331
    :cond_3
    :goto_3
    return-object v1

    .line 2321
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 2323
    const-string v2, "containerID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "containerID"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2326
    const-string v1, "containerID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2327
    .local v0, "containerId":I
    const-string v1, "containerID"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2328
    invoke-static {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method static getAdminUidFromLUID(J)I
    .registers 3
    .param p0, "adminLUID"    # J

    .prologue
    .line 2256
    long-to-int v0, p0

    return v0
.end method

.method static getContainerIdFromLUID(J)I
    .registers 4
    .param p0, "adminLUID"    # J

    .prologue
    .line 2249
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereCond"    # Ljava/lang/String;

    .prologue
    .line 2381
    const/4 v1, 0x0

    .line 2382
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2385
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

    .line 2386
    .local v3, "sql":Ljava/lang/String;
    if-eqz p2, :cond_2e

    .line 2387
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

    .line 2390
    :cond_2e
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2391
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2392
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2393
    const-string v4, "EdmStorageHelper"

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

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_6d
    .catchall {:try_start_2 .. :try_end_67} :catchall_78

    .line 2397
    if-eqz v1, :cond_6c

    .line 2398
    .end local v3    # "sql":Ljava/lang/String;
    :goto_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2402
    :cond_6c
    return v0

    .line 2394
    :catch_6d
    move-exception v2

    .line 2395
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v4, "EdmStorageHelper"

    const-string v5, "getCount() failed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_78

    .line 2397
    if-eqz v1, :cond_6c

    goto :goto_69

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v4

    if-eqz v1, :cond_7e

    .line 2398
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2397
    :cond_7e
    throw v4
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-class v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    if-nez v0, :cond_e

    .line 87
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 89
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "table"    # Lcom/android/server/enterprise/storage/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/storage/Table;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 309
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 311
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/storage/Column;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 313
    return-object v1
.end method

.method private static getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table_name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PRAGMA table_info("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    .line 475
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 478
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    :try_start_1d
    invoke-virtual {p0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_29

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_47

    .line 480
    :cond_29
    const-string v7, "EdmStorageHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get list of columns for table: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_99
    .catchall {:try_start_1d .. :try_end_41} :catchall_8f

    .line 494
    if-eqz v0, :cond_46

    .line 495
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_46
    :goto_46
    return-object v6

    .line 484
    :cond_47
    :try_start_47
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_99
    .catchall {:try_start_47 .. :try_end_4c} :catchall_8f

    .line 485
    .end local v1    # "cv":Landroid/content/ContentValues;
    .local v2, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 487
    .local v4, "i":I
    :goto_4d
    :try_start_4d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_88

    .line 488
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_66} :catch_67
    .catchall {:try_start_4d .. :try_end_66} :catchall_96

    goto :goto_4d

    .line 491
    :catch_67
    move-exception v3

    move-object v1, v2

    .line 492
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .local v3, "e":Ljava/lang/Exception;
    :goto_69
    :try_start_69
    const-string v6, "EdmStorageHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "does not exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_8f

    .line 494
    if-eqz v0, :cond_86

    .line 495
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_86
    :goto_86
    move-object v6, v1

    .line 499
    goto :goto_46

    .line 494
    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    :cond_88
    if-eqz v0, :cond_8d

    .line 495
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8d
    move-object v1, v2

    .line 497
    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_86

    .line 494
    .end local v4    # "i":I
    :catchall_8f
    move-exception v6

    :goto_90
    if-eqz v0, :cond_95

    .line 495
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_95
    throw v6

    .end local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    :catchall_96
    move-exception v6

    move-object v1, v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_90

    .line 491
    .end local v4    # "i":I
    :catch_99
    move-exception v3

    goto :goto_69
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "exists":Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 296
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
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 297
    const/4 v1, 0x1

    .line 302
    :cond_2c
    :goto_2c
    return v1

    .line 298
    :catch_2d
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method private static postAdminInfoTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 372
    :try_start_0
    const-string v1, "INSERT INTO ADMIN_INFO VALUES (0, \'SYSTEM-LEVEL-ADMIN\', 0);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    const-string v1, "ADMIN"

    invoke-static {p0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 375
    const-string v1, "INSERT INTO ADMIN_INFO SELECT * from ADMIN;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 382
    :cond_12
    :goto_12
    return-void

    .line 378
    :catch_13
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMIN_INFO postAdminInfoTableCreate failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 402
    :try_start_0
    const-string v2, "CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0); END;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    const-string v0, "adminUid!=0"

    .line 409
    .local v0, "condition":Ljava/lang/String;
    const-string v2, "ADMIN_INFO"

    invoke-static {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2b

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO ADMIN SELECT adminUid,adminUid,0 FROM ADMIN_INFO WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 419
    .end local v0    # "condition":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-void

    .line 416
    :catch_2c
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EdmStorageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADMIN_INFO postAdminTableCreate failed  EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private static postContainerTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 388
    :try_start_0
    const-string v1, "INSERT INTO CONTAINER(containerID,adminUid) VALUES (0,0);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 397
    :goto_5
    return-void

    .line 392
    :catch_6
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONTAINER postContainerTableCreate failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 330
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 331
    .local v0, "sTableName":Ljava/lang/String;
    const-string v1, "ADMIN_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 332
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminInfoTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 345
    :cond_d
    :goto_d
    return-void

    .line 336
    :cond_e
    const-string v1, "CONTAINER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1a

    .line 337
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postContainerTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_d

    .line 341
    :cond_1a
    const-string v1, "ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 342
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_d
.end method

.method private static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 322
    return-void
.end method

.method private static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    .line 353
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    .line 354
    .local v0, "sTableName":Ljava/lang/String;
    const-string v1, "ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    .line 355
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->upgradeAdminTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    .line 366
    :goto_e
    return v1

    .line 358
    :cond_f
    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1c

    .line 359
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    goto :goto_e

    .line 362
    :cond_1c
    const-string v1, "WebFilterLogTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_29

    .line 363
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v1

    goto :goto_e

    .line 366
    :cond_29
    const/4 v1, 0x0

    goto :goto_e
.end method

.method static translateToAdminLUID(JJ)J
    .registers 7
    .param p0, "adminId"    # J
    .param p2, "containerId"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 2238
    cmp-long v0, p0, v1

    if-eqz v0, :cond_a

    cmp-long v0, p2, v1

    if-gtz v0, :cond_b

    .line 2242
    .end local p0    # "adminId":J
    :cond_a
    :goto_a
    return-wide p0

    .restart local p0    # "adminId":J
    :cond_b
    const/16 v0, 0x20

    shl-long v0, p2, v0

    or-long/2addr p0, v0

    goto :goto_a
.end method

.method private static upgradeAdminTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/android/server/enterprise/storage/Table;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 423
    :try_start_2
    const-string v4, "ADMIN"

    invoke-static {p0, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 424
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_1d

    const-string v4, "containerID"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 425
    const-string v4, "EdmStorageHelper"

    const-string v5, "Admin Table is already updated."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_31
    .catchall {:try_start_2 .. :try_end_19} :catchall_4b

    .line 436
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 439
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_1c
    return v2

    .line 429
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1d
    const/4 v2, 0x0

    :try_start_1e
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 430
    const-string v2, "DROP TABLE ADMIN"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 432
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_31
    .catchall {:try_start_1e .. :try_end_2c} :catchall_4b

    .line 436
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_2c
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    move v2, v3

    .line 439
    goto :goto_1c

    .line 433
    :catch_31
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    :try_start_32
    const-string v2, "EdmStorageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADMIN upgrade failed  EX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_4b

    goto :goto_2c

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4b
    move-exception v2

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    throw v2
.end method


# virtual methods
.method addAdmin(ILjava/lang/String;ZI)Z
    .registers 13
    .param p1, "iUId"    # I
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "bCanRemove"    # Z
    .param p4, "containerId"    # I

    .prologue
    .line 1246
    const/4 v3, 0x0

    .line 1248
    .local v3, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1249
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1250
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    const-string v4, "adminName"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v4, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1254
    const-string v4, "ADMIN_INFO"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_33

    .line 1255
    const/4 v3, 0x1

    .line 1256
    invoke-virtual {p0, p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_35

    .line 1263
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_32
    return v3

    .line 1258
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_33
    const/4 v3, 0x0

    goto :goto_32

    .line 1260
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_35
    move-exception v2

    .line 1261
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addAdmin"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method addAdminLUID(II)Z
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1456
    const/4 v3, 0x0

    .line 1458
    .local v3, "result":Z
    if-eqz p2, :cond_5

    if-gtz p1, :cond_7

    .line 1460
    :cond_5
    const/4 v4, 0x1

    .line 1477
    :goto_6
    return v4

    .line 1463
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1464
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1465
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    int-to-long v5, p2

    int-to-long v7, p1

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1466
    const-string v4, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1467
    const-string v4, "adminID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    const-string v4, "ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_43

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    .line 1470
    const/4 v3, 0x1

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3f
    move v4, v3

    .line 1477
    goto :goto_6

    .line 1472
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_41
    const/4 v3, 0x0

    goto :goto_3f

    .line 1474
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_43
    move-exception v2

    .line 1475
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addLUID"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method addContainer(II)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1328
    const/4 v3, 0x0

    .line 1330
    .local v3, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1331
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1332
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v4, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1335
    const-string v4, "CONTAINER"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_32

    .line 1336
    if-eqz p2, :cond_30

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_34

    move-result v3

    .line 1347
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_2f
    return v3

    .line 1339
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_30
    const/4 v3, 0x1

    goto :goto_2f

    .line 1342
    :cond_32
    const/4 v3, 0x0

    goto :goto_2f

    .line 1344
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_34
    move-exception v2

    .line 1345
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addContainer"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method addorUpdateAdmin(ILjava/lang/String;ZI)Z
    .registers 14
    .param p1, "iUId"    # I
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "bCanRemove"    # Z
    .param p4, "containerId"    # I

    .prologue
    .line 1273
    const/4 v3, 0x0

    .line 1275
    .local v3, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1276
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1277
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "adminName"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v5, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1281
    .local v4, "whereClause":Ljava/lang/String;
    const-string v5, "ADMIN_INFO"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_36

    .line 1282
    const/4 v5, 0x1

    .line 1295
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "whereClause":Ljava/lang/String;
    :goto_35
    return v5

    .line 1285
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "whereClause":Ljava/lang/String;
    :cond_36
    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1286
    const-string v5, "ADMIN_INFO"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_52

    .line 1287
    const/4 v3, 0x1

    .line 1288
    invoke-virtual {p0, p4, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_54

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "whereClause":Ljava/lang/String;
    :goto_50
    move v5, v3

    .line 1295
    goto :goto_35

    .line 1290
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "whereClause":Ljava/lang/String;
    :cond_52
    const/4 v3, 0x0

    goto :goto_50

    .line 1292
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "whereClause":Ljava/lang/String;
    :catch_54
    move-exception v2

    .line 1293
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on addAdmin"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 2406
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2407
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1792
    const/4 v8, 0x0

    .line 1793
    .local v8, "where":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1794
    .local v1, "buf":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_7

    if-nez p3, :cond_14

    .line 1795
    :cond_7
    const/4 p3, 0x0

    .line 1803
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1805
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, p1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_13

    .line 1806
    const/4 v9, 0x1

    .line 1811
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_13
    :goto_13
    return v9

    .line 1797
    :cond_14
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_46

    .line 1798
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

    .line 1799
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

    .line 1798
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 1801
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

    .line 1808
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_46
    move-exception v5

    .line 1809
    .local v5, "e":Ljava/lang/Exception;
    :goto_47
    const-string v10, "EdmStorageHelper"

    const-string v11, "could not execute deleteDataByFields"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1808
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

.method doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x0

    .line 214
    :try_start_1
    const-string v1, "CREATE TRIGGER IF NOT EXISTS webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_c7

    .line 228
    :goto_6
    :try_start_6
    const-string v1, "CREATE TRIGGER IF NOT EXISTS bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_d1

    .line 242
    :goto_b
    :try_start_b
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (1, \'SpaceView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (2, \'TextView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (3, \'ImageView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (4, \'ContainerView\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    const-string v1, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (5, \'CustomWidget\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_ea

    .line 252
    :goto_24
    :try_start_24
    const-string v1, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (0, \'VERTICAL\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 253
    const-string v1, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (1, \'HORIZONTAL\');"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_e7

    .line 259
    :goto_2e
    :try_start_2e
    const-string v1, "ro.build.fingerprint"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 260
    .local v13, "value":Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    move-object v13, v0

    .line 261
    :cond_3f
    const-string v0, "INSERT INTO generic VALUES (\'PlatformSoftwareVersion\', \'%s\', %d);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_56} :catch_e4

    .line 269
    .end local v13    # "value":Ljava/lang/String;
    :goto_56
    :try_start_56
    const-string v0, "APPLICATION_SIGNATURE"

    invoke-static {p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 270
    const-string v1, "APPLICATION_SIGNATURE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 272
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v0, "EdmStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPLICATION_SIGNATURE Current Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_87
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 274
    const-string v0, "adminUid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 275
    .local v8, "adminUid":I
    const-string v0, "signature"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 278
    .local v12, "sig":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "signature"

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v0, "controlState"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v0, "APPLICATION_SIGNATURE2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_c4} :catch_c5

    goto :goto_87

    .line 287
    .end local v8    # "adminUid":I
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v12    # "sig":Ljava/lang/String;
    :catch_c5
    move-exception v0

    .line 290
    :cond_c6
    :goto_c6
    return-void

    .line 223
    :catch_c7
    move-exception v11

    .line 224
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "doCreationOrUpdatePostCommands EX1:"

    invoke-static {v1, v2, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 237
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_d1
    move-exception v11

    .line 238
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "doCreationOrUpdatePostCommands EX2:"

    invoke-static {v1, v2, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 284
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_db
    :try_start_db
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 285
    const-string v0, "DROP TABLE APPLICATION_SIGNATURE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e3} :catch_c5

    goto :goto_c6

    .line 264
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catch_e4
    move-exception v0

    goto/16 :goto_56

    .line 254
    :catch_e7
    move-exception v1

    goto/16 :goto_2e

    .line 247
    :catch_ea
    move-exception v1

    goto/16 :goto_24
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 159
    const-string v4, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v3, 0x0

    .line 164
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10f0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 169
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;-><init>(Lcom/android/server/enterprise/storage/EdmStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    .local v0, "callback":Lcom/android/server/enterprise/storage/TableCallback;
    new-instance v2, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;

    invoke-direct {v2, v3, v0}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V

    .line 199
    .local v2, "enterpriseParser":Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->parseXML()V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3a} :catch_5c
    .catchall {:try_start_1d .. :try_end_3a} :catchall_67

    .line 204
    if-eqz v3, :cond_3f

    .line 205
    .end local v0    # "callback":Lcom/android/server/enterprise/storage/TableCallback;
    .end local v2    # "enterpriseParser":Lcom/android/server/enterprise/storage/EnterpriseXmlParser;
    :goto_3c
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 208
    :cond_3f
    const-string v4, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doTableCreationOrUpdate Done + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void

    .line 201
    :catch_5c
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v4, "EdmStorageHelper"

    const-string v5, "doTableCreationOrUpdate EX:"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_67

    .line 204
    if-eqz v3, :cond_3f

    goto :goto_3c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_67
    move-exception v4

    if-eqz v3, :cond_6d

    .line 205
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 204
    :cond_6d
    throw v4
.end method

.method public declared-synchronized getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumn"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 987
    monitor-enter p0

    const/4 v11, -0x1

    .line 988
    .local v11, "result":I
    const/4 v9, 0x0

    .line 990
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 991
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 994
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

    .line 995
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 998
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 999
    if-eqz v9, :cond_3e

    .line 1000
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1001
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_45
    .catchall {:try_start_3 .. :try_end_3d} :catchall_4e

    move-result v11

    .line 1007
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_3e
    :goto_3e
    if-eqz v9, :cond_43

    .line 1008
    :try_start_40
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4e

    .line 1010
    :cond_43
    monitor-exit p0

    return v11

    .line 1004
    :catch_45
    move-exception v10

    .line 1005
    .local v10, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getAdminByField"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_3e

    .line 987
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getAdminLUID(II)J
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1551
    const-wide/16 v8, -0x1

    .line 1552
    .local v8, "adminLUID":J
    const/4 v10, 0x0

    .line 1555
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1556
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=? AND adminID=?"

    .line 1557
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1560
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 1564
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "ADMIN"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1566
    if-eqz v10, :cond_3b

    .line 1567
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1568
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3b

    .line 1569
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_41
    .catchall {:try_start_3 .. :try_end_3a} :catchall_4c

    move-result-wide v8

    .line 1576
    :cond_3b
    if-eqz v10, :cond_40

    .line 1577
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :goto_3d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1580
    :cond_40
    return-wide v8

    .line 1573
    :catch_41
    move-exception v11

    .line 1574
    .local v11, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getAdminLUID"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4c

    .line 1576
    if-eqz v10, :cond_40

    goto :goto_3d

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v1

    if-eqz v10, :cond_52

    .line 1577
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1576
    :cond_52
    throw v1
.end method

.method declared-synchronized getBlobByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 21
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "retColumn"    # Ljava/lang/String;

    .prologue
    .line 1078
    monitor-enter p0

    const/4 v12, 0x0

    .line 1079
    .local v12, "result":[B
    const/4 v10, 0x0

    .line 1081
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1082
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v3, v2

    .line 1085
    .local v3, "columns":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p5, v5, v2

    .line 1089
    .local v5, "whereArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1091
    if-eqz v10, :cond_4e

    .line 1092
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1093
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 1095
    :cond_4b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_51
    .catchall {:try_start_3 .. :try_end_4e} :catchall_61

    :cond_4e
    move-object v13, v12

    .line 1105
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    .end local v12    # "result":[B
    .local v13, "result":[B
    :goto_4f
    monitor-exit p0

    return-object v13

    .line 1098
    .end local v13    # "result":[B
    .restart local v12    # "result":[B
    :catch_51
    move-exception v11

    .line 1099
    .local v11, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v2, "EdmStorageHelper"

    const-string v6, "Failed on getIntByAdminAndField"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    if-eqz v10, :cond_5f

    .line 1101
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_61

    .line 1102
    const/4 v10, 0x0

    :cond_5f
    move-object v13, v12

    .line 1105
    .end local v12    # "result":[B
    .restart local v13    # "result":[B
    goto :goto_4f

    .line 1078
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "result":[B
    .restart local v12    # "result":[B
    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getContainerOwnerUid(I)I
    .registers 13
    .param p1, "containerId"    # I

    .prologue
    .line 1379
    const/4 v8, -0x1

    .line 1380
    .local v8, "adminUid":I
    const/4 v9, 0x0

    .line 1383
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1384
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=?"

    .line 1385
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1388
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 1392
    .local v2, "columns":[Ljava/lang/String;
    const-string v1, "CONTAINER"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1394
    if-eqz v9, :cond_33

    .line 1395
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1396
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_33

    .line 1397
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_39
    .catchall {:try_start_2 .. :try_end_32} :catchall_44

    move-result v8

    .line 1404
    :cond_33
    if-eqz v9, :cond_38

    .line 1405
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :goto_35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1409
    :cond_38
    return v8

    .line 1401
    :catch_39
    move-exception v10

    .line 1402
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getAdminLUID"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_44

    .line 1404
    if-eqz v9, :cond_38

    goto :goto_35

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_44
    move-exception v1

    if-eqz v9, :cond_4a

    .line 1405
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1404
    :cond_4a
    throw v1
.end method

.method public getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 22
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "cvWhereValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2097
    const/4 v12, 0x0

    .line 2098
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 2101
    .local v10, "cnt":I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2102
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-gtz v3, :cond_5b

    .line 2103
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2104
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 2105
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2106
    const-string v3, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCount("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_e0
    .catchall {:try_start_2 .. :try_end_54} :catchall_136

    .line 2143
    if-eqz v12, :cond_59

    .line 2144
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_59
    move v11, v10

    .line 2148
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cnt":I
    .local v11, "cnt":I
    :goto_5a
    return v11

    .line 2110
    .end local v11    # "cnt":I
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "cnt":I
    :cond_5b
    const/4 v6, 0x0

    .line 2111
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_5c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 2113
    .local v18, "where":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_f0

    .line 2114
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 2115
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v17

    .line 2116
    .local v17, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v15, 0x0

    .line 2118
    .local v15, "index":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 2120
    .local v16, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v18, :cond_bb

    .line 2121
    new-instance v18, Ljava/lang/StringBuilder;

    .end local v18    # "where":Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 2122
    .restart local v18    # "where":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    :goto_aa
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v15

    .line 2127
    add-int/lit8 v15, v15, 0x1

    goto :goto_79

    .line 2124
    :cond_bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_df} :catch_e0
    .catchall {:try_start_5c .. :try_end_df} :catchall_136

    goto :goto_aa

    .line 2140
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "index":I
    .end local v16    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v18    # "where":Ljava/lang/StringBuilder;
    :catch_e0
    move-exception v13

    .line 2141
    .local v13, "e":Ljava/lang/Exception;
    :try_start_e1
    const-string v3, "EdmStorageHelper"

    const-string v5, "getCount() failed"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_e1 .. :try_end_e8} :catchall_136

    .line 2143
    if-eqz v12, :cond_ed

    .line 2144
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_ea
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_ed
    move v11, v10

    .line 2148
    .end local v10    # "cnt":I
    .restart local v11    # "cnt":I
    goto/16 :goto_5a

    .line 2131
    .end local v11    # "cnt":I
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v10    # "cnt":I
    .restart local v18    # "where":Ljava/lang/StringBuilder;
    :cond_f0
    const/4 v3, 0x1

    :try_start_f1
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "COUNT(*)"

    aput-object v5, v4, v3

    .line 2134
    .local v4, "columns":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2135
    if-eqz v12, :cond_133

    .line 2136
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2137
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2138
    const-string v3, "EdmStorageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCount("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_133} :catch_e0
    .catchall {:try_start_f1 .. :try_end_133} :catchall_136

    .line 2143
    :cond_133
    if-eqz v12, :cond_ed

    goto :goto_ea

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v18    # "where":Ljava/lang/StringBuilder;
    :catchall_136
    move-exception v3

    if-eqz v12, :cond_13c

    .line 2144
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2143
    :cond_13c
    throw v3
.end method

.method declared-synchronized getCursorByAdmin(Ljava/lang/String;J[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1171
    monitor-enter p0

    const/4 v9, 0x0

    .line 1173
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1174
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? "

    .line 1175
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1178
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1e
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2d

    move-result-object v9

    .line 1186
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-object v9

    .line 1179
    :catch_1e
    move-exception v10

    .line 1180
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1f
    const-string v1, "EdmStorageHelper"

    const-string v2, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    if-eqz v9, :cond_1c

    .line 1182
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_2d

    .line 1183
    const/4 v9, 0x0

    goto :goto_1c

    .line 1171
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCursorByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "columns"    # [Ljava/lang/String;

    .prologue
    .line 1147
    monitor-enter p0

    const/4 v9, 0x0

    .line 1149
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1150
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminUid=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object p5, v4, v1

    .line 1154
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_39
    .catchall {:try_start_2 .. :try_end_36} :catchall_48

    move-result-object v9

    .line 1162
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_37
    :goto_37
    monitor-exit p0

    return-object v9

    .line 1155
    :catch_39
    move-exception v10

    .line 1156
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3a
    const-string v1, "EdmStorageHelper"

    const-string v2, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    if-eqz v9, :cond_37

    .line 1158
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_48

    .line 1159
    const/4 v9, 0x0

    goto :goto_37

    .line 1147
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 1677
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1678
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v16, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 1680
    .local v14, "count":I
    const/4 v5, 0x0

    .line 1681
    .local v5, "where":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1682
    .local v11, "buf":Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 1685
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz p2, :cond_11

    if-nez p3, :cond_56

    .line 1686
    :cond_11
    const/16 p3, 0x0

    .line 1695
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

    .line 1696
    if-eqz v15, :cond_a8

    .line 1697
    :goto_22
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1698
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_34
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_90

    .line 1700
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

    .line 1699
    add-int/lit8 v18, v18, 0x1

    goto :goto_34

    .line 1688
    .end local v18    # "i":I
    :cond_56
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5b} :catch_93
    .catchall {:try_start_1c .. :try_end_5b} :catchall_a1

    .line 1689
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

    .line 1690
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

    .line 1689
    add-int/lit8 v19, v19, 0x1

    goto :goto_62

    .line 1692
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

    .line 1702
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .restart local v18    # "i":I
    :cond_90
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1705
    .end local v18    # "i":I
    :catch_93
    move-exception v17

    .line 1706
    .local v17, "e":Ljava/lang/Exception;
    :goto_94
    :try_start_94
    const-string v3, "EdmStorageHelper"

    const-string v4, "could not execute getDataByFields"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_a1

    .line 1708
    if-eqz v15, :cond_a0

    .line 1709
    .end local v17    # "e":Ljava/lang/Exception;
    :goto_9d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1712
    :cond_a0
    return-object v16

    .line 1708
    :catchall_a1
    move-exception v3

    :goto_a2
    if-eqz v15, :cond_a7

    .line 1709
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1708
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

    .line 1705
    .end local v11    # "buf":Ljava/lang/StringBuffer;
    .restart local v12    # "buf":Ljava/lang/StringBuffer;
    :catch_ae
    move-exception v17

    move-object v11, v12

    .end local v12    # "buf":Ljava/lang/StringBuffer;
    .restart local v11    # "buf":Ljava/lang/StringBuffer;
    goto :goto_94
.end method

.method declared-synchronized getIntByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "retColumn"    # Ljava/lang/String;

    .prologue
    .line 1046
    monitor-enter p0

    const/4 v12, -0x1

    .line 1047
    .local v12, "result":I
    const/4 v10, 0x0

    .line 1049
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1050
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v3, v2

    .line 1053
    .local v3, "columns":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1054
    .local v4, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p5, v5, v2

    .line 1057
    .local v5, "whereArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1059
    if-eqz v10, :cond_4e

    .line 1060
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1061
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1063
    :cond_4b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_51
    .catchall {:try_start_3 .. :try_end_4e} :catchall_61

    :cond_4e
    move v13, v12

    .line 1073
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    .end local v12    # "result":I
    .local v13, "result":I
    :goto_4f
    monitor-exit p0

    return v13

    .line 1066
    .end local v13    # "result":I
    .restart local v12    # "result":I
    :catch_51
    move-exception v11

    .line 1067
    .local v11, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v2, "EdmStorageHelper"

    const-string v6, "Failed on getIntByAdminAndField"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    if-eqz v10, :cond_5f

    .line 1069
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_61

    .line 1070
    const/4 v10, 0x0

    :cond_5f
    move v13, v12

    .line 1073
    .end local v12    # "result":I
    .restart local v13    # "result":I
    goto :goto_4f

    .line 1046
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "result":I
    .restart local v12    # "result":I
    :catchall_61
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getStringByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "retColumn"    # Ljava/lang/String;

    .prologue
    .line 1110
    monitor-enter p0

    const/4 v12, 0x0

    .line 1111
    .local v12, "result":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1114
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1115
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p6, v3, v2

    .line 1118
    .local v3, "columns":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1119
    .local v4, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p5, v5, v2

    .line 1122
    .local v5, "whereArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1124
    if-eqz v10, :cond_4e

    .line 1125
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1126
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1128
    :cond_4b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4e} :catch_50
    .catchall {:try_start_3 .. :try_end_4e} :catchall_5f

    .line 1137
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v12

    .line 1130
    :catch_50
    move-exception v11

    .line 1131
    .local v11, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v2, "EdmStorageHelper"

    const-string v6, "Failed on getValueByAdminAndField"

    invoke-static {v2, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    if-eqz v10, :cond_4e

    .line 1133
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_5f

    .line 1134
    const/4 v10, 0x0

    goto :goto_4e

    .line 1110
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 21
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2159
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 2162
    .local v11, "cv":Landroid/content/ContentValues;
    if-nez p3, :cond_9

    .line 2163
    const/4 v3, 0x0

    .line 2199
    :goto_8
    return-object v3

    .line 2166
    :cond_9
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 2167
    .local v4, "columns":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p2, v4, v3

    .line 2169
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2170
    .local v16, "where":Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 2172
    .local v6, "whereArgs":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v15

    .line 2173
    .local v15, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v13, 0x0

    .line 2175
    .local v13, "index":I
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 2177
    .local v14, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v16, :cond_68

    .line 2178
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "where":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2179
    .restart local v16    # "where":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    :goto_57
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v13

    .line 2184
    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    .line 2181
    :cond_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 2187
    .end local v14    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8d
    if-eqz v16, :cond_bc

    .line 2188
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2190
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_bc

    .line 2191
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2192
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b9

    .line 2193
    new-instance v11, Landroid/content/ContentValues;

    .end local v11    # "cv":Landroid/content/ContentValues;
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2194
    .restart local v11    # "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    :cond_b9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_bc
    move-object v3, v11

    .line 2199
    goto/16 :goto_8
.end method

.method declared-synchronized getValueByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "retColumn"    # Ljava/lang/String;

    .prologue
    .line 1023
    monitor-enter p0

    const/4 v9, 0x0

    .line 1025
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1026
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p6, v2, v1

    .line 1029
    .local v2, "columns":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p5, v4, v1

    .line 1033
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3d
    .catchall {:try_start_2 .. :try_end_3a} :catchall_4c

    move-result-object v9

    .line 1041
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-object v9

    .line 1034
    :catch_3d
    move-exception v10

    .line 1035
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on getValueByAdminAndField"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    if-eqz v9, :cond_3b

    .line 1037
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4c

    .line 1038
    const/4 v9, 0x0

    goto :goto_3b

    .line 1023
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 15
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sAdmin"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 769
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 770
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid=? "

    .line 771
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .local v4, "whereArgs":[Ljava/lang/String;
    move-object v1, p1

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    .line 774
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 775
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3a

    .line 776
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 777
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_23
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v10, v1, :cond_37

    .line 778
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    .line 781
    .end local v10    # "i":I
    :cond_37
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_3a
    return-object v9
.end method

.method getValuesList(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 792
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 793
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v10, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    move-object v1, p1

    move-object v2, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 796
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 797
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4e

    .line 798
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 799
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4b

    .line 801
    :cond_22
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .local v9, "cv":Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_28
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v11, v1, :cond_3c

    .line 803
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    .line 805
    :cond_3c
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_45

    .line 806
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    :cond_45
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_22

    .line 810
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v11    # "i":I
    :cond_4b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 812
    :cond_4e
    return-object v10
.end method

.method getValuesList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 17
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 823
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v10, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 826
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4c

    .line 827
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 828
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_49

    .line 830
    :cond_20
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 831
    .local v9, "cv":Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_26
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v11, v1, :cond_3a

    .line 832
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    add-int/lit8 v11, v11, 0x1

    goto :goto_26

    .line 834
    :cond_3a
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 835
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_43
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_20

    .line 839
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v11    # "i":I
    :cond_49
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_4c
    return-object v10
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 10
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 898
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    .line 901
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_40

    .line 902
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 903
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3d

    .line 905
    :cond_14
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 906
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 907
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 909
    :cond_2e
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_37

    .line 910
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_14

    .line 914
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i":I
    :cond_3d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 917
    :cond_40
    return-object v2
.end method

.method getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .registers 23
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 929
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v12, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p3, :cond_c

    .line 977
    :cond_b
    :goto_b
    return-object v12

    .line 936
    :cond_c
    const/4 v6, 0x0

    .line 937
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 939
    .local v18, "where":Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 940
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    .line 943
    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v17

    .line 944
    .local v17, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v15, 0x0

    .line 946
    .local v15, "index":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 948
    .local v16, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v18, :cond_6c

    .line 949
    new-instance v18, Ljava/lang/StringBuilder;

    .end local v18    # "where":Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .restart local v18    # "where":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :goto_5b
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v15

    .line 955
    add-int/lit8 v15, v15, 0x1

    goto :goto_2a

    .line 952
    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 958
    .end local v16    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_91
    if-eqz v18, :cond_b

    .line 959
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 961
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_b

    .line 962
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 963
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_d6

    .line 965
    :cond_ad
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 966
    .local v11, "cv":Landroid/content/ContentValues;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b3
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v13, v3, :cond_c7

    .line 967
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    add-int/lit8 v13, v13, 0x1

    goto :goto_b3

    .line 969
    :cond_c7
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_d0

    .line 970
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    :cond_d0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_ad

    .line 974
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v13    # "i":I
    :cond_d6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b
.end method

.method insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 8
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1862
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1863
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1864
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 1865
    const/4 v1, 0x1

    .line 1867
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sAdmin"    # Ljava/lang/String;
    .param p3, "sColumn"    # Ljava/lang/String;
    .param p4, "sValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 510
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 511
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 517
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 518
    const-string v2, "adminUid=? "

    .line 519
    .local v2, "where":Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    .line 522
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2d

    .line 541
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :cond_26
    :goto_26
    return v4

    .line 527
    :cond_27
    invoke-virtual {v1, p1, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_26

    .line 533
    :cond_2d
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 534
    const-string v6, "adminUid"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_3a
    invoke-virtual {v1, p1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_26

    move v4, v5

    .line 541
    goto :goto_26
.end method

.method insertOrUpdateGenericTable(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "Name"    # Ljava/lang/String;
    .param p3, "Value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1592
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1594
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "name=?"

    .line 1595
    .local v2, "where":Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    .line 1599
    .local v3, "whereArgs":[Ljava/lang/String;
    if-ltz p1, :cond_20

    .line 1600
    const-string v2, "name=? and containerID=?"

    .line 1601
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    .line 1602
    aput-object p2, v3, v5

    .line 1603
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1606
    :cond_20
    const-string v6, "value"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v6, "generic"

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2e

    .line 1619
    :cond_2d
    :goto_2d
    return v4

    .line 1611
    :cond_2e
    const-string v6, "name"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    if-ltz p1, :cond_3e

    .line 1613
    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    :cond_3e
    const-string v6, "generic"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2d

    move v4, v5

    .line 1619
    goto :goto_2d
.end method

.method public insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I
    .registers 7
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 647
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 648
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 650
    .local v1, "rowId":I
    return v1
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    .line 108
    :goto_7
    return-void

    .line 105
    :catch_8
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "Foreign Key Config failed"

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 117
    const-string v0, "EdmStorageHelper"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 132
    return-void
.end method

.method putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 19
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 1759
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1761
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1762
    if-eqz p2, :cond_4b

    if-eqz p3, :cond_4b

    .line 1763
    const/4 v9, 0x0

    .line 1764
    .local v9, "where":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1765
    .local v3, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v2, p2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_17
    if-ge v7, v8, :cond_34

    aget-object v4, v2, v7

    .line 1766
    .local v4, "column":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1765
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1768
    .end local v4    # "column":Ljava/lang/String;
    :cond_34
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1770
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v5, p1, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4b

    .line 1771
    const/4 v10, 0x1

    .line 1781
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "buf":Ljava/lang/StringBuffer;
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "where":Ljava/lang/String;
    :goto_4a
    return v10

    .line 1775
    .restart local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4b
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v5, p1, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_5a

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_73

    .line 1776
    const/4 v10, 0x1

    goto :goto_4a

    .line 1778
    .end local v5    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_5a
    move-exception v6

    .line 1779
    .local v6, "e":Ljava/lang/Exception;
    const-string v10, "EdmStorageHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not execute putDataByFields"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_73
    const/4 v10, 0x0

    goto :goto_4a
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 12
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 690
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 691
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereInStr(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 693
    const/4 v5, 0x0

    invoke-virtual {v0, p1, p2, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_15

    .line 703
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "whereClause":Ljava/lang/String;
    :cond_14
    :goto_14
    return v3

    .line 696
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "whereClause":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_22

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_14

    move v3, v4

    .line 699
    goto :goto_14

    .line 700
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "whereClause":Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 701
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EDM"

    const-string v5, "Failled on putValues(String sTableName, ContentValues cvValues)"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 703
    goto :goto_14
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cvUpdateValues"    # Landroid/content/ContentValues;
    .param p3, "cvWhereValues"    # Landroid/content/ContentValues;

    .prologue
    .line 715
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 717
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_a

    if-nez p3, :cond_a

    .line 718
    const/4 v8, 0x0

    .line 758
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_9
    return v8

    .line 721
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 723
    const/4 v7, 0x0

    .line 724
    .local v7, "whereArgs":[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 726
    .local v6, "where":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_95

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_95

    .line 727
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 728
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 729
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 731
    .local v3, "index":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 733
    .local v4, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v6, :cond_67

    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "where":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .restart local v6    # "where":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :goto_58
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 740
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 737
    :cond_67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_89} :catch_8a

    goto :goto_58

    .line 754
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "where":Ljava/lang/StringBuilder;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :catch_8a
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "EDM"

    const-string v9, "Failed on putValues(String sTableName, ContentValues cvUpdateValues, ContentValues cvWhereValues)"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 744
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "where":Ljava/lang/StringBuilder;
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    :cond_95
    if-eqz v6, :cond_a4

    .line 745
    :try_start_97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1, p2, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_a4

    .line 746
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 750
    :cond_a4
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a8} :catch_8a

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b2

    .line 751
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 753
    :cond_b2
    const/4 v8, 0x0

    goto/16 :goto_9
.end method

.method putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 14
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sAdmin"    # Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 662
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 663
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 664
    .local v2, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .line 667
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 668
    invoke-virtual {v0, p1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_18

    .line 680
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :cond_17
    :goto_17
    return v4

    .line 671
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "where":Ljava/lang/String;
    .restart local v3    # "whereArgs":[Ljava/lang/String;
    :cond_18
    const-string v6, "adminUid"

    invoke-virtual {p3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_2a

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_17

    move v4, v5

    .line 675
    goto :goto_17

    .line 676
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "whereArgs":[Ljava/lang/String;
    :catch_2a
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EDM"

    const-string v6, "Failled on putValues(String sTableName, String sAdmin, ContentValues cvValues)"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 680
    goto :goto_17
.end method

.method putValuesForAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1200
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, "where":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p5, v2, v3

    .line 1204
    .local v2, "whereArgs":[Ljava/lang/String;
    invoke-direct {p0, p6}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 1205
    invoke-virtual {v0, p1, p6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_34

    .line 1214
    :cond_33
    :goto_33
    return v3

    .line 1209
    :cond_34
    const-string v5, "adminUid"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p6, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p6, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, p6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_33

    move v3, v4

    .line 1214
    goto :goto_33
.end method

.method putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 8
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 633
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    .line 634
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 635
    const/4 v1, 0x1

    .line 637
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2209
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 2210
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

    .line 2213
    const/4 v0, 0x0

    .line 2215
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2216
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2217
    if-eqz v0, :cond_37

    .line 2218
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_34

    .line 2219
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v4, v0

    .line 2231
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_33
    return-object v4

    .line 2222
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_34
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_3c

    .line 2230
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_37
    :goto_37
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2231
    const/4 v4, 0x0

    goto :goto_33

    .line 2224
    :catch_3c
    move-exception v2

    .line 2226
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_37

    .line 2227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_37
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 5
    .param p1, "sTableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1849
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1850
    .local v1, "result":Z
    invoke-virtual {v0, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_d

    .line 1851
    const/4 v1, 0x1

    .line 1853
    :cond_d
    return v1
.end method

.method removeAdmin(I)Z
    .registers 9
    .param p1, "iAdmin"    # I

    .prologue
    .line 1303
    const/4 v2, 0x0

    .line 1305
    .local v2, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1306
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? AND canRemove=? "

    .line 1308
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    .line 1311
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "ADMIN_INFO"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_22

    move-result v5

    if-lez v5, :cond_20

    .line 1312
    const/4 v2, 0x1

    .line 1319
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :goto_1f
    return v2

    .line 1314
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_20
    const/4 v2, 0x0

    goto :goto_1f

    .line 1316
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 1317
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeAdmin"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method removeAdminLUID(II)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 1525
    const/4 v2, 0x0

    .line 1527
    .local v2, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1529
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=? AND adminID=?"

    .line 1530
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1534
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "ADMIN"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_25

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    .line 1535
    const/4 v2, 0x1

    .line 1542
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :goto_22
    return v2

    .line 1537
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_23
    const/4 v2, 0x0

    goto :goto_22

    .line 1539
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catch_25
    move-exception v1

    .line 1540
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeAdminLUID"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method removeByAdmin(Ljava/lang/String;J)Z
    .registers 10
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1828
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 1829
    .local v2, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1833
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    .line 1834
    const/4 v1, 0x1

    .line 1838
    .local v1, "result":Z
    :goto_17
    return v1

    .line 1836
    .end local v1    # "result":Z
    :cond_18
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_17
.end method

.method removeByAdminAndField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "admin"    # J
    .param p4, "sColumn"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1226
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    .local v2, "where":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    .line 1231
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_32

    .line 1232
    const/4 v1, 0x1

    .line 1236
    .local v1, "result":Z
    :goto_31
    return v1

    .line 1234
    .end local v1    # "result":Z
    :cond_32
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_31
.end method

.method removeByFields(Ljava/lang/String;ILjava/util/HashMap;)I
    .registers 13
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1933
    .local p3, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1935
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1936
    .local v1, "columnName":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1938
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1939
    .local v5, "where":Ljava/lang/StringBuffer;
    invoke-static {p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v7

    .line 1940
    .local v7, "whereIn":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 1942
    .local v6, "whereArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1945
    .local v3, "i":I
    if-eqz v7, :cond_2c

    .line 1946
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1947
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1948
    const-string v8, " AND "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1951
    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1952
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1953
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1954
    const-string v8, " =? "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1955
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v3

    .line 1956
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1957
    const-string v8, " AND "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1958
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1960
    .end local v0    # "column":Ljava/lang/String;
    :cond_56
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1962
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, p1, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    return v8
.end method

.method removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 14
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1878
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1879
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 1882
    .local v5, "result":Z
    if-nez p2, :cond_14

    .line 1887
    :try_start_7
    const-string v9, "1"

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_12

    .line 1888
    const/4 v5, 0x1

    .line 1927
    :goto_11
    return v5

    .line 1890
    :cond_12
    const/4 v5, 0x0

    goto :goto_11

    .line 1893
    :cond_14
    const/4 v8, 0x0

    .line 1894
    .local v8, "whereArgs":[Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1896
    .local v7, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-lez v9, :cond_25

    .line 1897
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 1900
    :cond_25
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 1901
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1903
    .local v3, "index":I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1905
    .local v4, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_6c

    .line 1906
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "where":Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1907
    .restart local v7    # "where":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    :goto_5d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 1912
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1909
    :cond_6c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_8e} :catch_8f

    goto :goto_5d

    .line 1924
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "where":Ljava/lang/StringBuilder;
    .end local v8    # "whereArgs":[Ljava/lang/String;
    :catch_8f
    move-exception v1

    .line 1925
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "EDM"

    const-string v10, "Failled on removeByFilter(String sTableName, ContentValues cvValues)"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 1914
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "index":I
    .restart local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7    # "where":Ljava/lang/StringBuilder;
    .restart local v8    # "whereArgs":[Ljava/lang/String;
    :cond_99
    if-eqz v7, :cond_ab

    .line 1915
    :try_start_9b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a2} :catch_8f

    move-result v9

    if-lez v9, :cond_a8

    .line 1916
    const/4 v5, 0x1

    goto/16 :goto_11

    .line 1918
    :cond_a8
    const/4 v5, 0x0

    goto/16 :goto_11

    .line 1921
    :cond_ab
    const/4 v5, 0x0

    goto/16 :goto_11
.end method

.method removeContainer(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 1355
    const/4 v2, 0x0

    .line 1357
    .local v2, "result":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1358
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "containerID=?"

    .line 1359
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1363
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v5, "CONTAINER"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1d

    move-result v5

    if-lez v5, :cond_1b

    .line 1364
    const/4 v2, 0x1

    .line 1371
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :goto_1a
    return v2

    .line 1366
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a

    .line 1368
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catch_1d
    move-exception v1

    .line 1369
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeContainer"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method select(Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "sColumn"    # Ljava/lang/String;

    .prologue
    .line 594
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 595
    .local v11, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 598
    const/4 v9, 0x0

    .line 600
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 601
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v2, v1

    .line 604
    .local v2, "columns":[Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 608
    if-eqz v9, :cond_47

    .line 609
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_44

    .line 610
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v9

    .line 623
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :goto_43
    return-object v1

    .line 613
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    :cond_44
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_47} :catch_4c

    .line 622
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :cond_47
    :goto_47
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 623
    const/4 v1, 0x0

    goto :goto_43

    .line 615
    :catch_4c
    move-exception v10

    .line 616
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v4, "Failed on Cursor select(String sTableName, int containerId, String sColumn)"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    if-eqz v9, :cond_47

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_47

    .line 619
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_47
.end method

.method select(Ljava/lang/String;I[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "tablename"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "returnColumns"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 1969
    .local p4, "fieldsAndValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1970
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 1971
    .local v11, "columnName":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1973
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1974
    .local v14, "where":Ljava/lang/StringBuffer;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v15

    .line 1975
    .local v15, "whereIn":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 1977
    .local v5, "whereArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1980
    .local v12, "i":I
    if-eqz v15, :cond_2c

    .line 1981
    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1982
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1983
    const-string v2, " AND "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1986
    :cond_2c
    :goto_2c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1987
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1988
    .local v10, "column":Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1990
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v12

    .line 1991
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1992
    const-string v2, " AND "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1993
    :cond_50
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    .line 1995
    .end local v10    # "column":Ljava/lang/String;
    :cond_53
    if-eqz p5, :cond_5b

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_71

    .line 1996
    :cond_5b
    const-string v2, ";"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2000
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2003
    :goto_70
    return-object v2

    :cond_71
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_70
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumn"    # Ljava/lang/String;
    .param p3, "sAdmin"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 552
    .local v11, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 555
    const/4 v9, 0x0

    .line 557
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 558
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    .line 561
    .local v2, "columns":[Ljava/lang/String;
    const-string v3, "adminUid=? "

    .line 562
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 565
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4f

    .line 566
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    move-result-object v9

    .line 570
    :goto_3c
    if-eqz v9, :cond_5c

    .line 571
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_59

    .line 572
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v9

    .line 584
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    :goto_4e
    return-object v1

    .line 568
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    :cond_4f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_3c

    .line 575
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_59
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5c} :catch_61

    .line 583
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    :cond_5c
    :goto_5c
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 584
    const/4 v1, 0x0

    goto :goto_4e

    .line 577
    :catch_61
    move-exception v10

    .line 578
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v5, "Failed on Cursor select(String sTableName, String sColumn, String sAdmin)"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-eqz v9, :cond_5c

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 580
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_5c
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "columnResult"    # Ljava/lang/String;

    .prologue
    .line 1725
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1726
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 1727
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    .line 1730
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

    .line 1731
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 1734
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_44

    .line 1735
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    move-result-object v9

    .line 1739
    :goto_35
    if-eqz v9, :cond_51

    .line 1740
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4e

    .line 1749
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_43
    return-object v9

    .line 1737
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_44
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_35

    .line 1743
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_4e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_53

    .line 1749
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_51
    :goto_51
    const/4 v9, 0x0

    goto :goto_43

    .line 1745
    :catch_53
    move-exception v10

    .line 1746
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v5, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method public select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "resultColumns"    # [Ljava/lang/String;

    .prologue
    .line 2036
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2037
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2038
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2039
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 2042
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    .line 2043
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    move-result-object v9

    .line 2048
    :goto_30
    if-eqz v9, :cond_4d

    .line 2049
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4a

    .line 2059
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_3e
    return-object v9

    .line 2045
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_3f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_30

    .line 2052
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :cond_4a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4f

    .line 2059
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_4d
    :goto_4d
    const/4 v9, 0x0

    goto :goto_3e

    .line 2054
    :catch_4f
    move-exception v10

    .line 2055
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;
    .registers 19
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "cvValues"    # Landroid/content/ContentValues;

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 854
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p3, :cond_8

    .line 855
    const/4 v9, 0x0

    .line 888
    :goto_7
    return-object v9

    .line 858
    :cond_8
    const/4 v5, 0x0

    .line 859
    .local v5, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getAdminLUIDWhereIn(Landroid/content/ContentValues;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 861
    .local v14, "where":Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 862
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 865
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v13

    .line 866
    .local v13, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v11, 0x0

    .line 868
    .local v11, "index":I
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 870
    .local v12, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v14, :cond_64

    .line 871
    new-instance v14, Ljava/lang/StringBuilder;

    .end local v14    # "where":Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .restart local v14    # "where":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :goto_53
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v11

    .line 877
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    .line 874
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 880
    .end local v12    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_87
    if-eqz v14, :cond_9f

    .line 881
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 883
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_9f

    .line 884
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_7

    .line 888
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_9f
    const/4 v9, 0x0

    goto/16 :goto_7
.end method

.method public select(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "whereColums"    # [Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "resultColumns"    # [Ljava/lang/String;

    .prologue
    .line 2066
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2067
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2068
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 2069
    .local v12, "where":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    array-length v1, p2

    if-ge v11, v1, :cond_66

    .line 2070
    if-nez v12, :cond_2c

    .line 2071
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12    # "where":Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2072
    .restart local v12    # "where":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    :goto_29
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2074
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_29

    .line 2087
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "where":Ljava/lang/StringBuilder;
    :catch_4b
    move-exception v10

    .line 2088
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    const/4 v9, 0x0

    :cond_65
    return-object v9

    .line 2077
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "i":I
    .restart local v12    # "where":Ljava/lang/StringBuilder;
    :cond_66
    if-eqz v12, :cond_79

    .line 2078
    :try_start_68
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2081
    :cond_79
    if-eqz v9, :cond_64

    .line 2082
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_87

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_65

    .line 2085
    :cond_87
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_8a} :catch_4b

    goto :goto_64
.end method

.method selectGenericTable(ILjava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1629
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 1630
    .local v11, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1634
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1636
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "value"

    aput-object v5, v2, v1

    .line 1639
    .local v2, "columns":[Ljava/lang/String;
    const-string v3, "name=?"

    .line 1640
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 1644
    .local v4, "whereArgs":[Ljava/lang/String;
    if-ltz p1, :cond_3a

    .line 1645
    const-string v3, "name=? and containerID=?"

    .line 1647
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 1648
    const/4 v1, 0x0

    aput-object p2, v4, v1

    .line 1649
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1652
    :cond_3a
    const-string v1, "generic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1654
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_59

    .line 1655
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_56

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_56

    .line 1656
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1666
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :goto_55
    return-object v9

    .line 1659
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_56
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_59} :catch_5e

    .line 1664
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_59
    :goto_59
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v9, v12

    .line 1666
    goto :goto_55

    .line 1661
    :catch_5e
    move-exception v10

    .line 1662
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v5, "Failed on selectGenericTable"

    invoke-static {v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59
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
    .line 2010
    .local p3, "whereParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2012
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2013
    .local v5, "where":Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2014
    .local v6, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2015
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2017
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 2019
    .local v2, "i":I
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 2020
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2021
    .local v0, "columnAndOperator":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2022
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 2023
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 2024
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2025
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2027
    .end local v0    # "columnAndOperator":Ljava/lang/String;
    :cond_3d
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2029
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p1, p2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method

.method updateAdminLUID(III)Z
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "oldAdminUid"    # I
    .param p3, "newAdminUid"    # I

    .prologue
    const/4 v6, 0x1

    .line 1486
    const/4 v3, 0x0

    .line 1488
    .local v3, "result":Z
    if-nez p3, :cond_8

    .line 1489
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->removeAdminLUID(II)Z

    .line 1516
    :goto_7
    return v6

    .line 1493
    :cond_8
    if-nez p2, :cond_f

    .line 1494
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addAdminLUID(II)Z

    move-result v6

    goto :goto_7

    .line 1497
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1499
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1500
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    int-to-long v7, p3

    int-to-long v9, p1

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1501
    const-string v6, "adminID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1503
    const-string v4, "containerID=? AND adminID=?"

    .line 1504
    .local v4, "where":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1508
    .local v5, "whereArgs":[Ljava/lang/String;
    const-string v6, "ADMIN"

    invoke-virtual {v1, v6, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_48} :catch_51

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4f

    .line 1509
    const/4 v3, 0x1

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :goto_4d
    move v6, v3

    .line 1516
    goto :goto_7

    .line 1511
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "where":Ljava/lang/String;
    .restart local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4f
    const/4 v3, 0x0

    goto :goto_4d

    .line 1513
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 1514
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EdmStorageHelper"

    const-string v7, "Failed on updateAdminLUID"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method updateContainerOwnerUid(II)Z
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "newAdminUid"    # I

    .prologue
    const/4 v7, 0x1

    .line 1417
    const/4 v4, 0x0

    .line 1419
    .local v4, "result":Z
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getContainerOwnerUid(I)I

    move-result v3

    .line 1420
    .local v3, "oldAdminUid":I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_e

    .line 1422
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainer(II)Z

    move-result v7

    .line 1447
    .end local v3    # "oldAdminUid":I
    :cond_d
    :goto_d
    return v7

    .line 1425
    .restart local v3    # "oldAdminUid":I
    :cond_e
    if-eq v3, p2, :cond_d

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1431
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1432
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    const-string v5, "containerID=?"

    .line 1435
    .local v5, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1439
    .local v6, "whereArgs":[Ljava/lang/String;
    const-string v7, "CONTAINER"

    invoke-virtual {v1, v7, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3c

    .line 1440
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->updateAdminLUID(III)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3e

    move-result v4

    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "oldAdminUid":I
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :goto_3a
    move v7, v4

    .line 1447
    goto :goto_d

    .line 1442
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "oldAdminUid":I
    .restart local v5    # "where":Ljava/lang/String;
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    :cond_3c
    const/4 v4, 0x0

    goto :goto_3a

    .line 1444
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "oldAdminUid":I
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    :catch_3e
    move-exception v2

    .line 1445
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "EdmStorageHelper"

    const-string v8, "Failed on addContainer"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method
