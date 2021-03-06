.class public Lcom/android/server/enterprise/security/DeviceAccountPolicy;
.super Landroid/app/enterprise/IDeviceAccountPolicy$Stub;
.source "DeviceAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final ADDITION_BLACKLIST:Ljava/lang/String; = "ADDITION_BLACKLIST"

.field public static final ADDITION_WHITELIST:Ljava/lang/String; = "ADDITION_WHITELIST"

.field public static final ALL_ACCOUNTS:Ljava/lang/String; = ".*"

.field public static final EXCHANGE_TYPE:Ljava/lang/String; = "com.android.exchange"

.field private static final MY_PID:I

.field public static final REMOVAL_BLACKLIST:Ljava/lang/String; = "REMOVAL_BLACKLIST"

.field public static final REMOVAL_WHITELIST:Ljava/lang/String; = "REMOVAL_WHITELIST"

.field private static final TAG:Ljava/lang/String; = "DeviceAccountPolicy"

.field private static final mSupportedAccountTypes:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.exchange"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.ldap"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.osp.app.signin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 98
    return-void
.end method

.method private addAccountsToBWLInternal(IILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "containerId"    # I
    .param p3, "type"    # Ljava/lang/String;
    .param p5, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p4, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-nez p4, :cond_13

    :cond_11
    move v4, v5

    .line 150
    :cond_12
    :goto_12
    return v4

    .line 133
    :cond_13
    const/4 v4, 0x1

    .line 135
    .local v4, "result":Z
    :try_start_14
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "account":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v6, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string/jumbo v6, "type"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v6, "name"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v6, "listType"

    invoke-virtual {v1, v6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v4, :cond_59

    iget-object v6, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AccountBlackWhiteList"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_54} :catch_5b

    move-result v6

    if-eqz v6, :cond_59

    const/4 v4, 0x1

    .line 145
    :goto_58
    goto :goto_18

    :cond_59
    move v4, v5

    .line 142
    goto :goto_58

    .line 146
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_5b
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "DeviceAccountPolicy"

    const-string v6, "Handled Exception in addAccountsToBWLInternal()"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 123
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(IILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z
    .registers 4
    .param p2, "match"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 109
    :try_start_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_16

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 117
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 112
    :catch_16
    move-exception v0

    goto :goto_0
.end method

.method private clearAccountsFromBWLByInternal(I[Ljava/lang/String;)Z
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "type"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 508
    if-gtz p1, :cond_b

    .line 509
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Invalid ContainerId. This API is supported only for container"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 513
    :cond_b
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .local v4, "selectionValues":Landroid/content/ContentValues;
    invoke-static {p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "selectAdmin":Ljava/lang/String;
    const-string v7, "#SelectClause#"

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz p2, :cond_55

    array-length v7, p2

    if-lez v7, :cond_55

    .line 518
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 519
    .local v5, "whereBuffer":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "type IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    aget-object v7, p2, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_33
    array-length v7, p2

    if-ge v1, v7, :cond_47

    .line 523
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    aget-object v7, p2, v1

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 527
    :cond_47
    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "#SelectClause#"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v1    # "i":I
    .end local v5    # "whereBuffer":Ljava/lang/StringBuffer;
    :cond_55
    const/4 v2, 0x1

    .line 534
    .local v2, "result":Z
    :try_start_56
    iget-object v7, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "AccountBlackWhiteList"

    invoke-virtual {v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_64

    move-result v7

    if-ltz v7, :cond_62

    const/4 v2, 0x1

    .line 540
    :goto_61
    return v2

    :cond_62
    move v2, v6

    .line 534
    goto :goto_61

    .line 536
    :catch_64
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "DeviceAccountPolicy"

    const-string v7, "Handled Exception in clearAccountsFromBWLBySystem()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61
.end method

.method private clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;

    .prologue
    .line 217
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v10, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 219
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 220
    .local v4, "containerId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 221
    .local v2, "callingUid":I
    invoke-static {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 222
    .local v0, "adminLUID":J
    const/4 v7, 0x0

    .line 224
    .local v7, "result":Z
    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "type"

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const-string v11, "listType"

    aput-object v11, v3, v10

    .line 229
    .local v3, "columns":[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object p2, v8, v10

    const/4 v10, 0x2

    aput-object p3, v8, v10

    .line 233
    .local v8, "values":[Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v9, "where":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string/jumbo v10, "type"

    invoke-virtual {v9, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v10, "listType"

    invoke-virtual {v9, v10, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :try_start_4f
    iget-object v10, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "AccountBlackWhiteList"

    invoke-virtual {v10, v11, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 243
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v6, :cond_5f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_61

    .line 244
    :cond_5f
    const/4 v10, 0x1

    .line 253
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_60
    return v10

    .line 247
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_61
    iget-object v10, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "AccountBlackWhiteList"

    invoke-virtual {v10, v11, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_68} :catch_6b

    move-result v7

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_69
    move v10, v7

    .line 253
    goto :goto_60

    .line 249
    :catch_6b
    move-exception v5

    .line 250
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "DeviceAccountPolicy"

    const-string v11, "Handled Exception in clearAccountsFromBWLInternal()"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 189
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 191
    .local v2, "containerId":I
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 212
    :cond_15
    return-object v4

    .line 197
    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 199
    .local v0, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_15

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 203
    .local v6, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 206
    .local v5, "uid":Ljava/lang/Integer;
    new-instance v1, Landroid/app/enterprise/AccountControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AccountControlInfo;-><init>()V

    .line 207
    .local v1, "aci":Landroid/app/enterprise/AccountControlInfo;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getPackageNameForUid(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/app/enterprise/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 208
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v1, Landroid/app/enterprise/AccountControlInfo;->entries:Ljava/util/List;

    .line 209
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 89
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 92
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-static {p1, p2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(II)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized loadAccounts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 261
    .local v15, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 262
    .local v6, "containerId":I
    const-string v17, "DeviceAccountPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " loadAccounts  _ userId  : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "AccountBlackWhiteList"

    const-string v19, "adminUid"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v13

    .line 265
    .local v13, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_47

    .line 266
    const-string v17, "DeviceAccountPolicy"

    const-string v18, " loadAccounts : admin is null "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_80

    .line 267
    const/4 v3, 0x0

    .line 311
    :cond_45
    :goto_45
    monitor-exit p0

    return-object v3

    .line 270
    :cond_47
    :try_start_47
    new-instance v14, Ljava/util/TreeSet;

    invoke-direct {v14, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 273
    .local v14, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 275
    .local v3, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_83

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 276
    .local v12, "uid":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    .line 277
    .local v4, "adminUid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v18, Ljava/util/TreeSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_47 .. :try_end_7f} :catchall_80

    goto :goto_5b

    .line 260
    .end local v3    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "adminUid":I
    .end local v6    # "containerId":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "uid":Ljava/lang/Long;
    .end local v13    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v14    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v15    # "userId":I
    :catchall_80
    move-exception v17

    monitor-exit p0

    throw v17

    .line 280
    .restart local v3    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v6    # "containerId":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v14    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v15    # "userId":I
    :cond_83
    const/16 v17, 0x2

    :try_start_85
    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "adminUid"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-string v18, "name"

    aput-object v18, v5, v17

    .line 284
    .local v5, "columns":[Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v16, "where":Landroid/content/ContentValues;
    const-string v17, "containerID"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string/jumbo v17, "userID"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    const-string/jumbo v17, "type"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v17, "listType"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_85 .. :try_end_c4} :catchall_80

    .line 291
    :try_start_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "AccountBlackWhiteList"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 293
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_e3

    .line 294
    const-string v17, "DeviceAccountPolicy"

    const-string v18, "  loadAccounts list empty "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_e3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_45

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 298
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 299
    .local v11, "typeLong":Ljava/lang/Long;
    if-eqz v11, :cond_12b

    .line 300
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    .line 301
    .restart local v4    # "adminUid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_11c} :catch_11d
    .catchall {:try_start_c4 .. :try_end_11c} :catchall_80

    goto :goto_e7

    .line 307
    .end local v4    # "adminUid":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v11    # "typeLong":Ljava/lang/Long;
    :catch_11d
    move-exception v9

    .line 308
    .local v9, "e":Ljava/lang/Exception;
    :try_start_11e
    const-string v17, "DeviceAccountPolicy"

    const-string v18, "Handled Exception in loadAccounts()"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_129
    .catchall {:try_start_11e .. :try_end_129} :catchall_80

    goto/16 :goto_45

    .line 304
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v11    # "typeLong":Ljava/lang/Long;
    :cond_12b
    :try_start_12b
    const-string v17, "DeviceAccountPolicy"

    const-string v18, "  loadAccounts  : can not get admin  "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_132} :catch_11d
    .catchall {:try_start_12b .. :try_end_132} :catchall_80

    goto :goto_e7
.end method

.method private removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 156
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 157
    .local v3, "callingUid":I
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 159
    .local v5, "containerId":I
    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    if-nez p3, :cond_1a

    .line 161
    :cond_18
    const/4 v8, 0x0

    .line 183
    :cond_19
    :goto_19
    return v8

    .line 164
    :cond_1a
    const/4 v8, 0x1

    .line 166
    .local v8, "result":Z
    :try_start_1b
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "account":Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v1

    .line 168
    .local v1, "adminLUID":J
    const/4 v10, 0x4

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "type"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "name"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "listType"

    aput-object v11, v4, v10

    .line 172
    .local v4, "columns":[Ljava/lang/String;
    const/4 v10, 0x4

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object v0, v9, v10

    const/4 v10, 0x3

    aput-object p4, v9, v10

    .line 175
    .local v9, "values":[Ljava/lang/String;
    if-eqz v8, :cond_68

    iget-object v10, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "AccountBlackWhiteList"

    invoke-virtual {v10, v11, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_63} :catch_6a

    move-result v10

    if-eqz v10, :cond_68

    const/4 v8, 0x1

    .line 178
    :goto_67
    goto :goto_1f

    .line 175
    :cond_68
    const/4 v8, 0x0

    goto :goto_67

    .line 179
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "adminLUID":J
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "values":[Ljava/lang/String;
    :catch_6a
    move-exception v6

    .line 180
    .local v6, "e":Ljava/lang/Exception;
    const-string v10, "DeviceAccountPolicy"

    const-string v11, "Handled Exception in removeAccountsFromBWLInternal()"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 409
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 320
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 337
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromBWLBySystem(I[Ljava/lang/String;)Z
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "type"    # [Ljava/lang/String;

    .prologue
    .line 498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 499
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 500
    .local v0, "callingPid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_14

    sget v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->MY_PID:I

    if-eq v0, v2, :cond_1c

    .line 501
    :cond_14
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only system process can execute this API"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLByInternal(I[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public clearAccountsFromRemovalBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountsFromAdditionBlackLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromAdditionWhiteLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalBlackLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalWhiteLists(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAccountTypes(I)Ljava/util/List;
    .registers 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mSupportedAccountTypes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isAccountAdditionAllowed(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 17
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "showMsg"    # Z

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_49

    move-result v3

    .line 453
    .local v3, "callingUid":I
    if-nez p1, :cond_3b

    :try_start_7
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_3b

    .line 455
    invoke-static {p2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 457
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 458
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object p2, v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_40
    .catchall {:try_start_7 .. :try_end_21} :catchall_49

    .line 466
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_21
    :try_start_21
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v4, v10, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 467
    .local v4, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const-string v10, "ADDITION_BLACKLIST"

    invoke-direct {p0, v4, p2, v10}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 469
    .local v1, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v10, "ADDITION_WHITELIST"

    invoke-direct {p0, v4, p2, v10}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_49

    move-result-object v2

    .line 472
    .local v2, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v1, :cond_4c

    .line 473
    const/4 v10, 0x1

    .line 494
    :goto_39
    monitor-exit p0

    return v10

    .line 460
    .end local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_40
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    move-result-object p2

    goto :goto_21

    .line 462
    :catch_40
    move-exception v5

    .line 463
    .local v5, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v10, "DeviceAccountPolicy"

    const-string v11, "Handled Exception in DeviceAccountPolicy: "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_21

    .line 451
    .end local v3    # "callingUid":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v10

    monitor-exit p0

    throw v10

    .line 476
    .restart local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v3    # "callingUid":I
    .restart local v4    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_4c
    :try_start_4c
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 477
    .local v9, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 479
    .local v8, "uid":Ljava/lang/Integer;
    if-eqz v2, :cond_72

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-direct {p0, v10, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_54

    .line 485
    :cond_72
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-direct {p0, v10, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_54

    .line 486
    if-eqz p4, :cond_8a

    .line 487
    const v10, 0x10402cb

    invoke-static {v10}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V
    :try_end_8a
    .catchall {:try_start_4c .. :try_end_8a} :catchall_49

    .line 490
    :cond_8a
    const/4 v10, 0x0

    goto :goto_39

    .line 494
    .end local v8    # "uid":Ljava/lang/Integer;
    :cond_8c
    const/4 v10, 0x1

    goto :goto_39
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 445
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 446
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized isAccountRemovalAllowed(ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 17
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "showMsg"    # Z

    .prologue
    .line 361
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_49

    move-result v3

    .line 363
    .local v3, "callingUid":I
    if-nez p1, :cond_3b

    :try_start_7
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_3b

    .line 365
    invoke-static {p2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 367
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 368
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object p2, v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_40
    .catchall {:try_start_7 .. :try_end_21} :catchall_49

    .line 376
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_21
    :try_start_21
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-direct {v4, v10, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 377
    .local v4, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const-string v10, "REMOVAL_BLACKLIST"

    invoke-direct {p0, v4, p2, v10}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 379
    .local v1, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v10, "REMOVAL_WHITELIST"

    invoke-direct {p0, v4, p2, v10}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_49

    move-result-object v2

    .line 382
    .local v2, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v1, :cond_4c

    .line 383
    const/4 v10, 0x1

    .line 404
    :goto_39
    monitor-exit p0

    return v10

    .line 370
    .end local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_40
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    move-result-object p2

    goto :goto_21

    .line 372
    :catch_40
    move-exception v5

    .line 373
    .local v5, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v10, "DeviceAccountPolicy"

    const-string v11, "Handled Exception in DeviceAccountPolicy: "

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_21

    .line 361
    .end local v3    # "callingUid":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v10

    monitor-exit p0

    throw v10

    .line 386
    .restart local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v3    # "callingUid":I
    .restart local v4    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_4c
    :try_start_4c
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 387
    .local v9, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_54
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 389
    .local v8, "uid":Ljava/lang/Integer;
    if-eqz v2, :cond_72

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-direct {p0, v10, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_54

    .line 395
    :cond_72
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-direct {p0, v10, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_54

    .line 396
    if-eqz p4, :cond_8a

    .line 397
    const v10, 0x10402ca

    invoke-static {v10}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V
    :try_end_8a
    .catchall {:try_start_4c .. :try_end_8a} :catchall_49

    .line 400
    :cond_8a
    const/4 v10, 0x0

    goto :goto_39

    .line 404
    .end local v8    # "uid":Ljava/lang/Integer;
    :cond_8c
    const/4 v10, 0x1

    goto :goto_39
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 355
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 356
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 554
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 560
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 574
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 589
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 570
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 579
    const-string v0, "DeviceAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    :try_start_29
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLByInternal(I[Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 585
    :goto_2c
    return-void

    .line 583
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method public removeAccountsFromAdditionBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 414
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromAdditionWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 432
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalBlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "cxtIfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 342
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 565
    return-void
.end method
