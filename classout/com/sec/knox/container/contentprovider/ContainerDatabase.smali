.class public Lcom/sec/knox/container/contentprovider/ContainerDatabase;
.super Ljava/lang/Object;
.source "ContainerDatabase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContainerDatabase"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppPackagesSignedWithSig(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sig"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 736
    if-nez p1, :cond_4

    .line 767
    :goto_3
    return-object v1

    .line 739
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original_signature=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packages"

    aput-object v6, v2, v5

    .line 743
    .local v2, "project":[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 745
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_35

    .line 746
    const-string v5, "ContainerDatabase"

    const-string v6, "getAppPackagesSignedWithSig call is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 749
    :cond_35
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3f

    .line 751
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 754
    :cond_3f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v1, "packageArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47
    const-string v5, "packages"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_65

    .line 759
    const-string v5, "ContainerDatabase"

    invoke-static {v5, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :goto_5b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_47

    .line 766
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 762
    :cond_65
    const-string v5, "ContainerDatabase"

    const-string v6, "getAppPackagesSignedWithSig is not having any package in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private removeSigningSignature(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "originalSignature":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 774
    .local v2, "signaturesAsString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 776
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getOriginalSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_49

    .line 778
    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 779
    const-string v6, "NA"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    .line 780
    invoke-direct {p0, p1, v2, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getAppPackagesSignedWithSig(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 782
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_4a

    .line 783
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orig_signature=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, "where":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v6

    sget-object v7, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4a

    .line 793
    .end local v3    # "where":Ljava/lang/String;
    :cond_49
    :goto_49
    return v4

    :cond_4a
    move v4, v5

    goto :goto_49
.end method

.method private returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "project"    # [Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "where"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "projection":[Ljava/lang/String;
    if-eqz p2, :cond_17

    .line 68
    move-object v2, p2

    .line 73
    if-eqz v2, :cond_1f

    if-eqz p1, :cond_1f

    .line 74
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v0

    move-object v1, p3

    move-object v3, p4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 79
    :goto_16
    return-object v4

    .line 70
    :cond_17
    const-string v0, "ContainerDatabase"

    const-string v1, "Column name is null in returnCursorAsPerColumnName"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 77
    :cond_1f
    const-string v5, "ContainerDatabase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "projection object is null? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_47

    move v0, v1

    :goto_2f
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "context is null? "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_49

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_47
    move v0, v3

    goto :goto_2f

    :cond_49
    move v1, v3

    goto :goto_3b
.end method


# virtual methods
.method public delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 412
    const-string v3, "ContainerDatabase"

    const-string v4, "  ########  update to DB delete"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "result":Z
    if-eqz p1, :cond_57

    .line 416
    :try_start_a
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->removeSigningSignature(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "containerid=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p4, v2, v4}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_4b

    move-result v3

    if-eqz v3, :cond_49

    const/4 v1, 0x1

    .line 428
    .end local v2    # "where":Ljava/lang/String;
    :goto_48
    return v1

    .line 419
    .restart local v2    # "where":Ljava/lang/String;
    :cond_49
    const/4 v1, 0x0

    goto :goto_48

    .line 421
    .end local v2    # "where":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ContainerDatabase"

    const-string v4, "exception"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    .line 426
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    const-string v3, "ContainerDatabase"

    const-string v4, "projection object is nul"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method public getAllContainerStatus(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 154
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "containerid"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "activestatus"

    aput-object v6, v4, v5

    .line 158
    .local v4, "project":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v3, "listContainerStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 162
    .local v2, "cur":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2e

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 177
    :goto_2d
    return-object v3

    .line 168
    :cond_2e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    :cond_31
    const-string v5, "containerid"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 171
    .local v1, "containerId":I
    const-string v5, "activestatus"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 173
    .local v0, "activestatus":I
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-containerid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "activestatus"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_31

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2d
.end method

.method public getAndroidId(Landroid/content/Context;I)Ljava/lang/String;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    const/4 v5, 0x0

    .line 432
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "containerid"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "androidid"

    aput-object v7, v3, v6

    .line 435
    .local v3, "project":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "where":Ljava/lang/String;
    :try_start_21
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 441
    .local v1, "cur":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_39

    .line 442
    const-string v6, "ContainerDatabase"

    const-string v7, "getAndroidId container DB is null cannot fetch the android id"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 461
    .end local v1    # "cur":Landroid/database/Cursor;
    :cond_38
    :goto_38
    return-object v0

    .line 446
    .restart local v1    # "cur":Landroid/database/Cursor;
    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 447
    const-string v6, "androidid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "androidId":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 450
    if-nez v0, :cond_38

    .line 451
    const-string v6, "ContainerDatabase"

    const-string v7, "getAndroidId android id is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_52} :catch_53

    goto :goto_38

    .line 455
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "cur":Landroid/database/Cursor;
    :catch_53
    move-exception v2

    .line 456
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAndroidId and error happend trying to get the android id from DB. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 461
    goto :goto_38
.end method

.method public getCertificateManagerSignatureCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 653
    if-nez p1, :cond_b

    .line 654
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageSignatureName context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_a
    return-object v0

    .line 657
    :cond_b
    if-nez p2, :cond_15

    .line 658
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageSignatureName signature is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 662
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 664
    .local v1, "certificateSingnatureId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "new_signature_creationtime"

    aput-object v6, v3, v5

    .line 668
    .local v3, "project":[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 671
    .local v2, "cur":Landroid/database/Cursor;
    if-nez v2, :cond_44

    .line 672
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime cursor is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 675
    :cond_44
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_55

    .line 676
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime no rows found for this query"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 681
    :cond_55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 682
    const-string v5, "new_signature_creationtime"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "certificateCreationTime":Ljava/lang/String;
    if-eqz v0, :cond_80

    .line 686
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCertificateManagerSignatureCreationTime getting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_7c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 689
    :cond_80
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureCreationTime there is no time for this certificateSingnatureId in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c
.end method

.method public getCertificateManagerSignatureCreationTime(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signature"    # [Ljava/lang/String;

    .prologue
    .line 641
    if-nez p2, :cond_b

    .line 642
    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v1, 0x0

    .line 648
    :goto_a
    return-object v1

    .line 646
    :cond_b
    const/4 v0, 0x0

    .line 647
    .local v0, "origSignatureAsString":Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureCreationTime(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 600
    if-nez p1, :cond_c

    .line 601
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 636
    :goto_b
    return v0

    .line 604
    :cond_c
    if-nez p2, :cond_17

    .line 605
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId packageName is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 606
    goto :goto_b

    .line 609
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orig_signature=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    .line 614
    .local v2, "project":[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 616
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_49

    .line 617
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId cursor is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 618
    goto :goto_b

    .line 620
    :cond_49
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_5b

    .line 621
    const-string v5, "ContainerDatabase"

    const-string v6, "getCertificateManagerSignatureId no rows found for this query"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v4

    .line 623
    goto :goto_b

    .line 625
    :cond_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 626
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 628
    .local v0, "certificateManagerSignatureId":I
    if-eq v0, v4, :cond_86

    .line 629
    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCertificateManagerSignatureId getting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :goto_82
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 632
    :cond_86
    const-string v4, "ContainerDatabase"

    const-string v5, "getCertificateManagerSignatureId there is no id for this package in DB"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method

.method public getCertificateManagerSignatureId(Landroid/content/Context;[Ljava/lang/String;)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signature"    # [Ljava/lang/String;

    .prologue
    .line 589
    if-nez p2, :cond_b

    .line 590
    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v1, -0x1

    .line 595
    :goto_a
    return v1

    .line 593
    :cond_b
    const/4 v0, 0x0

    .line 594
    .local v0, "origSignatureAsString":Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-virtual {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_a
.end method

.method public getContainerId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 120
    if-nez p1, :cond_5

    move v0, v4

    .line 149
    :goto_4
    return v0

    .line 123
    :cond_5
    const/4 v0, -0x1

    .line 124
    .local v0, "containerId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "containerid"

    aput-object v6, v2, v5

    .line 128
    .local v2, "project":[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 130
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_38

    .line 131
    const-string v5, "ContainerDatabase"

    const-string v6, "getContainerIDcall is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 132
    goto :goto_4

    .line 134
    :cond_38
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_43

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v4

    .line 137
    goto :goto_4

    .line 139
    :cond_43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    :cond_46
    const-string v4, "containerid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 143
    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got ContainerID from DB for package"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_46

    .line 147
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    const-string v4, "ContainerDatabase"

    const-string v5, "Got ContainerID from DB for package----last"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getContainerPackagesInfo(Landroid/content/Context;I)Ljava/util/HashMap;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    if-nez p1, :cond_4

    .line 184
    const/4 v3, 0x0

    .line 232
    :goto_3
    return-object v3

    .line 186
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "containerid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "where":Ljava/lang/String;
    const/4 v10, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "containerid"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "packages"

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const-string v11, "original_signature"

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const-string v11, "installation_source"

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const-string v11, "app_uid"

    aput-object v11, v5, v10

    .line 194
    .local v5, "project":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v3, "listContainerPackage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    sget-object v10, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v5, v10, v9}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 197
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_48

    .line 198
    const-string v10, "ContainerDatabase"

    const-string v11, "getContainerPackagesInfocall is null"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_48
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_59

    .line 202
    const-string v10, "ContainerDatabase"

    const-string v11, "package information not found..."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 207
    :cond_59
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    :cond_5c
    const-string v10, "containerid"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 211
    .local v0, "cId":I
    const-string v10, "packages"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "packageName":Ljava/lang/String;
    const-string v10, "original_signature"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "signature":Ljava/lang/String;
    const-string v10, "installation_source"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 215
    .local v7, "source":I
    const-string v10, "app_uid"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 217
    .local v8, "uid":I
    if-eqz v4, :cond_ca

    .line 218
    const-string v10, "ContainerDatabase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v2, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct {v2}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 220
    .local v2, "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    invoke-virtual {v2, v0}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 221
    invoke-virtual {v2, v4}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2, v7}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    .line 224
    invoke-virtual {v2, v8}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    .line 225
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v2    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_bf
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_5c

    .line 231
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 227
    :cond_ca
    const-string v10, "ContainerDatabase"

    const-string v11, "Empty package information cannot be added..."

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf
.end method

.method public getContainerParamFromDB(Landroid/content/Context;I)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    .line 238
    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "admin_uid"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "email"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "name"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "securitytext"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "securityicon"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "locktype"

    aput-object v7, v3, v6

    .line 244
    .local v3, "project":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "where":Ljava/lang/String;
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v5}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 248
    .local v1, "cur":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_45

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    const/4 v0, 0x0

    .line 279
    :goto_44
    return-object v0

    .line 253
    :cond_45
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;-><init>()V

    .line 254
    .local v0, "createContainerObj":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    :cond_4d
    const-string v6, "admin_uid"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setAdmin(I)V

    .line 259
    const-string v6, "email"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setEmail(Ljava/lang/String;)V

    .line 261
    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setName(Ljava/lang/String;)V

    .line 263
    const-string v6, "securitytext"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setSecurityText(Ljava/lang/String;)V

    .line 265
    const-string v6, "securityicon"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 268
    .local v4, "securityIcon":[B
    if-eqz v4, :cond_9c

    array-length v6, v4

    if-lez v6, :cond_9c

    .line 269
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 270
    .local v2, "imageStream":Ljava/io/ByteArrayInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setSecurityIcon(Landroid/graphics/Bitmap;)V

    .line 273
    .end local v2    # "imageStream":Ljava/io/ByteArrayInputStream;
    :cond_9c
    const-string v6, "locktype"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->setLockType(I)V

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_4d

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_44
.end method

.method public getContainerStatus(Landroid/content/Context;I)I
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    .line 283
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "containerid"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "activestatus"

    aput-object v5, v1, v4

    .line 286
    .local v1, "project":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "where":Ljava/lang/String;
    sget-object v4, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 290
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_39

    .line 291
    const-string v4, "ContainerDatabase"

    const-string v5, "Container DB is null cannot fetch the status"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    const/16 v2, 0x385

    .line 302
    :goto_38
    return v2

    .line 295
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 296
    const/4 v2, 0x0

    .line 298
    .local v2, "val":I
    :cond_3d
    const-string v4, "activestatus"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 299
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_38
.end method

.method public getFailedPasswordAttempts(Landroid/content/Context;I)I
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    const/4 v5, 0x0

    .line 478
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "containerid"

    aput-object v6, v3, v5

    const/4 v6, 0x1

    const-string v7, "failedpasswordattempts"

    aput-object v7, v3, v6

    .line 482
    .local v3, "project":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "containerid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, "where":Ljava/lang/String;
    :try_start_20
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 488
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_38

    .line 489
    const-string v6, "ContainerDatabase"

    const-string v7, "getFailedPasswordAttempts(): container DB is null cannot fetch the failedPasswordAttempts"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v2, v5

    .line 508
    .end local v0    # "cur":Landroid/database/Cursor;
    :goto_37
    return v2

    .line 494
    .restart local v0    # "cur":Landroid/database/Cursor;
    :cond_38
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 495
    const-string v6, "failedpasswordattempts"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 497
    .local v2, "failedPasswordAttempts":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 499
    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFailedPasswordAttempts() getting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_60} :catch_61

    goto :goto_37

    .line 501
    .end local v0    # "cur":Landroid/database/Cursor;
    .end local v2    # "failedPasswordAttempts":I
    :catch_61
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ContainerDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFailedPasswordAttempts(): and error happend trying to get the value from DB. Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v6, "ContainerDatabase"

    const-string v7, "getFailedPasswordAttempts() failed, getting 0"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    .line 508
    goto :goto_37
.end method

.method public getOriginalSignatures(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 699
    if-nez p1, :cond_5

    move-object v1, v5

    .line 732
    :goto_4
    return-object v1

    .line 702
    :cond_5
    const/4 v2, 0x0

    .line 703
    .local v2, "originalSignatureAsString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 704
    .local v1, "originalSignature":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packages=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "original_signature"

    aput-object v7, v3, v6

    .line 708
    .local v3, "project":[Ljava/lang/String;
    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v3, v6, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 710
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_39

    .line 711
    const-string v6, "ContainerDatabase"

    const-string v7, "getOriginalCertificatecall is null"

    invoke-static {v6, v7}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 712
    goto :goto_4

    .line 714
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_44

    .line 716
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 717
    goto :goto_4

    .line 719
    :cond_44
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 722
    :cond_47
    const-string v5, "original_signature"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 724
    const-string v5, ","

    invoke-static {v2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 725
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got Original Signature from DB for package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_47

    .line 730
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 731
    const-string v5, "ContainerDatabase"

    const-string v6, "Got Original Signature from DB for package----last"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public getPackageNames(Landroid/content/Context;I)Ljava/util/List;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_4

    .line 116
    :goto_3
    return-object v1

    .line 88
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packages"

    aput-object v6, v2, v5

    .line 92
    .local v2, "project":[Ljava/lang/String;
    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    .local v0, "cur":Landroid/database/Cursor;
    if-nez v0, :cond_2f

    .line 95
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageNamescall is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_2f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_39

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 103
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "packageArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    const-string v5, "packages"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_5f

    .line 108
    const-string v5, "ContainerDatabase"

    invoke-static {v5, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_55
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_41

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 111
    :cond_5f
    const-string v5, "ContainerDatabase"

    const-string v6, "getPackageNames is not having any package in DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55
.end method

.method public getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const/16 v22, 0xe

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string v23, "containerid"

    aput-object v23, v20, v22

    const/16 v22, 0x1

    const-string v23, "admin_uid"

    aput-object v23, v20, v22

    const/16 v22, 0x2

    const-string v23, "activestatus"

    aput-object v23, v20, v22

    const/16 v22, 0x3

    const-string v23, "passwordstatus"

    aput-object v23, v20, v22

    const/16 v22, 0x4

    const-string v23, "email"

    aput-object v23, v20, v22

    const/16 v22, 0x5

    const-string v23, "name"

    aput-object v23, v20, v22

    const/16 v22, 0x6

    const-string v23, "securitytext"

    aput-object v23, v20, v22

    const/16 v22, 0x7

    const-string v23, "securityicon"

    aput-object v23, v20, v22

    const/16 v22, 0x8

    const-string v23, "failedpasswordattempts"

    aput-object v23, v20, v22

    const/16 v22, 0x9

    const-string v23, "locktype"

    aput-object v23, v20, v22

    const/16 v22, 0xa

    const-string v23, "containertype"

    aput-object v23, v20, v22

    const/16 v22, 0xb

    const-string v23, "containerLockOnScreenLock"

    aput-object v23, v20, v22

    const/16 v22, 0xc

    const-string v23, "containerPwdVerfyOnModeChange"

    aput-object v23, v20, v22

    const/16 v22, 0xd

    const-string v23, "deviceFirmwareVersion"

    aput-object v23, v20, v22

    .line 321
    .local v20, "project":[Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v16, "mapObjData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;>;"
    sget-object v22, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->returnCursorAsPerColumnName(Landroid/content/Context;[Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 325
    .local v11, "cur":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v22

    if-nez v22, :cond_7d

    .line 328
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 384
    :goto_7c
    return-object v16

    .line 331
    :cond_7d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 333
    :cond_80
    const-string v22, "containerid"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 334
    .local v7, "containerId":I
    const-string v22, "admin_uid"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 335
    .local v5, "admin":I
    const-string v22, "passwordstatus"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 336
    .local v19, "passwordStatus":I
    const-string v22, "activestatus"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 338
    .local v9, "containerStatus":I
    const-string v22, "email"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "email":Ljava/lang/String;
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 340
    .local v17, "name":Ljava/lang/String;
    const-string v22, "securitytext"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 342
    .local v21, "securityText":Ljava/lang/String;
    const-string v22, "failedpasswordattempts"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 347
    .local v13, "failedPasswordAttemps":I
    const-string v22, "locktype"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 348
    .local v15, "lockType":I
    const-string v22, "containertype"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 349
    .local v10, "containerType":I
    const-string v22, "containerLockOnScreenLock"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-nez v22, :cond_1f0

    const/4 v8, 0x0

    .line 352
    .local v8, "containerLockOnScreenLock":Z
    :goto_11d
    const-string v22, "containerPwdVerfyOnModeChange"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-nez v22, :cond_1f3

    const/4 v6, 0x0

    .line 355
    .local v6, "alwaysAskPwd":Z
    :goto_12e
    const-string v22, "deviceFirmwareVersion"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 357
    .local v14, "firmwareVersion":Ljava/lang/String;
    new-instance v18, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-direct/range {v18 .. v18}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;-><init>()V

    .line 359
    .local v18, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual/range {v18 .. v19}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStatus(I)V

    .line 360
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerId(I)V

    .line 361
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setAdmin(I)V

    .line 362
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    .line 363
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setName(Ljava/lang/String;)V

    .line 365
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setSecurityText(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFailedPasswordAttempts(I)V

    .line 367
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    .line 368
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    .line 369
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerLockOnScreenLock(Z)V

    .line 370
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setVerifyPwdOnlyOnChangeMode(Z)V

    .line 371
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    .line 378
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v22, "ContainerDatabase"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Container read from DB : [  id:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " adminId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " containerStatus:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " passwordStatus:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " name:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_80

    .line 383
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7c

    .line 349
    .end local v6    # "alwaysAskPwd":Z
    .end local v8    # "containerLockOnScreenLock":Z
    .end local v14    # "firmwareVersion":Ljava/lang/String;
    .end local v18    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1f0
    const/4 v8, 0x1

    goto/16 :goto_11d

    .line 352
    .restart local v8    # "containerLockOnScreenLock":Z
    :cond_1f3
    const/4 v6, 0x1

    goto/16 :goto_12e
.end method

.method public insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mContentValues"    # Landroid/content/ContentValues;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 30
    const-string v2, "ContainerDatabase"

    const-string v3, "  ########  update to DB Insert"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_7
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v2

    invoke-virtual {v2, p3, p2}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_32

    move-result-object v1

    .line 33
    .local v1, "uris":Landroid/net/Uri;
    if-eqz v1, :cond_30

    .line 34
    const/4 v2, 0x1

    .line 42
    .end local v1    # "uris":Landroid/net/Uri;
    :goto_12
    return v2

    .line 36
    :catch_13
    move-exception v0

    .line 37
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "ContainerDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_30
    :goto_30
    const/4 v2, 0x0

    goto :goto_12

    .line 38
    :catch_32
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ContainerDatabase"

    const-string v3, "exception"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public removeContainer(Landroid/content/Context;I)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I

    .prologue
    const/4 v3, 0x0

    .line 388
    const-string v4, "ContainerDatabase"

    const-string v5, "  ########  update to DB remove"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v4

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 395
    .local v0, "count":I
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v4

    sget-object v5, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 398
    if-gtz v0, :cond_58

    .line 399
    const-string v4, "ContainerDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted failed for containerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_4c

    .line 408
    .end local v0    # "count":I
    .end local v2    # "where":Ljava/lang/String;
    :goto_4b
    return v3

    .line 402
    :catch_4c
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ContainerDatabase"

    const-string v5, "exception"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    .line 407
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":I
    .restart local v2    # "where":Ljava/lang/String;
    :cond_58
    const-string v3, "ContainerDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted complete for containerId+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const/4 v3, 0x1

    goto :goto_4b
.end method

.method public setAndroidId(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "androidId"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v1, "ContainerDatabase"

    const-string v2, "  ########  update to DB  setAndroidId"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    if-nez p3, :cond_10

    .line 467
    const-string v1, "ContainerDatabase"

    const-string v2, "setAndroidId androidId is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "androidid"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method

.method public setCertificateManagerSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "creationTime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 541
    if-nez p1, :cond_b

    .line 542
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature context is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_a
    return v4

    .line 545
    :cond_b
    if-nez p2, :cond_15

    .line 546
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature signature is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 549
    :cond_15
    if-nez p2, :cond_1f

    .line 550
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature creationTime is null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 555
    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getCertificateManagerSignatureId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 556
    .local v2, "packageSignatureId":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_74

    .line 557
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature inserting new packageSignature"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 560
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "orig_signature"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v5, "new_signature_creationtime"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v5

    sget-object v6, Lcom/sec/knox/container/contentprovider/DBConstants;->CERTIFICATE_MANAGER_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 567
    .local v3, "uris":Landroid/net/Uri;
    if-eqz v3, :cond_52

    .line 568
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 577
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "uris":Landroid/net/Uri;
    :goto_50
    const/4 v4, 0x1

    goto :goto_a

    .line 570
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "uris":Landroid/net/Uri;
    :cond_52
    const-string v5, "ContainerDatabase"

    const-string v6, "setPackageSignature error when inserting into DB"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_59} :catch_5a

    goto :goto_a

    .line 578
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "packageSignatureId":I
    .end local v3    # "uris":Landroid/net/Uri;
    :catch_5a
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageSignature an error happend trying to store the signature in DB. Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 574
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "packageSignatureId":I
    :cond_74
    :try_start_74
    const-string v5, "ContainerDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageSignature error, entry already exists with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8c} :catch_5a

    goto :goto_50
.end method

.method public setCertificateManagerSignature(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signature"    # [Ljava/lang/String;
    .param p3, "creationTime"    # Ljava/lang/String;

    .prologue
    .line 529
    if-nez p2, :cond_b

    .line 530
    const-string v1, "ContainerDatabase"

    const-string v2, "getPackageSignatureName signature is null"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x0

    .line 535
    :goto_a
    return v1

    .line 533
    :cond_b
    const/4 v0, 0x0

    .line 534
    .local v0, "origSignatureAsString":Ljava/lang/String;
    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->setCertificateManagerSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_a
.end method

.method public setFailedPasswordAttempts(Landroid/content/Context;II)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # I
    .param p3, "failedPasswordAttempts"    # I

    .prologue
    .line 513
    const-string v1, "ContainerDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts() setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 515
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "failedpasswordattempts"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    sget-object v1, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method

.method public updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "val"    # Landroid/content/ContentValues;
    .param p4, "containerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v2, "ContainerDatabase"

    const-string v3, "  ########  update to DB Update"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz p1, :cond_49

    if-eqz p3, :cond_49

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "containerid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "where":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v0, v3}, Lcom/sec/knox/container/contentprovider/ContainerStorageProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_51

    .line 51
    const-string v2, "ContainerDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update failed for container status update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activestatus"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "where":Ljava/lang/String;
    :goto_48
    return v1

    .line 58
    :cond_49
    const-string v2, "ContainerDatabase"

    const-string v3, "projection object is null"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 61
    .restart local v0    # "where":Ljava/lang/String;
    :cond_51
    const/4 v1, 0x1

    goto :goto_48
.end method
