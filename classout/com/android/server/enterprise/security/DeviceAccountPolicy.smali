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
    .line 69
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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/enterprise/IDeviceAccountPolicy$Stub;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    iput-object p1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 90
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

    .line 120
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-nez p4, :cond_13

    :cond_11
    move v4, v5

    .line 142
    :cond_12
    :goto_12
    return v4

    .line 125
    :cond_13
    const/4 v4, 0x1

    .line 127
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

    .line 128
    .local v0, "account":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v6, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v6, "type"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v6, "name"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v6, "listType"

    invoke-virtual {v1, v6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz v4, :cond_58

    iget-object v6, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AccountBlackWhiteList"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_53} :catch_5a

    move-result v6

    if-eqz v6, :cond_58

    const/4 v4, 0x1

    .line 137
    :goto_57
    goto :goto_18

    :cond_58
    move v4, v5

    .line 134
    goto :goto_57

    .line 138
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_5a
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "DeviceAccountPolicy"

    const-string v6, "Handled Exception in addAccountsToBWLInternal()"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 114
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission()I

    move-result v1

    .local v1, "callingUid":I
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 115
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
    .line 99
    .local p1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    :try_start_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_16

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 109
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 104
    :catch_16
    move-exception v0

    goto :goto_0
.end method

.method private clearAccountsFromBWLByInternal(I[Ljava/lang/String;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "type"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 486
    if-gtz p1, :cond_b

    .line 487
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Invalid ContainerId. This API is supported only for container"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    :cond_b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 492
    .local v3, "whereBuffer":Ljava/lang/StringBuffer;
    invoke-static {p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    if-eqz p2, :cond_42

    array-length v5, p2

    if-lez v5, :cond_42

    .line 495
    const-string v5, " AND type IN ( ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    aget-object v5, p2, v4

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v4

    .line 497
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2a
    array-length v5, p2

    if-ge v1, v5, :cond_3d

    .line 498
    const-string v5, ",?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    aget-object v5, p2, v1

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v1

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 501
    :cond_3d
    const-string v5, " ) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    .end local v1    # "i":I
    :cond_42
    const/4 v2, 0x1

    .line 506
    .local v2, "result":Z
    :try_start_43
    iget-object v5, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "AccountBlackWhiteList"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4e} :catch_55

    move-result v5

    if-ltz v5, :cond_53

    const/4 v2, 0x1

    .line 512
    :goto_52
    return v2

    :cond_53
    move v2, v4

    .line 506
    goto :goto_52

    .line 508
    :catch_55
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeviceAccountPolicy"

    const-string v5, "Handled Exception in clearAccountsFromBWLBySystem()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52
.end method

.method private clearAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission()I

    move-result v2

    .line 208
    .local v2, "callingUid":I
    invoke-static {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v0

    .line 209
    .local v0, "adminLUID":J
    const/4 v6, 0x0

    .line 211
    .local v6, "result":Z
    const/4 v9, 0x3

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-string v10, "type"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string v10, "listType"

    aput-object v10, v3, v9

    .line 216
    .local v3, "columns":[Ljava/lang/String;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object p2, v7, v9

    const/4 v9, 0x2

    aput-object p3, v7, v9

    .line 220
    .local v7, "values":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v8, "where":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    const-string v9, "type"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v9, "listType"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_47
    iget-object v9, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AccountBlackWhiteList"

    invoke-virtual {v9, v10, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 230
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_57

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 231
    :cond_57
    const/4 v9, 0x1

    .line 240
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_58
    return v9

    .line 234
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_59
    iget-object v9, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AccountBlackWhiteList"

    invoke-virtual {v9, v10, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_60} :catch_63

    move-result v6

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_61
    move v9, v6

    .line 240
    goto :goto_58

    .line 236
    :catch_63
    move-exception v4

    .line 237
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Handled Exception in clearAccountsFromBWLInternal()"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61
.end method

.method private enforceSecurityPermission()I
    .registers 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission()I

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 201
    :cond_12
    return-object v3

    .line 186
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_12

    .line 191
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 192
    .local v5, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/AccountControlInfo;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 195
    .local v4, "uid":Ljava/lang/Integer;
    new-instance v1, Landroid/app/enterprise/AccountControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/AccountControlInfo;-><init>()V

    .line 196
    .local v1, "aci":Landroid/app/enterprise/AccountControlInfo;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getPackageNameForUid(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/app/enterprise/AccountControlInfo;->adminPackageName:Ljava/lang/String;

    .line 197
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Landroid/app/enterprise/AccountControlInfo;->entries:Ljava/util/List;

    .line 198
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {p1, p2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(II)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 20
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 247
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "AccountBlackWhiteList"

    const-string v15, "adminUid"

    move/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 250
    .local v10, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_4b

    move-result v13

    if-nez v13, :cond_18

    .line 251
    const/4 v1, 0x0

    .line 288
    :cond_16
    :goto_16
    monitor-exit p0

    return-object v1

    .line 254
    :cond_18
    :try_start_18
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v11, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v13

    invoke-direct {v1, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 259
    .local v1, "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 260
    .local v9, "uid":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v2

    .line 261
    .local v2, "adminUid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Ljava/util/TreeSet;

    invoke-direct {v14}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_4b

    goto :goto_2a

    .line 247
    .end local v1    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "adminUid":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "uid":Ljava/lang/Long;
    .end local v10    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_4b
    move-exception v13

    monitor-exit p0

    throw v13

    .line 264
    .restart local v1    # "accountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11    # "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4e
    const/4 v13, 0x2

    :try_start_4f
    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "name"

    aput-object v14, v3, v13

    .line 268
    .local v3, "columns":[Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v12, "where":Landroid/content/ContentValues;
    const-string v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v13, "type"

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v13, "listType"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_4f .. :try_end_77} :catchall_4b

    .line 274
    :try_start_77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "AccountBlackWhiteList"

    invoke-virtual {v13, v14, v3, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 277
    .local v5, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_85
    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 278
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v13, "adminUid"

    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 279
    .local v8, "typeLong":Ljava/lang/Long;
    if-eqz v8, :cond_85

    .line 280
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v2

    .line 281
    .restart local v2    # "adminUid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    const-string v14, "name"

    invoke-virtual {v4, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_b4} :catch_b5
    .catchall {:try_start_77 .. :try_end_b4} :catchall_4b

    goto :goto_85

    .line 284
    .end local v2    # "adminUid":I
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "typeLong":Ljava/lang/Long;
    :catch_b5
    move-exception v6

    .line 285
    .local v6, "e":Ljava/lang/Exception;
    :try_start_b6
    const-string v13, "DeviceAccountPolicy"

    const-string v14, "Handled Exception in loadAccounts()"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_4b

    goto/16 :goto_16
.end method

.method private removeAccountsFromBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 147
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->enforceSecurityPermission()I

    move-result v3

    .line 149
    .local v3, "callingUid":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getSupportedAccountTypes(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-nez p3, :cond_16

    .line 151
    :cond_14
    const/4 v7, 0x0

    .line 173
    :cond_15
    :goto_15
    return v7

    .line 154
    :cond_16
    const/4 v7, 0x1

    .line 156
    .local v7, "result":Z
    :try_start_17
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "account":Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v1

    .line 158
    .local v1, "adminLUID":J
    const/4 v9, 0x4

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "type"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "name"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "listType"

    aput-object v10, v4, v9

    .line 162
    .local v4, "columns":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    const/4 v9, 0x3

    aput-object p4, v8, v9

    .line 165
    .local v8, "values":[Ljava/lang/String;
    if-eqz v7, :cond_63

    iget-object v9, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AccountBlackWhiteList"

    invoke-virtual {v9, v10, v4, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5e} :catch_65

    move-result v9

    if-eqz v9, :cond_63

    const/4 v7, 0x1

    .line 168
    :goto_62
    goto :goto_1b

    .line 165
    :cond_63
    const/4 v7, 0x0

    goto :goto_62

    .line 169
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "adminLUID":J
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "values":[Ljava/lang/String;
    :catch_65
    move-exception v5

    .line 170
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "DeviceAccountPolicy"

    const-string v10, "Handled Exception in removeAccountsFromBWLInternal()"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method


# virtual methods
.method public addAccountsToAdditionBlackList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 387
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToAdditionWhiteList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalBlackList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addAccountsToRemovalWhiteList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 314
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->addAccountsToBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionBlackList(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromAdditionWhiteList(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromBWLBySystem(I[Ljava/lang/String;)Z
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "type"    # [Ljava/lang/String;

    .prologue
    .line 477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 478
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 479
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only system process can execute this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLByInternal(I[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public clearAccountsFromRemovalBlackList(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAccountsFromRemovalWhiteList(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAccountsFromAdditionBlackLists(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromAdditionWhiteLists(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalBlackLists(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsFromRemovalWhiteLists(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AccountControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getAccountsFromBWLInternal(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

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
    .line 293
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
    const/4 v10, 0x1

    .line 431
    monitor-enter p0

    if-nez p1, :cond_2f

    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/16 v11, 0x3e8

    if-ne v9, v11, :cond_2f

    .line 433
    invoke-static {p2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 435
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 436
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object p2, v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_34
    .catchall {:try_start_4 .. :try_end_1e} :catchall_3d

    .line 444
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_1e
    :try_start_1e
    const-string v9, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 446
    .local v1, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v9, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_3d

    move-result-object v2

    .line 449
    .local v2, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v1, :cond_40

    move v9, v10

    .line 473
    :goto_2d
    monitor-exit p0

    return v9

    .line 438
    .end local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_2f
    :try_start_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_34
    .catchall {:try_start_2f .. :try_end_32} :catchall_3d

    move-result-object p2

    goto :goto_1e

    .line 440
    :catch_34
    move-exception v3

    .line 441
    .local v3, "e":Ljava/lang/Exception;
    :try_start_35
    const-string v9, "DeviceAccountPolicy"

    const-string v11, "Handled Exception in DeviceAccountPolicy: "

    invoke-static {v9, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1e

    .line 431
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v9

    monitor-exit p0

    throw v9

    .line 453
    .restart local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_40
    :try_start_40
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 454
    .local v8, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 456
    .local v7, "uid":Ljava/lang/Integer;
    if-eqz v2, :cond_66

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 462
    :cond_66
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 463
    if-eqz p4, :cond_92

    .line 464
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v4, "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v10, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    const v11, 0x10402af

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v9, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_92
    .catchall {:try_start_40 .. :try_end_92} :catchall_3d

    .line 469
    .end local v4    # "i":Landroid/content/Intent;
    :cond_92
    const/4 v9, 0x0

    goto :goto_2d

    .end local v7    # "uid":Ljava/lang/Integer;
    :cond_94
    move v9, v10

    .line 473
    goto :goto_2d
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 422
    const-string v1, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAccountAdditionAllowed( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 424
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
    const/4 v10, 0x1

    .line 340
    monitor-enter p0

    if-nez p1, :cond_2f

    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/16 v11, 0x3e8

    if-ne v9, v11, :cond_2f

    .line 342
    invoke-static {p2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 344
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 345
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object p2, v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_34
    .catchall {:try_start_4 .. :try_end_1e} :catchall_3d

    .line 353
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_1e
    :try_start_1e
    const-string v9, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 355
    .local v1, "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v9, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->loadAccounts(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_3d

    move-result-object v2

    .line 358
    .local v2, "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v1, :cond_40

    move v9, v10

    .line 382
    :goto_2d
    monitor-exit p0

    return v9

    .line 347
    .end local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_2f
    :try_start_2f
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->getNonContainerizedType(ILjava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_34
    .catchall {:try_start_2f .. :try_end_32} :catchall_3d

    move-result-object p2

    goto :goto_1e

    .line 349
    :catch_34
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    :try_start_35
    const-string v9, "DeviceAccountPolicy"

    const-string v11, "Handled Exception in DeviceAccountPolicy: "

    invoke-static {v9, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1e

    .line 340
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_3d
    move-exception v9

    monitor-exit p0

    throw v9

    .line 362
    .restart local v1    # "accountBlackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v2    # "accountWhiteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_40
    :try_start_40
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 363
    .local v8, "uidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 365
    .local v7, "uid":Ljava/lang/Integer;
    if-eqz v2, :cond_66

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 371
    :cond_66
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->checkAccountMatch(Ljava/util/Iterator;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 372
    if-eqz p4, :cond_92

    .line 373
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v4, "i":Landroid/content/Intent;
    const-string v9, "message"

    iget-object v10, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    const v11, 0x10402ae

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v9, p0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_92
    .catchall {:try_start_40 .. :try_end_92} :catchall_3d

    .line 378
    .end local v4    # "i":Landroid/content/Intent;
    :cond_92
    const/4 v9, 0x0

    goto :goto_2d

    .end local v7    # "uid":Ljava/lang/Integer;
    :cond_94
    move v9, v10

    .line 382
    goto :goto_2d
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    .line 331
    const-string v1, "DeviceAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAccountRemovalAllowed( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerIdAndPkgName(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 333
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
    .line 526
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 532
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 546
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

    .line 547
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 561
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

    .line 562
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 542
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 551
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

    .line 554
    const/4 v0, 0x0

    :try_start_29
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->clearAccountsFromBWLByInternal(I[Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 557
    :goto_2c
    return-void

    .line 555
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method public removeAccountsFromAdditionBlackList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 392
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromAdditionWhiteList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ADDITION_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalBlackList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_BLACKLIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAccountsFromRemovalWhiteList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p3, "accounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "REMOVAL_WHITELIST"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->removeAccountsFromBWLInternal(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 537
    return-void
.end method
