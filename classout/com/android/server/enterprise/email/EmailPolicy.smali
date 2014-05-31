.class public Lcom/android/server/enterprise/email/EmailPolicy;
.super Landroid/app/enterprise/IEmailPolicy$Stub;
.source "EmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/enterprise/IEmailPolicy$Stub;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 78
    return-void
.end method

.method private enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "ret":Z
    const-string v1, "EmailAllowForward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 291
    const/4 v0, 0x1

    .line 299
    :cond_a
    :goto_a
    return v0

    .line 292
    :cond_b
    const-string v1, "EmailAllowHTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 293
    const/4 v0, 0x1

    goto :goto_a

    .line 294
    :cond_15
    const-string v1, "EmailAllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 295
    const/4 v0, 0x1

    goto :goto_a

    .line 296
    :cond_1f
    const-string v1, "EmailAllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 297
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 63
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 17
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 239
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .line 240
    .local v8, "ret":Z
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 241
    :cond_14
    const-string v9, "EmailPolicyService"

    const-string v10, "getPolicyState: Invalid entry"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v8, 0x0

    .line 285
    .end local v8    # "ret":Z
    :cond_1c
    :goto_1c
    return v8

    .line 245
    .restart local v8    # "ret":Z
    :cond_1d
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 247
    .local v0, "EMAIL_REGEX":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 248
    const-string v9, "EmailPolicyService"

    const-string v10, "getPolicyState: Invalid entry by regex"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v8, 0x0

    goto :goto_1c

    .line 252
    :cond_2e
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 253
    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p3, v1, v9

    .line 255
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v9, "EmailAddress"

    invoke-virtual {v3, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v9, "userID"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const/4 v7, 0x0

    .line 262
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_52
    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "EmailSettingsTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_59} :catch_a2

    move-result-object v7

    .line 270
    if-eqz v7, :cond_1c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 273
    const-string v9, "EmailPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState: results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ac

    const/4 v6, 0x1

    .line 278
    .local v6, "restricterState":Z
    :goto_81
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 279
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_85
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 280
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 281
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {v2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_ae

    const-string v9, "1"

    :goto_99
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_85

    move v8, v6

    .line 282
    goto/16 :goto_1c

    .line 264
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :catch_a2
    move-exception v4

    .line 266
    .local v4, "ex":Ljava/lang/Exception;
    const-string v9, "EmailPolicyService"

    const-string v10, "Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 276
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_ac
    const/4 v6, 0x0

    goto :goto_81

    .line 281
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6    # "restricterState":Z
    :cond_ae
    const-string v9, "0"

    goto :goto_99

    .line 285
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_b1
    if-nez v6, :cond_b7

    const/4 v9, 0x1

    :goto_b4
    move v8, v9

    goto/16 :goto_1c

    :cond_b7
    const/4 v9, 0x0

    goto :goto_b4
.end method

.method private putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z
    .registers 13
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "state"    # Z
    .param p5, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 209
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 210
    :cond_9
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_10
    return v3

    .line 214
    :cond_11
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 216
    .local v0, "EMAIL_REGEX":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 217
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 221
    :cond_21
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v4, "EmailAddress"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-eqz p4, :cond_81

    const-string v4, "1"

    :goto_41
    invoke-virtual {v1, p5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v4, "EmailAddress"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EmailSettingsTable"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 233
    .local v3, "ret":Z
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPolicyState: ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 225
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "ret":Z
    :cond_81
    const-string v4, "0"

    goto :goto_41
.end method


# virtual methods
.method public allowAccountAddition(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 83
    const/4 v3, 0x0

    .line 85
    .local v3, "result":Z
    const/4 v6, 0x1

    :try_start_8
    new-array v2, v6, [B

    .line 86
    .local v2, "refObj":[B
    const/4 v6, 0x0

    if-eqz p2, :cond_4a

    :goto_d
    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, "cvValues":Landroid/content/ContentValues;
    const-string v4, "policyName"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "accountObject"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 90
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "ADMIN_REF"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 91
    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowAccountAddition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_49} :catch_4c

    .line 96
    .end local v0    # "cvValues":Landroid/content/ContentValues;
    .end local v2    # "refObj":[B
    :goto_49
    return v3

    .restart local v2    # "refObj":[B
    :cond_4a
    move v4, v5

    .line 86
    goto :goto_d

    .line 92
    .end local v2    # "refObj":[B
    :catch_4c
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EmailPolicyService"

    const-string v5, "Exception in allowAccountAddition"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_49
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 375
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 376
    .local v2, "containerId":I
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 377
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_29

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 379
    iget-boolean v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_33

    .line 382
    :try_start_19
    const-string v3, "eas_account_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v8

    .line 383
    .local v8, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v8, :cond_29

    invoke-interface {v8, p1, p3, p4, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2a

    move-result v0

    .line 394
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_29
    :goto_29
    return v0

    .line 384
    :catch_2a
    move-exception v7

    .line 385
    .local v7, "e":Landroid/os/RemoteException;
    const-string v3, "EmailPolicyService"

    const-string v4, "Failed talking with exchange account policy"

    invoke-static {v3, v4, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 390
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_33
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 391
    .local v1, "adminUid":I
    iget-object v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowSettingChange"

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_29
.end method

.method public allowPopImapEmail(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, "result":Z
    const/4 v6, 0x1

    :try_start_8
    new-array v2, v6, [B

    .line 138
    .local v2, "refObj":[B
    const/4 v6, 0x0

    if-eqz p2, :cond_2e

    :goto_d
    int-to-byte v4, v4

    aput-byte v4, v2, v6

    .line 139
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v0, "cvValues":Landroid/content/ContentValues;
    const-string v4, "policyName"

    const-string v5, "allowPopImapEmail"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v4, "accountObject"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "ADMIN_REF"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_30

    move-result v3

    .line 148
    .end local v0    # "cvValues":Landroid/content/ContentValues;
    .end local v2    # "refObj":[B
    :goto_2d
    return v3

    .restart local v2    # "refObj":[B
    :cond_2e
    move v4, v5

    .line 138
    goto :goto_d

    .line 144
    .end local v2    # "refObj":[B
    :catch_30
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "EmailPolicyService"

    const-string v5, "Exception in allowPopImapEmail"

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method public getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 190
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "EmailAllowForward"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 202
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v1, "EmailAllowHTML"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 101
    const/4 v5, 0x1

    .line 102
    .local v5, "result":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 103
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 106
    .local v7, "userID":I
    :try_start_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#SelectClause#"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v8, "policyName"

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAccountAdditionAllowed: user id :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v8, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_REF"

    const-string v10, "accountObject"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 113
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_49

    .line 114
    const-string v8, "EmailPolicyService"

    const-string v9, "isAccountAdditionAllowed:  resultList not null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_49
    if-eqz v6, :cond_64

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_64

    .line 116
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_52
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_64

    .line 117
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 118
    .local v0, "b":[B
    const/4 v8, 0x0

    aget-byte v8, v0, v8
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_61} :catch_80

    if-nez v8, :cond_7d

    .line 119
    const/4 v5, 0x0

    .line 128
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_64
    :goto_64
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAccountAdditionAllowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v5

    .line 116
    .restart local v0    # "b":[B
    .restart local v2    # "cvValues":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 125
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_80
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string v9, "Exception in isAccountAdditionAllowed"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_64
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 349
    const/4 v4, 0x1

    .line 350
    .local v4, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 351
    .local v1, "containerId":I
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 352
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_26

    .line 354
    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_4b

    .line 357
    :try_start_16
    const-string v6, "eas_account_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v3

    .line 358
    .local v3, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v3, :cond_3f

    invoke-interface {v3, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_41

    move-result v4

    .line 370
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_26
    :goto_26
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailNotificationsEnabled() results = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return v4

    .line 358
    .restart local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_3f
    const/4 v4, 0x1

    goto :goto_26

    .line 359
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_41
    move-exception v2

    .line 360
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "EmailPolicyService"

    const-string v7, "Failed talking with exchange account policy"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    const/4 v4, 0x1

    .line 362
    goto :goto_26

    .line 366
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 367
    .local v5, "userID":I
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v7, "EmailAllowNotificationChange"

    invoke-direct {p0, v1, v6, v7, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_26
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 397
    const/4 v4, 0x1

    .line 398
    .local v4, "ret":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 399
    .local v1, "containerId":I
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 400
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_26

    .line 402
    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_4b

    .line 405
    :try_start_16
    const-string v6, "eas_account_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v3

    .line 406
    .local v3, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v3, :cond_3f

    invoke-interface {v3, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_41

    move-result v4

    .line 418
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_26
    :goto_26
    const-string v6, "EmailPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailSettingsChangeAllowed() results = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return v4

    .line 406
    .restart local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_3f
    const/4 v4, 0x1

    goto :goto_26

    .line 407
    .end local v3    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_41
    move-exception v2

    .line 408
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "EmailPolicyService"

    const-string v7, "Failed talking with exchange account policy"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    const/4 v4, 0x1

    .line 410
    goto :goto_26

    .line 414
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 415
    .local v5, "userID":I
    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v7, "EmailAllowSettingChange"

    invoke-direct {p0, v1, v6, v7, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_26
.end method

.method public isPopImapEmailAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v5, 0x1

    .line 154
    .local v5, "result":Z
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 155
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 158
    .local v7, "userID":I
    :try_start_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v2, "cvValues":Landroid/content/ContentValues;
    invoke-static {v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#SelectClause#"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v8, "policyName"

    const-string v9, "allowPopImapEmail"

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAccountAdditionAllowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v8, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN_REF"

    const-string v10, "accountObject"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    .line 165
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v6, :cond_59

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_59

    .line 166
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_59

    .line 167
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 168
    .local v0, "b":[B
    const/4 v8, 0x0

    aget-byte v8, v0, v8
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_56} :catch_75

    if-nez v8, :cond_72

    .line 169
    const/4 v5, 0x0

    .line 178
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_59
    :goto_59
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPopImapEmailAllowed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return v5

    .line 166
    .restart local v0    # "b":[B
    .restart local v2    # "cvValues":Landroid/content/ContentValues;
    .restart local v4    # "i":I
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 174
    .end local v0    # "b":[B
    .end local v2    # "cvValues":Landroid/content/ContentValues;
    .end local v4    # "i":I
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_75
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "EmailPolicyService"

    const-string v9, "Exception in isPopImapEmailAllowed"

    invoke-static {v8, v9, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 312
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 324
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 318
    return-void
.end method

.method public setAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 185
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowForward"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 197
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "EmailAllowHTML"

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 327
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 328
    .local v2, "containerId":I
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    .line 329
    .local v6, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v6, :cond_29

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 331
    iget-boolean v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_33

    .line 334
    :try_start_19
    const-string v3, "eas_account_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v8

    .line 335
    .local v8, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    if-eqz v8, :cond_29

    invoke-interface {v8, p1, p3, p4, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_28} :catch_2a

    move-result v0

    .line 346
    .end local v8    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_29
    :goto_29
    return v0

    .line 336
    :catch_2a
    move-exception v7

    .line 337
    .local v7, "e":Landroid/os/RemoteException;
    const-string v3, "EmailPolicyService"

    const-string v4, "Failed talking with exchange account policy"

    invoke-static {v3, v4, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 342
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_33
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 343
    .local v1, "adminUid":I
    iget-object v3, v6, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v5, "EmailAllowNotificationChange"

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_29
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 306
    return-void
.end method
