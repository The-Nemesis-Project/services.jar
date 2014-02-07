.class public Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EcppStorageProvider"


# instance fields
.field protected mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;

    invoke-direct {v2, p0}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;-><init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V

    invoke-static {p1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    .line 72
    :try_start_e
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 73
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_17} :catch_36
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_54

    .line 85
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_17
    return-void

    .line 74
    :catch_18
    move-exception v1

    .line 75
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. getWritableDatabase SQLiteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 78
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_36
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. enableWriteAheadLogging IllegalStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 82
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_54
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "EcppStorageProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to OPEN/CREATE the database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 9
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 219
    const-string v0, ""

    .line 221
    .local v0, "adminName":Ljava/lang/String;
    if-nez p1, :cond_6

    move-object v1, v0

    .line 232
    .end local v0    # "adminName":Ljava/lang/String;
    .local v1, "adminName":Ljava/lang/String;
    :goto_5
    return-object v1

    .line 224
    .end local v1    # "adminName":Ljava/lang/String;
    .restart local v0    # "adminName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "clsName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "compomentName":Ljava/lang/String;
    if-eqz v3, :cond_2f

    .line 229
    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    move-object v1, v0

    .line 232
    .end local v0    # "adminName":Ljava/lang/String;
    .restart local v1    # "adminName":Ljava/lang/String;
    goto :goto_5
.end method


# virtual methods
.method public checkOldPasswordHistory(I[B)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "newPasswordHash"    # [B

    .prologue
    const/4 v7, 0x0

    .line 857
    const/4 v1, 0x0

    .line 858
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v4, "PASSWORD_HISTORY"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "oldPasswordHashValue"

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 862
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_41

    .line 863
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 864
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 865
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 866
    const/4 v1, 0x1

    .line 871
    :cond_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 873
    :cond_41
    return v1
.end method

.method public getAllowBluetoothMode(ILandroid/content/ComponentName;)I
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 718
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBluetoothMode"

    const/4 v5, 0x0

    const-wide/16 v6, 0x2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    move-result-wide v0

    long-to-int v0, v0

    .line 723
    :goto_f
    return v0

    .line 721
    :catch_10
    move-exception v8

    .line 722
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    const/4 v0, 0x2

    goto :goto_f
.end method

.method public getAllowBrowser(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 839
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowBrowser"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 843
    :goto_d
    return v0

    .line 841
    :catch_e
    move-exception v6

    .line 842
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 843
    goto :goto_d
.end method

.method public getAllowCamera(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 819
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowCamera"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 823
    :goto_d
    return v0

    .line 821
    :catch_e
    move-exception v6

    .line 822
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 823
    goto :goto_d
.end method

.method public getAllowDesktopSync(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 739
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowDesktopSync"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 743
    :goto_d
    return v0

    .line 741
    :catch_e
    move-exception v6

    .line 742
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 743
    goto :goto_d
.end method

.method public getAllowInternetSharing(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 702
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowInternetSharing"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 707
    :goto_d
    return v0

    .line 705
    :catch_e
    move-exception v6

    .line 706
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 707
    goto :goto_d
.end method

.method public getAllowIrDA(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 759
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowIrDA"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 763
    :goto_d
    return v0

    .line 761
    :catch_e
    move-exception v6

    .line 762
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 763
    goto :goto_d
.end method

.method public getAllowPOPIMAPEmail(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 799
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowPOPIMAPEmail"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 803
    :goto_d
    return v0

    .line 801
    :catch_e
    move-exception v6

    .line 802
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 803
    goto :goto_d
.end method

.method public getAllowStorageCard(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 779
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowStorageCard"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 783
    :goto_d
    return v0

    .line 781
    :catch_e
    move-exception v6

    .line 782
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 783
    goto :goto_d
.end method

.method public getAllowTextMessaging(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 682
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowTextMessaging"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 686
    :goto_d
    return v0

    .line 684
    :catch_e
    move-exception v6

    .line 685
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 686
    goto :goto_d
.end method

.method public getAllowWifi(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 662
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowWifi"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 666
    :goto_d
    return v0

    .line 664
    :catch_e
    move-exception v6

    .line 665
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 666
    goto :goto_d
.end method

.method protected getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;
    .registers 12
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v6, 0x0

    .line 197
    const-string v1, "0"

    .line 198
    .local v1, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "whereClause":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_52

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 207
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_4e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    :goto_51
    return-object v1

    .line 211
    :cond_52
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available on this policy set yet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method public getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 538
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForDisable"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f

    move-result-wide v0

    long-to-int v0, v0

    .line 543
    :goto_e
    return v0

    .line 541
    :catch_f
    move-exception v6

    .line 542
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 543
    goto :goto_e
.end method

.method public getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 521
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumFailedPasswordsForWipe"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_f

    move-result-wide v0

    long-to-int v0, v0

    .line 526
    :goto_e
    return v0

    .line 524
    :catch_f
    move-exception v6

    .line 525
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 526
    goto :goto_e
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 582
    if-nez p2, :cond_11

    .line 583
    :try_start_4
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToLockPassword"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 596
    :goto_10
    return-wide v0

    .line 587
    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToLockPassword"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_28

    move-result-wide v0

    goto :goto_10

    .line 591
    :catch_1e
    move-exception v6

    .line 592
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getMaximumTimeToLock: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 593
    goto :goto_10

    .line 594
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_28
    move-exception v6

    .line 595
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaximumTimeToLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 596
    goto :goto_10
.end method

.method public getPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;)J
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 607
    if-nez p2, :cond_11

    .line 608
    :try_start_4
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "maximumTimeToUnmount"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 621
    :goto_10
    return-wide v0

    .line 612
    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "maximumTimeToUnmount"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_28

    move-result-wide v0

    goto :goto_10

    .line 616
    :catch_1e
    move-exception v6

    .line 617
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordEnabledContainerLockTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 618
    goto :goto_10

    .line 619
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_28
    move-exception v6

    .line 620
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordEnabledContainerLockTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 621
    goto :goto_10
.end method

.method public getPasswordExpirationDate(ILandroid/content/ComponentName;)J
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 497
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationDate"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v7

    .line 502
    .local v7, "passwordExpirationDate":J
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationDate: getting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 507
    .end local v7    # "passwordExpirationDate":J
    :goto_24
    return-wide v7

    .line 504
    :catch_25
    move-exception v6

    .line 505
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationDate: something went wrong, returning 0"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 507
    const-wide/16 v7, 0x0

    goto :goto_24
.end method

.method public getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 632
    if-nez p2, :cond_11

    .line 633
    :try_start_4
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordExpirationTimeout"

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    .line 646
    :goto_10
    return-wide v0

    .line 637
    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordExpirationTimeout"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_28

    move-result-wide v0

    goto :goto_10

    .line 641
    :catch_1e
    move-exception v6

    .line 642
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordExpirationTimeout: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 643
    goto :goto_10

    .line 644
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_28
    move-exception v6

    .line 645
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordExpirationTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v7

    .line 646
    goto :goto_10
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 474
    if-nez p2, :cond_11

    .line 475
    :try_start_3
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordHistory"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J

    move-result-wide v0

    long-to-int v0, v0

    .line 486
    :goto_10
    return v0

    .line 478
    :cond_11
    const-string v0, "PASSWORD_POLICY"

    const-string v1, "passwordHistory"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_28

    move-result v0

    goto :goto_10

    .line 481
    :catch_1e
    move-exception v6

    .line 482
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v0, "EcppStorageProvider"

    const-string v1, "getPasswordHistory: Policy not yet set"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 483
    goto :goto_10

    .line 484
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :catch_28
    move-exception v6

    .line 485
    .local v6, "ex":Ljava/lang/Exception;
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPasswordHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 486
    goto :goto_10
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 311
    :try_start_0
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - getPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLength"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_30

    move-result-wide v0

    long-to-int v0, v0

    .line 318
    :goto_2f
    return v0

    .line 316
    :catch_30
    move-exception v6

    .line 317
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public getPasswordMinimumLetters(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 331
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLetters"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 336
    :goto_d
    return v0

    .line 334
    :catch_e
    move-exception v6

    .line 335
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumLowerCase(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 347
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 352
    :goto_d
    return v0

    .line 350
    :catch_e
    move-exception v6

    .line 351
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 363
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNonLetter"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 368
    :goto_d
    return v0

    .line 366
    :catch_e
    move-exception v6

    .line 367
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 379
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumNumeric"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 384
    :goto_d
    return v0

    .line 382
    :catch_e
    move-exception v6

    .line 383
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 411
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumSymbols"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 416
    :goto_d
    return v0

    .line 414
    :catch_e
    move-exception v6

    .line 415
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordMinimumUpperCase(ILandroid/content/ComponentName;)I
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 395
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordMinimumUpperCase"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_e

    move-result-wide v0

    long-to-int v0, v0

    .line 400
    :goto_d
    return v0

    .line 398
    :catch_e
    move-exception v6

    .line 399
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 437
    :try_start_0
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordQuality"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_11

    move-result-wide v0

    long-to-int v7, v0

    .line 440
    .local v7, "quality":I
    if-gez v7, :cond_10

    .line 441
    const/4 v7, 0x0

    .line 447
    .end local v7    # "quality":I
    :cond_10
    :goto_10
    return v7

    .line 445
    :catch_11
    move-exception v6

    .line 446
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    const/4 v7, 0x0

    goto :goto_10
.end method

.method public getPasswordStateInfoFromDB(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 923
    const/16 v4, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "containerid"

    aput-object v4, v2, v5

    const-string v4, "quality"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v7, "length"

    aput-object v7, v2, v4

    const/4 v4, 0x3

    const-string v7, "uppercase"

    aput-object v7, v2, v4

    const/4 v4, 0x4

    const-string v7, "lowercase"

    aput-object v7, v2, v4

    const/4 v4, 0x5

    const-string v7, "letters"

    aput-object v7, v2, v4

    const/4 v4, 0x6

    const-string v7, "numeric"

    aput-object v7, v2, v4

    const/4 v4, 0x7

    const-string v7, "nonletters"

    aput-object v7, v2, v4

    const/16 v4, 0x8

    const-string v7, "symbols"

    aput-object v7, v2, v4

    const/16 v4, 0x9

    const-string v7, "simplepassword"

    aput-object v7, v2, v4

    const/16 v4, 0xa

    const-string v7, "charactersequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xb

    const-string v7, "digitsequencelength"

    aput-object v7, v2, v4

    const/16 v4, 0xc

    const-string v7, "MaximumCharacteroccurrences"

    aput-object v7, v2, v4

    .line 938
    .local v2, "project":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, "where":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v7, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v4, v7, v2, v3, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 942
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_69

    .line 980
    :goto_68
    return-object v1

    .line 945
    :cond_69
    new-instance v1, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    invoke-direct {v1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;-><init>()V

    .line 946
    .local v1, "obj":Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    if-eqz v1, :cond_125

    .line 947
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 949
    :cond_73
    const-string v4, "containerid"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setContainerId(I)V

    .line 951
    const-string v4, "quality"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordQuality(I)V

    .line 953
    const-string v4, "length"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLength(I)V

    .line 955
    const-string v4, "uppercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordUppercase(I)V

    .line 957
    const-string v4, "lowercase"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLowercase(I)V

    .line 959
    const-string v4, "letters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordLetters(I)V

    .line 961
    const-string v4, "numeric"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNumeric(I)V

    .line 963
    const-string v4, "nonletters"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordNonLetter(I)V

    .line 965
    const-string v4, "symbols"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSymbols(I)V

    .line 967
    const-string v4, "simplepassword"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_12a

    move v4, v5

    :goto_f5
    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setPasswordSimple(Z)V

    .line 970
    const-string v4, "charactersequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharSeqLength(I)V

    .line 972
    const-string v4, "digitsequencelength"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setDigitSeqLength(I)V

    .line 974
    const-string v4, "MaximumCharacteroccurrences"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->setCharMaxOccurrencesCount(I)V

    .line 976
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_73

    .line 979
    :cond_125
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_68

    :cond_12a
    move v4, v6

    .line 967
    goto :goto_f5
.end method

.method public getSimplePasswordEnabled(ILandroid/content/ComponentName;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x1

    .line 458
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "allowSimplePassword"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v0

    .line 462
    :goto_d
    return v0

    .line 460
    :catch_e
    move-exception v6

    .line 461
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    .line 462
    goto :goto_d
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    .registers 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "getHigherValue"    # Z

    .prologue
    .line 132
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;ZJ)J
    .registers 18
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "getHigherValue"    # Z
    .param p6, "defaultValue"    # J

    .prologue
    .line 145
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " admin = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getHigherValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "last":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "passwordContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "adminName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_86

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND componentName=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 157
    :cond_86
    iget-object v7, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, p1, v8, v6, v9}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 160
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_f5

    .line 161
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 162
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 165
    :cond_a0
    :goto_a0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 166
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 168
    .local v1, "current":J
    if-eqz p5, :cond_b3

    .line 169
    cmp-long v7, v1, v4

    if-lez v7, :cond_a0

    .line 170
    move-wide v4, v1

    goto :goto_a0

    .line 173
    :cond_b3
    const-wide/16 v7, 0x1

    cmp-long v7, v4, v7

    if-ltz v7, :cond_c3

    cmp-long v7, v1, v4

    if-gez v7, :cond_a0

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_a0

    .line 174
    :cond_c3
    move-wide v4, v1

    goto :goto_a0

    .line 179
    .end local v1    # "current":J
    :cond_c5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 186
    :goto_c8
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStricterColumnValue(): tableName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " columnToSelect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RETURNING = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-wide v4

    .line 181
    :cond_f5
    const-string v7, "EcppStorageProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not available on this policy set yet"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    move-wide/from16 v4, p6

    goto :goto_c8
.end method

.method protected getStricterColumnValueForBoolean(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)Z
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnToSelect"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .param p5, "defaultValue"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    const-string v6, "EcppStorageProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " columnToSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " containerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " admin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    move v2, p5

    .line 94
    .local v2, "strictValue":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "adminName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND componentName=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p4}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_7d
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    new-array v7, v5, [Ljava/lang/String;

    aput-object p2, v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 105
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_cf

    .line 106
    :cond_8a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 107
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_cd

    move v2, v4

    .line 108
    :goto_9b
    if-nez v2, :cond_8a

    .line 112
    :cond_9d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    :goto_a0
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStricterColumnValueForBoolean(): tableName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " columnToSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RETURNING = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v2

    :cond_cd
    move v2, v5

    .line 107
    goto :goto_9b

    .line 114
    :cond_cf
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not available on this policy set yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0
.end method

.method public isPasswordVisisbilityEnabled(I)Z
    .registers 11
    .param p1, "containerId"    # I

    .prologue
    const/4 v8, 0x0

    .line 565
    :try_start_1
    const-string v1, "PASSWORD_POLICY"

    const-string v2, "passwordVisible"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getStricterColumnValue(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ComponentName;Z)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_14

    move-result-wide v0

    long-to-int v7, v0

    .line 568
    .local v7, "ret":I
    if-eqz v7, :cond_12

    const/4 v0, 0x1

    .line 571
    .end local v7    # "ret":I
    :goto_11
    return v0

    .restart local v7    # "ret":I
    :cond_12
    move v0, v8

    .line 568
    goto :goto_11

    .line 569
    .end local v7    # "ret":I
    :catch_14
    move-exception v6

    .line 570
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 571
    goto :goto_11
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_POLICY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_26

    move-result v1

    .line 306
    :goto_25
    return v1

    .line 301
    :catch_26
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EcppStorageProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: something failed trying to remove policies  and admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public removeContainer(I)Z
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "result1":Z
    const/4 v2, 0x0

    .line 271
    .local v2, "result2":Z
    const/4 v3, 0x0

    .line 273
    .local v3, "result3":Z
    :try_start_3
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_POLICY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_5c

    move-result v1

    .line 280
    :goto_1e
    :try_start_1e
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_38} :catch_80

    move-result v2

    .line 287
    :goto_39
    :try_start_39
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "ACTIVE_PASSWORD_STATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_53} :catch_a4

    move-result v3

    .line 293
    :goto_54
    if-eqz v1, :cond_c8

    if-eqz v2, :cond_c8

    if-eqz v3, :cond_c8

    const/4 v4, 0x1

    :goto_5b
    return v4

    .line 275
    :catch_5c
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove password policies for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_80
    move-exception v0

    .line 283
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove password history for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a4
    move-exception v0

    .line 290
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "EcppStorageProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: something failed trying to remove active password state table for the container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c8
    const/4 v4, 0x0

    goto :goto_5b
.end method

.method public removeOldestPasswordIfRequired(II)V
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "passwordPolicyHistoryLength"    # I

    .prologue
    const/4 v8, 0x0

    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "currPaswordHistoryLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, "whereClause":Ljava/lang/String;
    const-string v2, "_index ASC"

    .line 880
    .local v2, "orderBy":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_index"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6, v3, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 883
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5c

    .line 884
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 885
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 886
    :cond_2f
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_59

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 889
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v5, "PASSWORD_HISTORY"

    invoke-virtual {v4, v5, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->delete(Ljava/lang/String;Ljava/lang/String;)Z

    .line 890
    add-int/lit8 v0, v0, -0x1

    .line 891
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 894
    :cond_59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 896
    :cond_5c
    return-void
.end method

.method public setActivePasswordState(IIIIIIIIIZIII)V
    .registers 18
    .param p1, "containerId"    # I
    .param p2, "quality"    # I
    .param p3, "length"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "letters"    # I
    .param p7, "numbers"    # I
    .param p8, "nonletter"    # I
    .param p9, "symbols"    # I
    .param p10, "passwordSimple"    # Z
    .param p11, "charSeqLength"    # I
    .param p12, "digitSeqLength"    # I
    .param p13, "charMaxOccurrencesCount"    # I

    .prologue
    .line 901
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 902
    .local v0, "sContentValues":Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    .local v1, "where":Ljava/lang/String;
    if-eqz v0, :cond_99

    .line 904
    const-string v2, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 905
    const-string v2, "quality"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    const-string v2, "length"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string v2, "uppercase"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v2, "lowercase"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    const-string v2, "letters"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    const-string v2, "numeric"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v2, "nonletters"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    const-string v2, "symbols"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    const-string v3, "simplepassword"

    if-eqz p10, :cond_9a

    const/4 v2, 0x1

    :goto_70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    const-string v2, "charactersequencelength"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    const-string v2, "digitsequencelength"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string v2, "MaximumCharacteroccurrences"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v3, "ACTIVE_PASSWORD_STATE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 920
    :cond_99
    return-void

    .line 913
    :cond_9a
    const/4 v2, 0x0

    goto :goto_70
.end method

.method public setAllowBluetoothMode(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 712
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBluetoothMode"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 714
    return-void
.end method

.method public setAllowBrowser(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 828
    const/4 v4, 0x0

    .line 829
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 830
    const/4 v4, 0x1

    .line 833
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowBrowser"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 835
    return-void
.end method

.method public setAllowCamera(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 808
    const/4 v4, 0x0

    .line 809
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 810
    const/4 v4, 0x1

    .line 813
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowCamera"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 815
    return-void
.end method

.method public setAllowDesktopSync(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 728
    const/4 v4, 0x0

    .line 729
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 730
    const/4 v4, 0x1

    .line 733
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowDesktopSync"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 735
    return-void
.end method

.method public setAllowInternetSharing(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 691
    const/4 v4, 0x0

    .line 692
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 693
    const/4 v4, 0x1

    .line 696
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowInternetSharing"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 698
    return-void
.end method

.method public setAllowIrDA(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 748
    const/4 v4, 0x0

    .line 749
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 750
    const/4 v4, 0x1

    .line 753
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowIrDA"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 755
    return-void
.end method

.method public setAllowPOPIMAPEmail(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 788
    const/4 v4, 0x0

    .line 789
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 790
    const/4 v4, 0x1

    .line 793
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowPOPIMAPEmail"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 795
    return-void
.end method

.method public setAllowStorageCard(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 768
    const/4 v4, 0x0

    .line 769
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 770
    const/4 v4, 0x1

    .line 773
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowStorageCard"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 775
    return-void
.end method

.method public setAllowTextMessaging(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 671
    const/4 v4, 0x0

    .line 672
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 673
    const/4 v4, 0x1

    .line 676
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowTextMessaging"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 678
    return-void
.end method

.method public setAllowWifi(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # Z

    .prologue
    .line 651
    const/4 v4, 0x0

    .line 652
    .local v4, "val":I
    if-eqz p3, :cond_4

    .line 653
    const/4 v4, 0x1

    .line 656
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowWifi"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 658
    return-void
.end method

.method protected setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V
    .registers 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnValue"    # I
    .param p5, "containerId"    # I

    .prologue
    .line 237
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValues(): table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " columnValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 241
    return-void
.end method

.method protected setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V
    .registers 13
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "columnName"    # Ljava/lang/String;
    .param p4, "columnValue"    # J
    .param p6, "containerId"    # I

    .prologue
    .line 245
    const-string v3, "EcppStorageProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setColumnValuesAsLong(): table = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " admin = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columnValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v1, "sContentValues":Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    if-lez p6, :cond_ab

    .line 252
    invoke-direct {p0, p2}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getAdminName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "adminName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "passwordContainerID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "where":Ljava/lang/String;
    const-string v3, "passwordContainerID"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a6

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "componentName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    const-string v3, "componentName"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_a6
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 266
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    :cond_ab
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 548
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForDisable"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 551
    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # I

    .prologue
    .line 531
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumFailedPasswordsForWipe"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 534
    return-void
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # J

    .prologue
    .line 576
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToLockPassword"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 578
    return-void
.end method

.method public setOldPasswordToHistory(I[B)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "newPasswordHash"    # [B

    .prologue
    const/4 v3, 0x0

    .line 848
    invoke-virtual {p0, p1, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->removeOldestPasswordIfRequired(II)V

    .line 849
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 850
    .local v0, "sContentValues":Landroid/content/ContentValues;
    const-string v1, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v1, "oldPasswordHashValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 853
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->mEcppDbHelper:Lcom/sec/knox/container/contentprovider/EcppStorageHelper;

    const-string v2, "PASSWORD_HISTORY"

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/knox/container/contentprovider/EcppStorageHelper;->insertOrUpdate(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 854
    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(ILandroid/content/ComponentName;J)V
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # J

    .prologue
    .line 601
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "maximumTimeToUnmount"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 603
    return-void
.end method

.method public setPasswordExpirationDate(ILandroid/content/ComponentName;J)V
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "passwordExpirationDate"    # J

    .prologue
    .line 513
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordExpirationDate: setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationDate"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 517
    return-void
.end method

.method public setPasswordExpirationTimeout(ILandroid/content/ComponentName;J)V
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "value"    # J

    .prologue
    .line 626
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordExpirationTimeout"

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValuesAsLong(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;JI)V

    .line 628
    return-void
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "history"    # I

    .prologue
    .line 491
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordHistory"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 493
    return-void
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 323
    const-string v0, "EcppStorageProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container - setPasswordMinimumLength(): containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " admin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLength"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 327
    return-void
.end method

.method public setPasswordMinimumLetters(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 341
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLetters"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 343
    return-void
.end method

.method public setPasswordMinimumLowerCase(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 357
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumLowerCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 359
    return-void
.end method

.method public setPasswordMinimumNonLetter(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 373
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNonLetter"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 375
    return-void
.end method

.method public setPasswordMinimumNumeric(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 389
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumNumeric"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 391
    return-void
.end method

.method public setPasswordMinimumSymbols(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 421
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumSymbols"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 423
    return-void
.end method

.method public setPasswordMinimumUpperCase(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 405
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordMinimumUpperCase"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 407
    return-void
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 452
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "passwordQuality"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 454
    return-void
.end method

.method public setPasswordVisibilityEnabled(IZ)V
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "val"    # Z

    .prologue
    .line 554
    const/4 v4, 0x0

    .line 555
    .local v4, "value":I
    if-eqz p2, :cond_4

    .line 556
    const/4 v4, 0x1

    .line 559
    :cond_4
    const-string v1, "PASSWORD_POLICY"

    const/4 v2, 0x0

    const-string v3, "passwordVisible"

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 561
    return-void
.end method

.method public setSimplePasswordEnabled(ILandroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "enabled"    # Z

    .prologue
    .line 467
    if-eqz p3, :cond_e

    const/4 v4, 0x1

    .line 468
    .local v4, "value":I
    :goto_3
    const-string v1, "PASSWORD_POLICY"

    const-string v3, "allowSimplePassword"

    move-object v0, p0

    move-object v2, p2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/EcppStorageProvider;->setColumnValues(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 470
    return-void

    .line 467
    .end local v4    # "value":I
    :cond_e
    const/4 v4, 0x0

    goto :goto_3
.end method
