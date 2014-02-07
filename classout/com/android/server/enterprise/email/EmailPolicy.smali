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
    .line 68
    invoke-direct {p0}, Landroid/app/enterprise/IEmailPolicy$Stub;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    return-void
.end method

.method private enforceEmailPermission()I
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 4
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "ret":Z
    const-string v1, "EmailAllowForward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 246
    const/4 v0, 0x1

    .line 250
    :cond_a
    :goto_a
    return v0

    .line 247
    :cond_b
    const-string v1, "EmailAllowHTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 248
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPolicyState(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "policy"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 215
    new-array v0, v6, [Ljava/lang/String;

    .line 216
    .local v0, "columns":[Ljava/lang/String;
    aput-object p3, v0, v7

    .line 218
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v8, "EmailAddress"

    invoke-virtual {v2, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v8, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "EmailSettingsTable"

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 225
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_29

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 226
    :cond_29
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v4

    .line 240
    :goto_2d
    return v4

    .line 228
    :cond_2e
    const-string v8, "EmailPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicyState: results = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6c

    move v4, v6

    .line 233
    .local v4, "restricterState":Z
    :goto_4d
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 234
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 235
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 236
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_6e

    const-string v8, "1"

    :goto_65
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    goto :goto_2d

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v4    # "restricterState":Z
    :cond_6c
    move v4, v7

    .line 231
    goto :goto_4d

    .line 236
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v4    # "restricterState":Z
    :cond_6e
    const-string v8, "0"

    goto :goto_65

    .line 240
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_71
    if-nez v4, :cond_75

    :goto_73
    move v4, v6

    goto :goto_2d

    :cond_75
    move v6, v7

    goto :goto_73
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

    .line 186
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 187
    :cond_9
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_10
    return v3

    .line 191
    :cond_11
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 193
    .local v0, "EMAIL_REGEX":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 194
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 198
    :cond_21
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v4, "EmailAddress"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz p4, :cond_81

    const-string v4, "1"

    :goto_41
    invoke-virtual {v1, p5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v4, "EmailAddress"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EmailSettingsTable"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 210
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

    .line 202
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "ret":Z
    :cond_81
    const-string v4, "0"

    goto :goto_41
.end method


# virtual methods
.method public allowAccountAddition(IZ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 76
    .local v0, "adminUid":I
    const/4 v4, 0x0

    .line 78
    .local v4, "result":Z
    const/4 v7, 0x1

    :try_start_8
    new-array v3, v7, [B

    .line 79
    .local v3, "refObj":[B
    const/4 v7, 0x0

    if-eqz p2, :cond_44

    :goto_d
    int-to-byte v5, v5

    aput-byte v5, v3, v7

    .line 80
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v1, "cvValues":Landroid/content/ContentValues;
    const-string v5, "policyName"

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v5, "accountObject"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 83
    iget-object v5, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN_REF"

    invoke-virtual {v5, v0, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 84
    const-string v5, "EmailPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowAccountAddition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_46

    .line 89
    .end local v1    # "cvValues":Landroid/content/ContentValues;
    .end local v3    # "refObj":[B
    :goto_43
    return v4

    .restart local v3    # "refObj":[B
    :cond_44
    move v5, v6

    .line 79
    goto :goto_d

    .line 85
    .end local v3    # "refObj":[B
    :catch_46
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EmailPolicyService"

    const-string v6, "Exception in allowAccountAddition"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public allowPopImapEmail(IZ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 120
    .local v0, "adminUid":I
    const/4 v4, 0x0

    .line 122
    .local v4, "result":Z
    const/4 v7, 0x1

    :try_start_8
    new-array v3, v7, [B

    .line 123
    .local v3, "refObj":[B
    const/4 v7, 0x0

    if-eqz p2, :cond_42

    :goto_d
    int-to-byte v5, v5

    aput-byte v5, v3, v7

    .line 124
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v1, "cvValues":Landroid/content/ContentValues;
    const-string v5, "policyName"

    const-string v6, "allowPopImapEmail"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v5, "accountObject"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 127
    iget-object v5, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN_REF"

    invoke-virtual {v5, v0, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 129
    const-string v5, "EmailPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowPopImapEmail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_44

    .line 134
    .end local v1    # "cvValues":Landroid/content/ContentValues;
    .end local v3    # "refObj":[B
    :goto_41
    return v4

    .restart local v3    # "refObj":[B
    :cond_42
    move v5, v6

    .line 123
    goto :goto_d

    .line 130
    .end local v3    # "refObj":[B
    :catch_44
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EmailPolicyService"

    const-string v6, "Exception in allowPopImapEmail"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public getAllowEmailForwarding(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "EmailAllowForward"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllowHTMLEmail(ILjava/lang/String;)Z
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "EmailAllowHTML"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAccountAdditionAllowed(I)Z
    .registers 11
    .param p1, "containerId"    # I

    .prologue
    .line 94
    const/4 v4, 0x1

    .line 97
    .local v4, "result":Z
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v1, "cvValues":Landroid/content/ContentValues;
    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v6, "policyName"

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_REF"

    const-string v8, "accountObject"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v5

    .line 101
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v5, :cond_3d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3d

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3d

    .line 103
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 104
    .local v0, "b":[B
    const/4 v6, 0x0

    aget-byte v6, v0, v6
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_41

    if-nez v6, :cond_3e

    .line 105
    const/4 v4, 0x0

    .line 114
    .end local v0    # "b":[B
    .end local v1    # "cvValues":Landroid/content/ContentValues;
    .end local v3    # "i":I
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3d
    :goto_3d
    return v4

    .line 102
    .restart local v0    # "b":[B
    .restart local v1    # "cvValues":Landroid/content/ContentValues;
    .restart local v3    # "i":I
    .restart local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 110
    .end local v0    # "b":[B
    .end local v1    # "cvValues":Landroid/content/ContentValues;
    .end local v3    # "i":I
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_41
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EmailPolicyService"

    const-string v7, "Exception in isAccountAdditionAllowed"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public isPopImapEmailAllowed(I)Z
    .registers 11
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v4, 0x1

    .line 142
    .local v4, "result":Z
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v1, "cvValues":Landroid/content/ContentValues;
    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v6, "policyName"

    const-string v7, "allowPopImapEmail"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_REF"

    const-string v8, "accountObject"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v5

    .line 147
    .local v5, "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v5, :cond_3b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3b

    .line 148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3b

    .line 149
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 150
    .local v0, "b":[B
    const/4 v6, 0x0

    aget-byte v6, v0, v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3f

    if-nez v6, :cond_3c

    .line 151
    const/4 v4, 0x0

    .line 160
    .end local v0    # "b":[B
    .end local v1    # "cvValues":Landroid/content/ContentValues;
    .end local v3    # "i":I
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3b
    :goto_3b
    return v4

    .line 148
    .restart local v0    # "b":[B
    .restart local v1    # "cvValues":Landroid/content/ContentValues;
    .restart local v3    # "i":I
    .restart local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 156
    .end local v0    # "b":[B
    .end local v1    # "cvValues":Landroid/content/ContentValues;
    .end local v3    # "i":I
    .end local v5    # "resultList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_3f
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EmailPolicyService"

    const-string v7, "Exception in isPopImapEmailAllowed"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 263
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 275
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 269
    return-void
.end method

.method public setAllowEmailForwarding(ILjava/lang/String;Z)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v1

    .line 165
    .local v1, "adminUid":I
    const-string v5, "EmailAllowForward"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAllowHTMLEmail(ILjava/lang/String;Z)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v1

    .line 175
    .local v1, "adminUid":I
    const-string v5, "EmailAllowHTML"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 257
    return-void
.end method
