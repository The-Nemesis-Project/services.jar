.class public Lcom/android/server/enterprise/application/ApplicationIconDb;
.super Ljava/lang/Object;
.source "ApplicationIconDb.java"


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGE_DATA:Ljava/lang/String; = "imagedata"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationIcon"

.field private static final TAG:Ljava/lang/String; = "ApplicationIconDb"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 212
    :try_start_0
    const-string v1, " (_id integer primary key autoincrement, pkgname text, imagedata BLOB );"

    .line 215
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationIcon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    const-string v2, "ApplicationIconDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 221
    .end local v1    # "s":Ljava/lang/String;
    :goto_1f
    return-void

    .line 217
    :catch_20
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationIconDb"

    const-string v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public static deleteApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "success":Z
    const/4 v1, 0x0

    .line 105
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_39
    .catchall {:try_start_2 .. :try_end_5} :catchall_40

    move-result-object v1

    .line 106
    if-nez v1, :cond_f

    .line 107
    const/4 v4, 0x0

    .line 117
    if-eqz v1, :cond_e

    .line 118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 122
    :cond_e
    :goto_e
    return v4

    .line 109
    :cond_f
    :try_start_f
    const-string v4, "ApplicationIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_39
    .catchall {:try_start_f .. :try_end_2e} :catchall_40

    move-result v0

    .line 111
    .local v0, "count":I
    if-lez v0, :cond_32

    .line 112
    const/4 v3, 0x1

    .line 117
    :cond_32
    if-eqz v1, :cond_37

    .line 118
    .end local v0    # "count":I
    :goto_34
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_37
    move v4, v3

    .line 122
    goto :goto_e

    .line 113
    :catch_39
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_40

    .line 117
    if-eqz v1, :cond_37

    goto :goto_34

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_40
    move-exception v4

    if-eqz v1, :cond_46

    .line 118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 117
    :cond_46
    throw v4
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 198
    .local v1, "dmappmgrDBPath":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v0

    .line 204
    :goto_9
    if-eqz v0, :cond_16

    const-string v3, "ApplicationIcon"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 205
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    :cond_16
    return-object v0

    .line 200
    :catch_17
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationIconDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 9
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 164
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 168
    .local v0, "bitmapData":[B
    :try_start_4
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_51
    .catchall {:try_start_4 .. :try_end_7} :catchall_76

    move-result-object v2

    .line 169
    if-nez v2, :cond_15

    .line 185
    if-eqz v1, :cond_f

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_f
    if-eqz v2, :cond_14

    .line 188
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 190
    :cond_14
    :goto_14
    return-object v4

    .line 172
    :cond_15
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_45

    .line 176
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 177
    const-string v4, "imagedata"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_44} :catch_51
    .catchall {:try_start_15 .. :try_end_44} :catchall_76

    move-result-object v0

    .line 185
    :cond_45
    if-eqz v1, :cond_4a

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_4a
    if-eqz v2, :cond_4f

    .line 188
    :goto_4c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4f
    move-object v4, v0

    .line 190
    goto :goto_14

    .line 181
    :catch_51
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationIcon  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_76

    .line 185
    if-eqz v1, :cond_73

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_73
    if-eqz v2, :cond_4f

    goto :goto_4c

    .line 185
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_76
    move-exception v4

    if-eqz v1, :cond_7c

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_7c
    if-eqz v2, :cond_81

    .line 188
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_81
    throw v4
.end method

.method public static getApplicationIconChangedList(Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .param p0, "aContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 128
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "lAppIconChanagedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "ApplicationIconDb"

    const-string v7, "getApplicationIconChangedList  : "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_e
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_43
    .catchall {:try_start_e .. :try_end_11} :catchall_73

    move-result-object v1

    .line 133
    if-nez v1, :cond_20

    .line 149
    if-eqz v0, :cond_19

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_19
    if-eqz v1, :cond_1e

    .line 152
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1e
    move-object v4, v3

    .line 157
    .end local v3    # "lAppIconChanagedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "lAppIconChanagedList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1f
    return-object v4

    .line 136
    .end local v4    # "lAppIconChanagedList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "lAppIconChanagedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    :try_start_20
    const-string v6, "SELECT * FROM ApplicationIcon"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_7f

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_7f

    .line 139
    :goto_2f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 140
    const-string v6, "pkgname"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "lPkgName":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_42} :catch_43
    .catchall {:try_start_20 .. :try_end_42} :catchall_73

    goto :goto_2f

    .line 145
    .end local v5    # "lPkgName":Ljava/lang/String;
    :catch_43
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    :try_start_44
    const-string v6, "ApplicationIconDb"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationIconChangedList  : Exception :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_73

    .line 149
    if-eqz v0, :cond_65

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_65
    if-eqz v1, :cond_6a

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 154
    :cond_6a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_71

    .line 155
    const/4 v3, 0x0

    :cond_71
    move-object v4, v3

    .line 157
    .restart local v4    # "lAppIconChanagedList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1f

    .line 149
    .end local v4    # "lAppIconChanagedList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_73
    move-exception v6

    if-eqz v0, :cond_79

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_79
    if-eqz v1, :cond_7e

    .line 152
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 149
    :cond_7e
    throw v6

    :cond_7f
    if-eqz v0, :cond_84

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_84
    if-eqz v1, :cond_6a

    goto :goto_67
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "exists":Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 227
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

    .line 228
    const/4 v1, 0x1

    .line 234
    :cond_2c
    :goto_2c
    return v1

    .line 229
    :catch_2d
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 231
    const-string v2, "ApplicationIconDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method static updateApplicationIcon(Landroid/content/Context;Ljava/lang/String;[B)Z
    .registers 13
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "imageData"    # [B

    .prologue
    .line 58
    const/4 v5, 0x0

    .line 59
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 60
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 62
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8b
    .catchall {:try_start_3 .. :try_end_6} :catchall_92

    move-result-object v3

    .line 63
    if-nez v3, :cond_10

    .line 64
    const/4 v7, 0x0

    .line 90
    if-eqz v2, :cond_f

    .line 91
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_f
    :goto_f
    return v7

    .line 66
    :cond_10
    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 72
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "imagedata"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 74
    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5d} :catch_8b
    .catchall {:try_start_10 .. :try_end_5d} :catchall_92

    move-result v0

    .line 76
    .local v0, "count":I
    if-lez v0, :cond_61

    .line 77
    const/4 v5, 0x1

    .line 90
    .end local v0    # "count":I
    :cond_61
    :goto_61
    if-eqz v2, :cond_66

    .line 91
    .end local v6    # "values":Landroid/content/ContentValues;
    :goto_63
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_66
    if-eqz v3, :cond_6b

    .line 94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6b
    move v7, v5

    .line 97
    goto :goto_f

    .line 79
    :cond_6d
    :try_start_6d
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string v7, "pkgname"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v7, "imagedata"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 82
    const-string v7, "ApplicationIcon"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_82} :catch_8b
    .catchall {:try_start_6d .. :try_end_82} :catchall_92

    move-result-wide v0

    .line 83
    .local v0, "count":J
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v0

    if-gez v7, :cond_61

    .line 84
    const/4 v5, 0x1

    goto :goto_61

    .line 87
    .end local v0    # "count":J
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_8b
    move-exception v4

    .line 88
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_92

    .line 90
    if-eqz v2, :cond_66

    goto :goto_63

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_92
    move-exception v7

    if-eqz v2, :cond_98

    .line 91
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_98
    throw v7
.end method
