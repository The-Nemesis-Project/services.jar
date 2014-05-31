.class public Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;
.super Ljava/lang/Object;
.source "ContainerStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "ContainerStorageProvider"

.field private static mQuotesPreferencesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

.field mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    const-class v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_10f

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    .line 25
    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 27
    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    .line 30
    sput-object v2, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    .line 32
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 33
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/knox/container/contentprovider/DBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    .line 35
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerid"

    const-string v2, "containerid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "admin_uid"

    const-string v2, "admin_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "packages"

    const-string v2, "packages"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "original_signature"

    const-string v2, "original_signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "installation_source"

    const-string v2, "installation_source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "app_uid"

    const-string v2, "app_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_ACTIVESTATUS_NAME:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "activestatus"

    const-string v2, "activestatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "password"

    const-string v2, "password"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "passwordstatus"

    const-string v2, "passwordstatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "securitytext"

    const-string v2, "securitytext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "securityicon"

    const-string v2, "securityicon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "androidid"

    const-string v2, "androidid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "failedpasswordattempts"

    const-string v2, "failedpasswordattempts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "locktype"

    const-string v2, "locktype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containertype"

    const-string v2, "containertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerLockOnScreenLock"

    const-string v2, "containerLockOnScreenLock"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "containerPwdVerfyOnModeChange"

    const-string v2, "containerPwdVerfyOnModeChange"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deviceFirmwareVersion"

    const-string v2, "deviceFirmwareVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "new_signature_creationtime"

    const-string v2, "new_signature_creationtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    const-string v1, "orig_signature"

    const-string v2, "orig_signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->AUTHORITY:Ljava/lang/String;

    sget-object v2, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void

    .line 22
    :cond_10f
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    .line 28
    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider$ContainerDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;)V

    invoke-static {p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    .line 95
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mDbHelper:Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/ContainerStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    return-void
.end method

.method private checkIfNullUriMatcher(Landroid/net/Uri;)Z
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-eqz p1, :cond_8

    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_3a

    .line 180
    :cond_8
    const-string v3, "ContainerStorageProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri is null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_3b

    move v0, v1

    :goto_19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " uri matcher is null? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v4, :cond_28

    move v2, v1

    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in query method"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 183
    :cond_3a
    return v2

    :cond_3b
    move v0, v2

    .line 180
    goto :goto_19
.end method

.method private getCursorForQuery(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 17
    .param p1, "mSQLiteQueryBuilderObj"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 123
    const/4 v9, 0x0

    .line 125
    .local v9, "mCursorObj":Landroid/database/Cursor;
    :try_start_f
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 126
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 128
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 129
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2c
    .catchall {:try_start_f .. :try_end_2b} :catchall_37

    .line 140
    .end local v9    # "mCursorObj":Landroid/database/Cursor;
    :goto_2b
    return-object v9

    .line 130
    .restart local v9    # "mCursorObj":Landroid/database/Cursor;
    :catch_2c
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2d
    const-string v0, "ContainerStorageProvider"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_2b

    .line 132
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v0

    throw v0

    .line 138
    .end local v9    # "mCursorObj":Landroid/database/Cursor;
    :cond_39
    const-string v1, "ContainerStorageProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSQLiteDataBaseObj is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7c

    const/4 v0, 0x1

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSQLiteQueryBuilderObj is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_7e

    const/4 v0, 0x1

    :goto_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSQLiteDataBaseObj is open? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "ContainerStorageProvider"

    const-string v1, "returning null cursor"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v9, 0x0

    goto :goto_2b

    .line 138
    :cond_7c
    const/4 v0, 0x0

    goto :goto_4b

    :cond_7e
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    if-nez v0, :cond_b

    .line 101
    new-instance v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    .line 103
    :cond_b
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSelfInstance:Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    return-object v0
.end method

.method private getSQLiteQueryBuilderObj(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 148
    .local v0, "mSQLiteQueryBuilderObj":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->updateBuilderObj(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method private getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 162
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_22
    const-string v0, "ContainerStorageProvider"

    const-string v1, "container database"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_NAME:Ljava/lang/String;

    .line 171
    :goto_2b
    return-object v0

    .line 167
    :pswitch_2c
    const-string v0, "ContainerStorageProvider"

    const-string v1, "active status database"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_TABLE_ACTIVESTATUS_NAME:Ljava/lang/String;

    goto :goto_2b

    .line 170
    :pswitch_36
    const-string v0, "ContainerStorageProvider"

    const-string v1, "certificate manager database table"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_TABLE_NAME:Ljava/lang/String;

    goto :goto_2b

    .line 162
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2c
        :pswitch_36
    .end packed-switch
.end method

.method private updateBuilderObj(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V
    .registers 5
    .param p1, "mSQLiteQueryBuilderObj"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_12

    .line 155
    const-string v0, "ContainerStorageProvider"

    const-string/jumbo v1, "updatebuilderobj"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mQuotesPreferencesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 159
    :cond_12
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 234
    sget-boolean v3, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_15

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 235
    :cond_15
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 249
    :goto_1b
    return v2

    .line 238
    :cond_1c
    const/4 v0, 0x0

    .line 239
    .local v0, "count":I
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 240
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 242
    const-string v2, "ContainerStorageProvider"

    const-string v3, "deleting database"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 244
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 245
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v1    # "tableName":Ljava/lang/String;
    :goto_49
    move v2, v0

    .line 249
    goto :goto_1b

    .line 247
    :cond_4b
    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db is null ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_68

    :goto_5c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    :cond_68
    const/4 v2, 0x0

    goto :goto_5c
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 224
    :goto_7
    return-object v1

    .line 192
    :cond_8
    if-eqz p2, :cond_89

    .line 193
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 197
    .local v5, "values":Landroid/content/ContentValues;
    :goto_f
    const-wide/16 v2, 0x0

    .line 198
    .local v2, "rowId":J
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_70

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 199
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "tableName":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    const-string v6, "ContainerStorageProvider"

    const-string v7, "inserting database"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 203
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 204
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 206
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_70

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "noteUri":Landroid/net/Uri;
    :try_start_44
    sget-object v6, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_b0

    .line 221
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_66} :catch_66

    .line 226
    :catch_66
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "ContainerStorageProvider"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v4    # "tableName":Ljava/lang/String;
    :cond_70
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert row into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    .end local v2    # "rowId":J
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_89
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .restart local v5    # "values":Landroid/content/ContentValues;
    goto :goto_f

    .line 210
    .restart local v1    # "noteUri":Landroid/net/Uri;
    .restart local v2    # "rowId":J
    .restart local v4    # "tableName":Ljava/lang/String;
    :pswitch_8f
    :try_start_8f
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 223
    :goto_95
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_7

    .line 214
    :pswitch_a1
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 216
    goto :goto_95

    .line 218
    :pswitch_a8
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ad} :catch_66

    move-result-object v1

    .line 219
    goto :goto_95

    .line 208
    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_a1
        :pswitch_a8
    .end packed-switch
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 109
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    move-result v0

    if-eqz v0, :cond_21

    .line 110
    const/4 v7, 0x0

    .line 116
    :goto_1f
    monitor-exit p0

    return-object v7

    .line 113
    :cond_21
    :try_start_21
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getSQLiteQueryBuilderObj(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .local v1, "mSQLiteQueryBuilderObj":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 114
    invoke-direct/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getCursorForQuery(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_15

    move-result-object v7

    .line 116
    .local v7, "mcursor":Landroid/database/Cursor;
    goto :goto_1f
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 253
    monitor-enter p0

    :try_start_2
    sget-boolean v3, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->$assertionsDisabled:Z

    if-nez v3, :cond_19

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_19

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2

    .line 254
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->checkIfNullUriMatcher(Landroid/net/Uri;)Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    move-result v3

    if-eqz v3, :cond_22

    move v0, v2

    .line 271
    :cond_20
    :goto_20
    monitor-exit p0

    return v0

    .line 257
    :cond_22
    const/4 v0, 0x0

    .line 258
    .local v0, "count":I
    :try_start_23
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 259
    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getTableNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "tableName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 261
    const-string v2, "ContainerStorageProvider"

    const-string/jumbo v3, "updating database"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 263
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 264
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_20

    .line 266
    .end local v1    # "tableName":Ljava/lang/String;
    :cond_51
    const-string v3, "ContentProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db is null ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_90

    :goto_62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_20

    .line 268
    const-string v2, "ContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db is open ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->mSQLiteDataBaseObj:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_23 .. :try_end_8f} :catchall_16

    goto :goto_20

    .line 266
    :cond_90
    const/4 v2, 0x0

    goto :goto_62
.end method
