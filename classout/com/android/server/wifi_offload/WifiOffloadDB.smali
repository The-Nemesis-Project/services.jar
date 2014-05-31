.class public Lcom/android/server/wifi_offload/WifiOffloadDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiOffloadDB.java"


# static fields
.field public static final COLUMN_DATA_USAGE:Ljava/lang/String; = "datausage"

.field public static final COLUMN_DIALOG_STATUS:Ljava/lang/String; = "dialogstatus"

.field public static final COLUMN_LASTUSED_DATE:Ljava/lang/String; = "lastuseddate"

.field public static final COLUMN_LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "networktype"

.field public static final COLUMN_OFFLOAD_FLAG:Ljava/lang/String; = "offload"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "pkgname"

.field public static final COLUMN_STATION_ID:Ljava/lang/String; = "stationid"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "userid"

.field public static final COLUMN_WIFI_BSSID:Ljava/lang/String; = "wifibssid"

.field public static final COLUMN_WIFI_SSID:Ljava/lang/String; = "wifissid"

.field public static final DATABASE_NAME:Ljava/lang/String; = "wifioffload.db"

.field static final DATABASE_VERSION:I = 0x2

.field public static final DATA_USAGE_TABLE:Ljava/lang/String; = "data_usage"

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_OFFLOAD_TABLE:Ljava/lang/String; = "wifi_data"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "WifiOffloadDB"

    sput-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string/jumbo v0, "wifioffload.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method

.method private createWiFiData(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    const-string v0, "CREATE TABLE wifi_data(_id INTEGER PRIMARY KEY AUTOINCREMENT,stationid INTEGER,wifissid TEXT NOT NULL,wifibssid TEXT,lastuseddate TEXT,dialogstatus INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "CREATE TABLE data_usage(_id INTEGER PRIMARY KEY AUTOINCREMENT,userid INTEGER,pkgname TEXT NOT NULL,datausage INTEGER,launchcount INTEGER,offload INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "tableName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "count":I
    if-nez p1, :cond_e

    .line 137
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 140
    :cond_e
    invoke-virtual {p1, p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 141
    return v0
.end method

.method public insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p1, :cond_d

    .line 100
    sget-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v1, "dbase is null , so recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 103
    :cond_d
    const-string v0, ""

    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 104
    return-void
.end method

.method public isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "stationID"    # I

    .prologue
    const/4 v4, 0x0

    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, "available":Z
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "wifibssid"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wifibssid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stationid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "wifi_data"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 154
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_52

    .line 155
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4f

    .line 156
    const/4 v7, 0x1

    .line 158
    :cond_4f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_52
    return v7
.end method

.method public isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z
    .registers 6
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "stationID"    # I
    .param p4, "networkType"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->createWiFiData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading settings database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 120
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 122
    .local v0, "sqlBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 123
    if-nez p1, :cond_16

    .line 124
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    :cond_16
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 127
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8
.end method

.method public updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "dbase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "tableName"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "count":I
    if-nez p1, :cond_e

    .line 110
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 113
    :cond_e
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 114
    return v0
.end method
