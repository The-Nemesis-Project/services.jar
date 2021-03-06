.class public Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
.super Landroid/database/sqlite/SQLiteSecureOpenHelper;
.source "SsrmSecureDatabaseHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "ssrm_secure.db"

.field static final DATABASE_VERSION:I = 0x1

.field static final ORIG_DATABASE_NAME:Ljava/lang/String; = "ssrm_org.db"

.field private static final TAG:Ljava/lang/String; = "SSRMv2:SsrmSecureDatabaseHelper"

.field static mPassword:[B

.field static sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;


# instance fields
.field db_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    .line 35
    const-string v0, "/data/system/"

    iput-object v0, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-class v1, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    if-nez v0, :cond_11

    .line 28
    new-instance v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    const-string/jumbo v2, "ssrm_secure.db"

    invoke-direct {v0, p0, v2}, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;

    .line 30
    :cond_11
    sget-object v0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public generateSecureDB(Ljava/lang/String;)V
    .registers 6
    .param p1, "passwd"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ssrm_org.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "orig_db_file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->db_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ssrm_secure.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "sec_db_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_44

    .line 43
    const-string v2, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v3, "Original Plain database file does not exist"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_43
    return-void

    .line 47
    :cond_44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 49
    const-string v2, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v3, "Delete secure database file"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_54
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->mPassword:[B

    .line 55
    :try_start_5a
    sget-object v2, Lcom/android/server/ssrm/SsrmSecureDatabaseHelper;->mPassword:[B

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_60

    goto :goto_43

    .line 56
    :catch_60
    move-exception v2

    goto :goto_43
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 67
    const-string v0, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v1, "onCreate::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    const-string v0, "SSRMv2:SsrmSecureDatabaseHelper"

    const-string v1, "onUpgrade::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
