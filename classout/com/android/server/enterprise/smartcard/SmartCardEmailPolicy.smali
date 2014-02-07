.class public Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;
.source "SmartCardEmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEmailAccts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "SmartCardEmailPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardEmailPolicy$Stub;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    return-void
.end method

.method private broadcastIntent(I)V
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    aget v0, v3, p1

    .line 222
    .local v0, "emailAcctsPrev":I
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCount(I)I

    move-result v4

    aput v4, v3, p1

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "enabled":Z
    if-lez v0, :cond_2d

    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    aget v3, v3, p1

    if-nez v3, :cond_2d

    .line 226
    const/4 v1, 0x0

    .line 233
    :goto_17
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "edm.intent.action.smartcard.email.authentication"

    invoke-static {p1, v3}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    :cond_2c
    return-void

    .line 227
    :cond_2d
    if-nez v0, :cond_2c

    iget-object v3, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    aget v3, v3, p1

    if-lez v3, :cond_2c

    .line 228
    const/4 v1, 0x1

    goto :goto_17
.end method

.method private enforcePermission(I)I
    .registers 4
    .param p1, "containerId"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 72
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEmailAcctCount(I)I
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 208
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v2, "emailAuthEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v2, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardEmailTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v2

    .line 216
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    :goto_20
    return v2

    .line 212
    :catch_21
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getEmailAcctCount() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v2, -0x1

    goto :goto_20
.end method


# virtual methods
.method public isAuthenticationEnabled(I)Z
    .registers 5
    .param p1, "containerId"    # I

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAuthenticationEnabled(): Number of Email accts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    aget v0, v0, p1

    if-lez v0, :cond_24

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isCredentialRequired(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    if-nez p1, :cond_5

    .line 152
    :cond_4
    :goto_4
    return v3

    .line 134
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 139
    :try_start_d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v5, "EmailAddress"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v5, "emailAuthEnabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v5, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardEmailTable"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_31} :catch_36

    move-result v0

    .line 146
    .local v0, "cnt":I
    if-lez v0, :cond_4

    move v3, v4

    .line 147
    goto :goto_4

    .line 148
    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :catch_36
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v5, "isCredentialRequired() failed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 181
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntent(I)V

    .line 186
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 204
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 199
    return-void
.end method

.method public requireCredentials(Ljava/lang/String;ZI)Z
    .registers 14
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "require"    # Z
    .param p3, "containerId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->enforcePermission(I)I

    move-result v0

    .line 87
    .local v0, "callingUid":I
    if-nez p1, :cond_a

    move v5, v6

    .line 124
    :goto_9
    return v5

    .line 90
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 94
    :try_start_12
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v8, "containerID"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v8, "EmailAddress"

    invoke-virtual {v3, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, "ret":Z
    iget-object v8, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardEmailTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 102
    .local v1, "cnt":I
    if-lez v1, :cond_63

    .line 104
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v8, "emailAuthEnabled"

    if-ne p2, v7, :cond_61

    :goto_42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardEmailTable"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    .line 115
    .end local v2    # "cv":Landroid/content/ContentValues;
    :goto_51
    if-eqz v5, :cond_5f

    .line 117
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->broadcastIntent(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_56} :catch_57

    goto :goto_9

    .line 120
    .end local v1    # "cnt":I
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "ret":Z
    :catch_57
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->TAG:Ljava/lang/String;

    const-string v8, "requireCredentials() failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5f
    move v5, v6

    .line 124
    goto :goto_9

    .restart local v1    # "cnt":I
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    .restart local v5    # "ret":Z
    :cond_61
    move v7, v6

    .line 105
    goto :goto_42

    .line 110
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_63
    :try_start_63
    const-string v8, "emailAuthEnabled"

    if-ne p2, v7, :cond_77

    :goto_67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardEmailTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_75} :catch_57

    move-result v5

    goto :goto_51

    :cond_77
    move v7, v6

    .line 110
    goto :goto_67
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x1

    if-gt v1, v2, :cond_12

    .line 171
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->getEmailAcctCount(I)I

    move-result v0

    .line 173
    .local v0, "cnt":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 174
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;->mEmailAccts:[I

    aput v0, v2, v1

    .line 170
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "cnt":I
    :cond_12
    return-void
.end method
