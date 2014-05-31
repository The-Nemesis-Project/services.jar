.class Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

.field private static ACCOUNTS_DB:Ljava/lang/String; = null

.field private static final ACCOUNTS_DBNAME:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.android.email.EXCHANGE_INTENT"

.field static final ACTION_EMAIL_ACCOUNT_DELETED:Ljava/lang/String; = "com.android.email.ACCOUNT_DELETED"

.field static final ACTION_EMAIL_CREATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DELETE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_DEVICEID_RESULT:Ljava/lang/String; = "android.intent.action.enterprise.GET_DEVICEID"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_ACCOUNT_PASSWORDS_TO_MDM:Ljava/lang/String; = "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_MDM_ACCOUNT_PASSWORDS_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field static final ACTION_EMAIL_SIGNATURE_UPDATED:Ljava/lang/String; = "com.android.email.SIGNATURE_UPDATED"

.field static final ACTION_EMAIL_UPDATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.UPDATE_ACCOUNT_FROM_MDM"

.field static final ACTION_EMAIL_UPDATE_ACCOUNT_PASSWORDS_FROM_MDM:Ljava/lang/String; = "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

.field private static final DELETE_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field private static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field private static final SETUP_RESULT:Ljava/lang/String; = "android.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field private static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"

.field private static adminPkg:Ljava/lang/String;

.field private static currentUserID:I

.field private static emails:Landroid/content/Context;

.field private static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 102
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 104
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 106
    const-string v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 110
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 115
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    .line 116
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 117
    sput v2, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 118
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 119
    sput v2, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 1480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    .registers 28
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    const-class v22, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v22

    const-wide/16 v12, -0x1

    .line 279
    .local v12, "accountId":J
    :try_start_5
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addorUpdateAccount : Processing account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_172

    const-string v4, "creation"

    :goto_16
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " request for EmailId: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (AccountType is : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_177

    const-string v4, "Eas"

    :goto_36
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " )"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-wide/16 v16, -0x1

    .line 284
    .local v16, "accountsRowId":J
    const-wide/16 v5, -0x1

    .line 285
    .local v5, "inComingRowId":J
    const-wide/16 v7, -0x1

    .line 286
    .local v7, "outGoingRowId":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 287
    .local v21, "userID":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 288
    .local v3, "containerId":I
    sput v21, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 289
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for  "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_17b

    const-string v4, "Eas"

    :goto_70
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "     : user id : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_5 .. :try_end_87} :catchall_231

    .line 291
    if-eqz v21, :cond_17f

    .line 292
    :try_start_89
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 293
    const-string v4, "SettingsUtils"

    const-string v9, "addorUpdateAccount : USER space"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a8} :catch_183
    .catchall {:try_start_89 .. :try_end_a8} :catchall_231

    .line 303
    :goto_a8
    :try_start_a8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v9, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    sget-object v23, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v4, v9, v10, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v16

    .line 306
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v16

    if-nez v4, :cond_cf

    .line 307
    const-string v4, "SettingsUtils"

    const-string v9, "accountsRowId : -1 .. "

    invoke-static {v4, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_cf
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v19

    .line 311
    .local v19, "hostUri":Landroid/net/Uri;
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v16

    if-eqz v4, :cond_10f

    .line 313
    const/4 v4, 0x1

    sget-object v9, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v5

    .line 315
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v5

    if-eqz v4, :cond_f9

    .line 316
    const/4 v4, 0x0

    sget-object v9, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v7

    .line 319
    :cond_f9
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v5

    if-eqz v4, :cond_10f

    const-wide/16 v9, -0x1

    cmp-long v4, v9, v7

    if-eqz v4, :cond_10f

    .line 320
    sget-object v10, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v4, p1

    move/from16 v9, p2

    invoke-static/range {v3 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v12

    .line 324
    :cond_10f
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v12

    if-nez v4, :cond_18d

    .line 325
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addorUpdateAccount : Account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_189

    const-string v4, "creation"

    :goto_126
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " was unsuccessful for EmailId: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz p2, :cond_16f

    .line 331
    const-string v4, "SettingsUtils"

    const-string v9, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v16

    if-eqz v4, :cond_155

    .line 333
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 336
    :cond_155
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v5

    if-eqz v4, :cond_162

    .line 337
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v0, v5, v6, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 340
    :cond_162
    const-wide/16 v9, -0x1

    cmp-long v4, v9, v7

    if-eqz v4, :cond_16f

    .line 341
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v0, v7, v8, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    :try_end_16f
    .catchall {:try_start_a8 .. :try_end_16f} :catchall_231

    :cond_16f
    :goto_16f
    move-wide v14, v12

    .line 368
    .end local v12    # "accountId":J
    .end local v19    # "hostUri":Landroid/net/Uri;
    .local v14, "accountId":J
    :goto_170
    monitor-exit v22

    return-wide v14

    .line 279
    .end local v3    # "containerId":I
    .end local v5    # "inComingRowId":J
    .end local v7    # "outGoingRowId":J
    .end local v14    # "accountId":J
    .end local v16    # "accountsRowId":J
    .end local v21    # "userID":I
    .restart local v12    # "accountId":J
    :cond_172
    :try_start_172
    const-string/jumbo v4, "updation"

    goto/16 :goto_16

    :cond_177
    const-string v4, "Non-Eas"

    goto/16 :goto_36

    .line 289
    .restart local v3    # "containerId":I
    .restart local v5    # "inComingRowId":J
    .restart local v7    # "outGoingRowId":J
    .restart local v16    # "accountsRowId":J
    .restart local v21    # "userID":I
    :cond_17b
    const-string v4, "Non-Eas"
    :try_end_17d
    .catchall {:try_start_172 .. :try_end_17d} :catchall_231

    goto/16 :goto_70

    .line 296
    :cond_17f
    :try_start_17f
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_181} :catch_183
    .catchall {:try_start_17f .. :try_end_181} :catchall_231

    goto/16 :goto_a8

    .line 298
    :catch_183
    move-exception v18

    .line 299
    .local v18, "e":Ljava/lang/Exception;
    :try_start_184
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v14, v12

    .line 300
    .end local v12    # "accountId":J
    .restart local v14    # "accountId":J
    goto :goto_170

    .line 325
    .end local v14    # "accountId":J
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v12    # "accountId":J
    .restart local v19    # "hostUri":Landroid/net/Uri;
    :cond_189
    const-string/jumbo v4, "updation"

    goto :goto_126

    .line 345
    :cond_18d
    if-eqz p2, :cond_1e7

    .line 346
    new-instance v20, Landroid/content/Intent;

    const-string v4, "com.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v20, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 350
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v9, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v4, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .local v11, "account":Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".provider"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    move/from16 v0, v21

    invoke-static {v11, v4, v9, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 358
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v4, :cond_1e7

    .line 359
    sget-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    .line 362
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_1e7
    const-string v9, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addorUpdateAccount : Account "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_234

    const-string v4, "created"

    :goto_1f8
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " successfully for EmailId: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " ( "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p2, :cond_238

    const-string v4, "Generated"

    :goto_214
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "  AccountId : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " )"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22f
    .catchall {:try_start_184 .. :try_end_22f} :catchall_231

    goto/16 :goto_16f

    .line 278
    .end local v3    # "containerId":I
    .end local v5    # "inComingRowId":J
    .end local v7    # "outGoingRowId":J
    .end local v16    # "accountsRowId":J
    .end local v19    # "hostUri":Landroid/net/Uri;
    .end local v21    # "userID":I
    :catchall_231
    move-exception v4

    monitor-exit v22

    throw v4

    .line 362
    .restart local v3    # "containerId":I
    .restart local v5    # "inComingRowId":J
    .restart local v7    # "outGoingRowId":J
    .restart local v16    # "accountsRowId":J
    .restart local v19    # "hostUri":Landroid/net/Uri;
    .restart local v21    # "userID":I
    :cond_234
    :try_start_234
    const-string/jumbo v4, "updated"

    goto :goto_1f8

    :cond_238
    const-string v4, "Updated"
    :try_end_23a
    .catchall {:try_start_234 .. :try_end_23a} :catchall_231

    goto :goto_214
.end method

.method public static createIDforAccount()J
    .registers 6

    .prologue
    .line 1510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1511
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    mul-long v0, v2, v4

    .line 1512
    :cond_12
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>  createIDforAccount   <<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    return-wide v0
.end method

.method static declared-synchronized deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .registers 24
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    const-class v19, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v19

    const/16 v17, 0x0

    .line 750
    .local v17, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_15

    .line 751
    :try_start_b
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccount : accountId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_c4

    .line 752
    const/4 v4, 0x0

    .line 819
    :goto_13
    monitor-exit v19

    return v4

    .line 754
    :cond_15
    :try_start_15
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 755
    .local v18, "userID":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 756
    .local v14, "containerId":I
    sput v18, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 757
    const/4 v13, 0x0

    .line 758
    .local v13, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v16, 0x0

    .line 759
    .local v16, "found":Z
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 760
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 761
    .local v2, "acctUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_c4

    move-result-object v3

    .line 763
    .local v3, "policiesUri":Landroid/net/Uri;
    if-eqz v18, :cond_b0

    .line 764
    :try_start_34
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 765
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccount : USER space"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_53} :catch_b3
    .catchall {:try_start_34 .. :try_end_53} :catchall_c4

    .line 775
    :goto_53
    :try_start_53
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const/4 v7, 0x0

    move-wide/from16 v4, p1

    move-object/from16 v8, p0

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_bf
    .catchall {:try_start_53 .. :try_end_5d} :catchall_c4

    move-result-object v13

    .line 776
    if-eqz v13, :cond_ab

    .line 781
    :cond_60
    :try_start_60
    iget-object v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v5, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v5, v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 785
    iget-wide v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 787
    iget-wide v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v1, v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 790
    iget v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    int-to-long v4, v4

    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v14, v4, v5, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountTableRow(IJLandroid/content/Context;)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_89} :catch_ba
    .catchall {:try_start_60 .. :try_end_89} :catchall_c4

    move-result v16

    .line 795
    :goto_8a
    add-int/lit8 v17, v17, 0x1

    .line 797
    if-eqz v16, :cond_e7

    .line 798
    :try_start_8e
    iget-boolean v4, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_c7

    .line 799
    iget-object v6, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v9, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v10, 0x1

    sget-object v11, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v12, p0

    invoke-static/range {v4 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a4} :catch_bf
    .catchall {:try_start_8e .. :try_end_a4} :catchall_c4

    move-result-wide p1

    .line 807
    :goto_a5
    const-wide/16 v4, -0x1

    cmp-long v4, v4, p1

    if-nez v4, :cond_da

    .line 819
    :cond_ab
    :goto_ab
    if-lez v17, :cond_ea

    const/4 v4, 0x1

    goto/16 :goto_13

    .line 768
    :cond_b0
    :try_start_b0
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b2} :catch_b3
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_c4

    goto :goto_53

    .line 770
    :catch_b3
    move-exception v15

    .line 771
    .local v15, "e":Ljava/lang/Exception;
    :try_start_b4
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_c4

    .line 772
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 792
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_ba
    move-exception v15

    .line 793
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_bb
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf
    .catchall {:try_start_bb .. :try_end_be} :catchall_c4

    goto :goto_8a

    .line 816
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_bf
    move-exception v15

    .line 817
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_c0
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_ab

    .line 749
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "policiesUri":Landroid/net/Uri;
    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v14    # "containerId":I
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "found":Z
    .end local v18    # "userID":I
    :catchall_c4
    move-exception v4

    monitor-exit v19

    throw v4

    .line 803
    .restart local v1    # "hostUri":Landroid/net/Uri;
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v3    # "policiesUri":Landroid/net/Uri;
    .restart local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v14    # "containerId":I
    .restart local v16    # "found":Z
    .restart local v18    # "userID":I
    :cond_c7
    const/4 v6, 0x0

    :try_start_c8
    iget-object v7, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v9, v13, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object v4, v1

    move-object v5, v2

    move-object/from16 v12, p0

    invoke-static/range {v4 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J

    move-result-wide p1

    goto :goto_a5

    .line 809
    :cond_da
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const/4 v7, 0x0

    move-wide/from16 v4, p1

    move-object/from16 v8, p0

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_e4} :catch_bf
    .catchall {:try_start_c8 .. :try_end_e4} :catchall_c4

    move-result-object v13

    .line 810
    if-eqz v13, :cond_ab

    .line 814
    :cond_e7
    if-nez v16, :cond_60

    goto :goto_ab

    .line 819
    :cond_ea
    const/4 v4, 0x0

    goto/16 :goto_13
.end method

.method static deleteAccountTableRow(IJLandroid/content/Context;)Z
    .registers 11
    .param p0, "containerId"    # I
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 851
    const/4 v1, -0x1

    .line 852
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_10

    .line 853
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_f
    :goto_f
    return v3

    .line 857
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 858
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 859
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3e

    .line 863
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_3a
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 860
    :catch_3e
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .registers 12
    .param p0, "rowId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p0

    if-lez v6, :cond_12

    .line 470
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_11
    :goto_11
    return v3

    .line 475
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 476
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 479
    const-string v6, "accounts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 480
    .local v2, "rowCount":I
    if-lez v2, :cond_65

    .line 481
    :goto_39
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_51} :catch_67
    .catchall {:try_start_12 .. :try_end_51} :catchall_7f

    .line 487
    if-eqz v0, :cond_56

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    :cond_56
    cmp-long v6, p0, v4

    if-eqz v6, :cond_5f

    .line 492
    sget v6, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .end local v2    # "rowCount":I
    :goto_5c
    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 495
    :cond_5f
    cmp-long v4, v4, p0

    if-eqz v4, :cond_11

    const/4 v3, 0x1

    goto :goto_11

    .restart local v2    # "rowCount":I
    :cond_65
    move-wide p0, v4

    .line 480
    goto :goto_39

    .line 483
    .end local v2    # "rowCount":I
    :catch_67
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 485
    :try_start_6a
    const-string v6, "SettingsUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_7f

    .line 487
    if-eqz v0, :cond_78

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    :cond_78
    cmp-long v6, p0, v4

    if-eqz v6, :cond_5f

    .line 492
    sget v6, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    goto :goto_5c

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_7f
    move-exception v3

    if-eqz v0, :cond_85

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 490
    :cond_85
    cmp-long v4, p0, v4

    if-eqz v4, :cond_8e

    .line 492
    sget v4, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 487
    :cond_8e
    throw v3
.end method

.method private static deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 11
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 829
    const/4 v1, -0x1

    .line 830
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_10

    .line 831
    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    :cond_f
    :goto_f
    return v3

    .line 835
    :cond_10
    :try_start_10
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 836
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 837
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_3a

    .line 841
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_36
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 838
    :catch_3a
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 40
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "policiesUri"    # Landroid/net/Uri;
    .param p3, "accountId"    # J
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "passwordRequired"    # Z
    .param p7, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1002
    const/16 v18, 0x0

    .line 1003
    .local v18, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v19, 0x0

    .line 1004
    .local v19, "c":Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 1006
    .local v20, "c2":Landroid/database/Cursor;
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gtz v5, :cond_29

    .line 1007
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, v18

    .line 1136
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_28
    return-object v18

    .line 1011
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_29
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v31

    .line 1012
    .local v31, "userID":I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    .line 1013
    .local v21, "containerId":I
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEASAccounts() :    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const/16 v5, 0x17

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "displayName"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "emailAddress"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "syncLookback"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "syncInterval"

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-string v6, "peakDays"

    aput-object v6, v7, v5

    const/4 v5, 0x6

    const-string v6, "peakStartMinute"

    aput-object v6, v7, v5

    const/4 v5, 0x7

    const-string v6, "peakEndMinute"

    aput-object v6, v7, v5

    const/16 v5, 0x8

    const-string v6, "peakSchedule"

    aput-object v6, v7, v5

    const/16 v5, 0x9

    const-string v6, "offPeakSchedule"

    aput-object v6, v7, v5

    const/16 v5, 0xa

    const-string v6, "roamingSchedule"

    aput-object v6, v7, v5

    const/16 v5, 0xb

    const-string v6, "hostAuthKeyRecv"

    aput-object v6, v7, v5

    const/16 v5, 0xc

    const-string v6, "hostAuthKeySend"

    aput-object v6, v7, v5

    const/16 v5, 0xd

    const-string v6, "flags"

    aput-object v6, v7, v5

    const/16 v5, 0xe

    const-string v6, "isDefault"

    aput-object v6, v7, v5

    const/16 v5, 0xf

    const-string v6, "compatibilityUuid"

    aput-object v6, v7, v5

    const/16 v5, 0x10

    const-string v6, "senderName"

    aput-object v6, v7, v5

    const/16 v5, 0x11

    const-string v6, "ringtoneUri"

    aput-object v6, v7, v5

    const/16 v5, 0x12

    const-string v6, "protocolVersion"

    aput-object v6, v7, v5

    const/16 v5, 0x13

    const-string/jumbo v6, "signature"

    aput-object v6, v7, v5

    const/16 v5, 0x14

    const-string v6, "calendarSyncLookback"

    aput-object v6, v7, v5

    const/16 v5, 0x15

    const-string v6, "emailsize"

    aput-object v6, v7, v5

    const/16 v5, 0x16

    const-string v6, "roamingemailsize"

    aput-object v6, v7, v5

    .line 1027
    .local v7, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v29

    .line 1029
    .local v29, "token":J
    if-eqz v31, :cond_31d

    .line 1030
    :try_start_dc
    move-object/from16 v0, p7

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v31

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1031
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccountDetails : USER space   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_114} :catch_321

    .line 1043
    :goto_114
    :try_start_114
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1045
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccount row count : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_434

    .line 1047
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1048
    new-instance v11, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v11}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_161} :catch_414
    .catchall {:try_start_114 .. :try_end_161} :catchall_422

    .line 1049
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v11, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_161
    const-string v5, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 1050
    const-string v5, "displayName"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 1051
    const-string v5, "emailAddress"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 1052
    const-string/jumbo v5, "syncLookback"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 1053
    const-string/jumbo v5, "syncInterval"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1054
    const-string v5, "peakDays"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 1055
    const-string v5, "peakStartMinute"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 1056
    const-string v5, "peakEndMinute"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 1057
    const-string v5, "peakSchedule"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 1058
    const-string v5, "offPeakSchedule"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 1060
    const-string v5, "roamingSchedule"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 1062
    const-string v5, "hostAuthKeyRecv"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 1064
    const-string v5, "hostAuthKeySend"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 1066
    const-string v5, "flags"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 1067
    const/4 v5, 0x2

    iget v6, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v6, v6, 0x2

    if-ne v5, v6, :cond_329

    const/4 v5, 0x1

    :goto_24b
    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 1068
    const/16 v5, 0x40

    iget v6, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v6, v6, 0x40

    if-ne v5, v6, :cond_32c

    const/4 v5, 0x1

    :goto_256
    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 1069
    const-string v5, "isDefault"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_32f

    const/4 v5, 0x1

    :goto_26a
    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 1070
    const-string v5, "compatibilityUuid"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 1072
    const-string v5, "senderName"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 1073
    const-string v5, "ringtoneUri"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 1074
    const-string v5, "protocolVersion"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 1076
    const-string/jumbo v5, "signature"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 1077
    const-string v5, "calendarSyncLookback"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 1078
    const-string v5, "emailsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 1079
    const-string v5, "roamingemailsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 1082
    iget-wide v9, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v12, 0x1

    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v27

    .line 1083
    .local v27, "ret1":Z
    iget-wide v9, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v8, p0

    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v28

    .line 1085
    .local v28, "ret2":Z
    if-eqz v27, :cond_307

    if-nez v28, :cond_332

    .line 1086
    :cond_307
    const/4 v11, 0x0

    .line 1087
    const-string v5, "SettingsUtils"

    const-string v6, "getAccountIds : null "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30f
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_30f} :catch_432
    .catchall {:try_start_161 .. :try_end_30f} :catchall_430

    .line 1129
    if-eqz v19, :cond_314

    .line 1130
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_314
    if-eqz v20, :cond_319

    .line 1132
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_319
    move-object/from16 v18, v11

    .line 1088
    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_28

    .line 1034
    .end local v27    # "ret1":Z
    .end local v28    # "ret2":Z
    :cond_31d
    :try_start_31d
    sput-object p5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_31f
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_31f} :catch_321

    goto/16 :goto_114

    .line 1037
    :catch_321
    move-exception v22

    .line 1038
    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v11, v18

    .line 1039
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_28

    .line 1067
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_329
    const/4 v5, 0x0

    goto/16 :goto_24b

    .line 1068
    :cond_32c
    const/4 v5, 0x0

    goto/16 :goto_256

    .line 1069
    :cond_32f
    const/4 v5, 0x0

    goto/16 :goto_26a

    .line 1091
    .restart local v27    # "ret1":Z
    .restart local v28    # "ret2":Z
    :cond_332
    if-eqz p6, :cond_34a

    .line 1092
    :try_start_334
    move/from16 v0, v21

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v25

    .line 1093
    .local v25, "pwds":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v25, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1094
    const/4 v5, 0x1

    aget-object v5, v25, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1097
    .end local v25    # "pwds":[Ljava/lang/String;
    :cond_34a
    const/4 v5, 0x0

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1098
    iget-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v6, "eas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_373

    .line 1099
    iget-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1100
    .local v26, "ret":[Ljava/lang/String;
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1101
    const/4 v5, 0x0

    aget-object v5, v26, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 1102
    const/4 v5, 0x1

    aget-object v5, v26, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1103
    const/4 v5, 0x1

    aget-object v5, v26, v5

    iput-object v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1104
    iget v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1108
    .end local v26    # "ret":[Ljava/lang/String;
    :cond_373
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1109
    const/4 v5, 0x5

    new-array v14, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v14, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v14, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "type"

    aput-object v6, v14, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "value"

    aput-object v6, v14, v5

    const/4 v5, 0x4

    const-string v6, "account_id"

    aput-object v6, v14, v5

    .line 1111
    .local v14, "POLICIES_PROJECTION":[Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p2

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1112
    if-eqz v20, :cond_403

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_403

    .line 1113
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_403

    .line 1115
    :cond_3c7
    const-string/jumbo v5, "value"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1116
    .local v24, "policyvalue":Ljava/lang/String;
    const-string v5, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1117
    .local v23, "policyname":Ljava/lang/String;
    if-eqz v23, :cond_3fd

    if-eqz v24, :cond_3fd

    .line 1118
    const-string v5, "AllowHTMLEmail"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3fd

    .line 1119
    const-string/jumbo v5, "true"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v11, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1122
    :cond_3fd
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_400
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_400} :catch_432
    .catchall {:try_start_334 .. :try_end_400} :catchall_430

    move-result v5

    if-nez v5, :cond_3c7

    .line 1129
    .end local v14    # "POLICIES_PROJECTION":[Ljava/lang/String;
    .end local v23    # "policyname":Ljava/lang/String;
    .end local v24    # "policyvalue":Ljava/lang/String;
    .end local v27    # "ret1":Z
    .end local v28    # "ret2":Z
    :cond_403
    :goto_403
    if-eqz v19, :cond_408

    .line 1130
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_408
    if-eqz v20, :cond_40d

    .line 1132
    :goto_40a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1135
    :cond_40d
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v18, v11

    .line 1136
    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_28

    .line 1126
    :catch_414
    move-exception v22

    move-object/from16 v11, v18

    .line 1127
    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v22    # "e":Ljava/lang/Exception;
    :goto_417
    :try_start_417
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41a
    .catchall {:try_start_417 .. :try_end_41a} :catchall_430

    .line 1129
    if-eqz v19, :cond_41f

    .line 1130
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_41f
    if-eqz v20, :cond_40d

    goto :goto_40a

    .line 1129
    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catchall_422
    move-exception v5

    move-object/from16 v11, v18

    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_425
    if-eqz v19, :cond_42a

    .line 1130
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_42a
    if-eqz v20, :cond_42f

    .line 1132
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1129
    :cond_42f
    throw v5

    :catchall_430
    move-exception v5

    goto :goto_425

    .line 1126
    :catch_432
    move-exception v22

    goto :goto_417

    .end local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_434
    move-object/from16 v11, v18

    .end local v18    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto :goto_403
.end method

.method private static getAccountCBContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1384
    if-nez p0, :cond_5

    .line 1385
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 1388
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/accountcb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method private static getAccountContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1358
    if-gtz p0, :cond_c

    .line 1359
    const-string v0, "SettingsUtils"

    const-string v1, "getAccountContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 1363
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_b
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 14
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 983
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_3
    iget v8, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 984
    .local v8, "containerId":I
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 985
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 986
    .local v1, "acctUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 987
    .local v2, "policiesUri":Landroid/net/Uri;
    const/4 v6, 0x0

    move-wide v3, p1

    move-object v5, p3

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    move-result-object v3

    monitor-exit v9

    return-object v3

    .line 983
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v2    # "policiesUri":Landroid/net/Uri;
    .end local v8    # "containerId":I
    :catchall_1b
    move-exception v3

    monitor-exit v9

    throw v3
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 15
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "passwordRequired"    # Z

    .prologue
    .line 992
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_3
    iget v8, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 993
    .local v8, "containerId":I
    const-string v3, "SettingsUtils"

    const-string v4, "getAccountDetails() :  with P"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 995
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 996
    .local v1, "acctUri":Landroid/net/Uri;
    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .local v2, "policiesUri":Landroid/net/Uri;
    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p0

    .line 997
    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    move-result-object v3

    monitor-exit v9

    return-object v3

    .line 992
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v2    # "policiesUri":Landroid/net/Uri;
    .end local v8    # "containerId":I
    :catchall_22
    move-exception v3

    monitor-exit v9

    throw v3
.end method

.method static declared-synchronized getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 18
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "easDomain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "isEas"    # Z
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 876
    const-class v10, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v10

    :try_start_3
    iget v9, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 877
    .local v9, "containerId":I
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 878
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 880
    .local v1, "acctUri":Landroid/net/Uri;
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    .line 881
    invoke-static/range {v0 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_38

    move-result-wide v2

    monitor-exit v10

    return-wide v2

    .line 876
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v9    # "containerId":I
    :catchall_38
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    .registers 28
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "isEas"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 887
    const-wide/16 v7, -0x1

    .line 888
    .local v7, "accountId":J
    const/4 v11, 0x0

    .line 890
    .local v11, "c":Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 891
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 892
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 893
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 895
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    if-nez p5, :cond_22

    .line 896
    :cond_19
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v7

    .line 972
    .end local v7    # "accountId":J
    .local v9, "accountId":J
    :goto_21
    return-wide v9

    .line 899
    .end local v9    # "accountId":J
    .restart local v7    # "accountId":J
    :cond_22
    if-eqz p6, :cond_41

    if-eqz p2, :cond_41

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 902
    :cond_41
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 906
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v5, v1

    const/4 v1, 0x1

    aput-object p4, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    .line 910
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p8

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 911
    .local v12, "callingUID":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v18

    .line 912
    .local v18, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 913
    .local v16, "token":J
    const-wide/16 v14, -0x1

    .line 915
    .local v14, "hostAuthId":J
    if-eqz v18, :cond_158

    .line 916
    :try_start_65
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 917
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountIdInternal : USER space"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_80} :catch_15c

    .line 928
    :goto_80
    :try_start_80
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "protocol=? AND address=? AND login=? "

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 933
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 935
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v14, v1

    .line 936
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d4} :catch_163
    .catchall {:try_start_80 .. :try_end_d4} :catchall_16b

    .line 941
    :cond_d4
    if-eqz v11, :cond_d9

    .line 942
    :goto_d6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_d9
    const/4 v11, 0x0

    .line 946
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v14

    if-eqz v1, :cond_152

    .line 947
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 950
    .restart local v3    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 954
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :try_start_f9
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 959
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 961
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v7, v1

    .line 962
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_14d} :catch_172
    .catchall {:try_start_f9 .. :try_end_14d} :catchall_179

    .line 967
    :cond_14d
    if-eqz v11, :cond_152

    .line 968
    :goto_14f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 971
    :cond_152
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v9, v7

    .line 972
    .end local v7    # "accountId":J
    .restart local v9    # "accountId":J
    goto/16 :goto_21

    .line 921
    .end local v9    # "accountId":J
    .restart local v7    # "accountId":J
    :cond_158
    :try_start_158
    sput-object p7, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15a} :catch_15c

    goto/16 :goto_80

    .line 923
    :catch_15c
    move-exception v13

    .line 924
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v9, v7

    .line 925
    .end local v7    # "accountId":J
    .restart local v9    # "accountId":J
    goto/16 :goto_21

    .line 938
    .end local v9    # "accountId":J
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v7    # "accountId":J
    :catch_163
    move-exception v13

    .line 939
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_164
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_16b

    .line 941
    if-eqz v11, :cond_d9

    goto/16 :goto_d6

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_16b
    move-exception v1

    if-eqz v11, :cond_171

    .line 942
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_171
    throw v1

    .line 964
    :catch_172
    move-exception v13

    .line 965
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_173
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_176
    .catchall {:try_start_173 .. :try_end_176} :catchall_179

    .line 967
    if-eqz v11, :cond_152

    goto :goto_14f

    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_179
    move-exception v1

    if-eqz v11, :cond_17f

    .line 968
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 967
    :cond_17f
    throw v1
.end method

.method static declared-synchronized getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J
    .registers 21
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1140
    const-class v18, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v18

    const/4 v13, 0x0

    .line 1141
    .local v13, "ret":[J
    const/4 v7, 0x0

    .line 1142
    .local v7, "c":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_6
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 1146
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1147
    .local v17, "userID":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1148
    .local v8, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_a3

    move-result-wide v15

    .line 1151
    .local v15, "token":J
    if-eqz v17, :cond_84

    .line 1152
    :try_start_1b
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1153
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountIds : USER space"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3a} :catch_87
    .catchall {:try_start_1b .. :try_end_3a} :catchall_a3

    .line 1164
    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1166
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1167
    .local v9, "count":I
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accounts row count : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    if-lez v9, :cond_a6

    .line 1169
    const/4 v11, 0x0

    .line 1170
    .local v11, "i":I
    new-array v13, v9, [J

    move v12, v11

    .line 1171
    .end local v11    # "i":I
    .local v12, "i":I
    :goto_6d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1172
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "i":I
    .restart local v11    # "i":I
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v13, v12
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_82} :catch_8e
    .catchall {:try_start_3a .. :try_end_82} :catchall_9c

    move v12, v11

    .end local v11    # "i":I
    .restart local v12    # "i":I
    goto :goto_6d

    .line 1156
    .end local v9    # "count":I
    .end local v12    # "i":I
    :cond_84
    :try_start_84
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_86} :catch_87
    .catchall {:try_start_84 .. :try_end_86} :catchall_a3

    goto :goto_3a

    .line 1159
    :catch_87
    move-exception v10

    .line 1160
    .local v10, "e":Ljava/lang/Exception;
    :try_start_88
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a3

    move-object v14, v13

    .line 1183
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "ret":[J
    .local v14, "ret":[J
    :goto_8c
    monitor-exit v18

    return-object v14

    .line 1175
    .end local v14    # "ret":[J
    .restart local v13    # "ret":[J
    :catch_8e
    move-exception v10

    .line 1176
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8f
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_9c

    .line 1178
    if-eqz v7, :cond_97

    .line 1179
    :try_start_94
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1182
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_97
    :goto_97
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v14, v13

    .line 1183
    .end local v13    # "ret":[J
    .restart local v14    # "ret":[J
    goto :goto_8c

    .line 1178
    .end local v14    # "ret":[J
    .restart local v13    # "ret":[J
    :catchall_9c
    move-exception v1

    if-eqz v7, :cond_a2

    .line 1179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1178
    :cond_a2
    throw v1
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_a3

    .line 1140
    .end local v3    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v8    # "containerId":I
    .end local v15    # "token":J
    .end local v17    # "userID":I
    :catchall_a3
    move-exception v1

    monitor-exit v18

    throw v1

    .line 1178
    .restart local v3    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v8    # "containerId":I
    .restart local v9    # "count":I
    .restart local v15    # "token":J
    .restart local v17    # "userID":I
    :cond_a6
    if-eqz v7, :cond_97

    .line 1179
    :try_start_a8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_a3

    goto :goto_97
.end method

.method private static getAccountType(ZI)Ljava/lang/String;
    .registers 3
    .param p0, "isEAS"    # Z
    .param p1, "containerId"    # I

    .prologue
    .line 1354
    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .registers 14
    .param p0, "emailId"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 501
    .local v3, "cr":Landroid/database/Cursor;
    const-wide/16 v5, -0x1

    .line 502
    .local v5, "rowId":J
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 505
    if-eqz p0, :cond_125

    .line 508
    :try_start_e
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 509
    sget-object v7, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 511
    const-wide/16 v1, -0x1

    .line 513
    .local v1, "accountsDBRowId":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_cf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\' AND type = \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3f
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 517
    const-string v8, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - got row count : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for emailAddress : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_d3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_86
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_a5

    .line 521
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 522
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 523
    if-eqz v3, :cond_a4

    .line 524
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_a4
    const/4 v3, 0x0

    .line 527
    :cond_a5
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-eqz v7, :cond_d6

    .line 528
    move-wide v5, v1

    .line 529
    const-string v7, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c4} :catch_108
    .catchall {:try_start_e .. :try_end_c4} :catchall_119

    .line 540
    :goto_c4
    if-eqz v3, :cond_c9

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_c9
    if-eqz v0, :cond_ce

    .line 543
    .end local v1    # "accountsDBRowId":J
    :goto_cb
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 549
    :cond_ce
    :goto_ce
    return-wide v5

    .line 513
    .restart local v1    # "accountsDBRowId":J
    :cond_cf
    :try_start_cf
    const-string v7, ""

    goto/16 :goto_3f

    .line 517
    :cond_d3
    const-string v7, ""

    goto :goto_86

    .line 531
    :cond_d6
    const-string v8, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAccountsDBRowId - entry doesn\'t exist for name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_116

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_fc
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_107} :catch_108
    .catchall {:try_start_cf .. :try_end_107} :catchall_119

    goto :goto_c4

    .line 536
    .end local v1    # "accountsDBRowId":J
    :catch_108
    move-exception v4

    .line 537
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    .line 538
    :try_start_10b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10e
    .catchall {:try_start_10b .. :try_end_10e} :catchall_119

    .line 540
    if-eqz v3, :cond_113

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_113
    if-eqz v0, :cond_ce

    goto :goto_cb

    .line 531
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "accountsDBRowId":J
    :cond_116
    :try_start_116
    const-string v7, ""
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_118} :catch_108
    .catchall {:try_start_116 .. :try_end_118} :catchall_119

    goto :goto_fc

    .line 540
    .end local v1    # "accountsDBRowId":J
    :catchall_119
    move-exception v7

    if-eqz v3, :cond_11f

    .line 541
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_11f
    if-eqz v0, :cond_124

    .line 543
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 540
    :cond_124
    throw v7

    .line 547
    :cond_125
    const-string v7, "SettingsUtils"

    const-string v8, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce
.end method

.method static declared-synchronized getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;
    .registers 19
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1271
    const-class v14, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v14

    const/4 v8, 0x0

    .line 1272
    .local v8, "alias":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1274
    .local v10, "c":Landroid/database/Cursor;
    :try_start_5
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 1275
    .local v13, "userID":I
    iget v11, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1276
    .local v11, "containerId":I
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "cbaCertificateAlias"

    aput-object v3, v4, v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_b5

    .line 1281
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v13, :cond_a2

    .line 1282
    :try_start_1a
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v13}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1283
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCBAAlias : USER space"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_46} :catch_a5
    .catchall {:try_start_1a .. :try_end_46} :catchall_b5

    .line 1294
    :goto_46
    :try_start_46
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1296
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccount row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9a

    .line 1298
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1299
    const-string v2, "cbaCertificateAlias"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_99} :catch_ab
    .catchall {:try_start_46 .. :try_end_99} :catchall_b8

    move-result-object v8

    .line 1304
    :cond_9a
    if-eqz v10, :cond_9f

    .line 1305
    :try_start_9c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_b5

    :cond_9f
    :goto_9f
    move-object v9, v8

    .line 1307
    .end local v8    # "alias":Ljava/lang/String;
    .local v9, "alias":Ljava/lang/String;
    :goto_a0
    monitor-exit v14

    return-object v9

    .line 1286
    .end local v9    # "alias":Ljava/lang/String;
    .restart local v8    # "alias":Ljava/lang/String;
    :cond_a2
    :try_start_a2
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a4} :catch_a5
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_b5

    goto :goto_46

    .line 1289
    :catch_a5
    move-exception v12

    .line 1290
    .local v12, "e":Ljava/lang/Exception;
    :try_start_a6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b5

    move-object v9, v8

    .line 1291
    .end local v8    # "alias":Ljava/lang/String;
    .restart local v9    # "alias":Ljava/lang/String;
    goto :goto_a0

    .line 1301
    .end local v9    # "alias":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "alias":Ljava/lang/String;
    :catch_ab
    move-exception v12

    .line 1302
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_ac
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b8

    .line 1304
    if-eqz v10, :cond_9f

    .line 1305
    :try_start_b1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_9f

    .line 1271
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v11    # "containerId":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "userID":I
    :catchall_b5
    move-exception v2

    monitor-exit v14

    throw v2

    .line 1304
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v11    # "containerId":I
    .restart local v13    # "userID":I
    :catchall_b8
    move-exception v2

    if-eqz v10, :cond_be

    .line 1305
    :try_start_bb
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1304
    :cond_be
    throw v2
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_b5
.end method

.method public static getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "containerId"    # I
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1311
    if-gtz p0, :cond_3

    .line 1318
    .end local p1    # "action":Ljava/lang/String;
    :goto_2
    return-object p1

    .line 1315
    .restart local p1    # "action":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, "containerizedAction":Ljava/lang/String;
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 1318
    goto :goto_2
.end method

.method public static getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1345
    if-gez p0, :cond_3

    .line 1349
    .end local p1    # "str":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "login"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1247
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 1250
    .local v0, "easDomainAndUser":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1251
    if-eqz p0, :cond_3a

    .line 1252
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1253
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "sp":[Ljava/lang/String;
    if-eqz v1, :cond_3a

    array-length v2, v1

    if-lez v2, :cond_3a

    .line 1255
    array-length v2, v1

    if-ne v5, v2, :cond_3b

    .line 1256
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1257
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1266
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .line 1258
    .restart local v1    # "sp":[Ljava/lang/String;
    :cond_3b
    array-length v2, v1

    if-ne v3, v2, :cond_3a

    .line 1259
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_3a

    .line 1263
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_47
    aput-object p0, v0, v3

    goto :goto_3a
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .prologue
    .line 1330
    if-gtz p0, :cond_5

    .line 1331
    const-string v0, "com.android.exchange"

    .line 1334
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "com.android.exchange"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .prologue
    .line 1322
    if-gtz p0, :cond_5

    .line 1323
    const-string v0, "com.android.email"

    .line 1326
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "com.android.email"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static getHostAuthContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1367
    if-nez p0, :cond_5

    .line 1368
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 1371
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .registers 9
    .param p0, "existingFlag"    # I
    .param p1, "useSSL"    # Z
    .param p2, "useTLS"    # Z
    .param p3, "acceptAllCertificates"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 392
    move v0, p0

    .line 395
    .local v0, "flag":I
    if-ne v3, p1, :cond_f

    .line 396
    or-int/lit8 v0, v0, 0x1

    .line 401
    :cond_6
    :goto_6
    if-ne v3, p2, :cond_16

    .line 402
    or-int/lit8 v0, v0, 0x2

    .line 407
    :cond_a
    :goto_a
    if-ne v3, p3, :cond_1e

    .line 408
    or-int/lit8 v0, v0, 0x8

    .line 412
    :cond_e
    :goto_e
    return v0

    .line 397
    :cond_f
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_6

    .line 398
    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 403
    :cond_16
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_a

    .line 404
    xor-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 409
    :cond_1e
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_e

    .line 410
    xor-int/lit8 v0, v0, 0x8

    goto :goto_e
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1338
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <<<<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    return-object v0
.end method

.method static getPackageNameForUid(I)Ljava/lang/String;
    .registers 4
    .param p0, "uid"    # I

    .prologue
    .line 233
    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_21

    .line 234
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 237
    :goto_20
    return-object v0

    :cond_21
    const-string v0, "com.android.email"

    goto :goto_20
.end method

.method static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .registers 14
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "userID"    # I

    .prologue
    const/4 v4, 0x0

    .line 1404
    new-instance v6, Landroid/os/ConditionVariable;

    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    .line 1405
    .local v6, "condition":Landroid/os/ConditionVariable;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 1408
    .local v8, "ret":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v1, v8, v6}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 1433
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1434
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

    invoke-static {p0, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "account_id"

    invoke-virtual {v7, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1436
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p3, v7, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1439
    const-wide/16 v4, 0x2710

    invoke-virtual {v6, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1440
    const-string v0, "SettingsUtils"

    const-string v2, "password obtained"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :goto_4c
    invoke-virtual {p3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1446
    return-object v8

    .line 1442
    :cond_50
    const-string v0, "SettingsUtils"

    const-string/jumbo v2, "timeout while obtaining password"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method private static getPoliciesContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1375
    if-gtz p0, :cond_c

    .line 1376
    const-string v0, "SettingsUtils"

    const-string v1, "getPoliciesContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 1380
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_b
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;

    .prologue
    .line 1498
    const/4 v2, 0x0

    .line 1500
    .local v2, "password":Ljava/lang/String;
    :try_start_1
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1501
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    .line 1506
    :goto_10
    return-object v2

    .line 1502
    :catch_11
    move-exception v1

    .line 1503
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SettingsUtils"

    const-string v4, "getSecurityPassword() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .registers 8
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "mEmailBodyTruncationSize"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x2

    const/4 v3, 0x5

    .line 1517
    if-eqz p0, :cond_31

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 1519
    if-gt p1, v0, :cond_12

    .line 1549
    :cond_11
    :goto_11
    return v0

    .line 1521
    :cond_12
    if-gt p1, v3, :cond_16

    move v0, v1

    .line 1522
    goto :goto_11

    .line 1523
    :cond_16
    const/16 v0, 0xa

    if-gt p1, v0, :cond_1c

    move v0, v2

    .line 1524
    goto :goto_11

    .line 1525
    :cond_1c
    const/16 v0, 0x14

    if-gt p1, v0, :cond_22

    move v0, v3

    .line 1526
    goto :goto_11

    .line 1527
    :cond_22
    const/16 v0, 0x32

    if-gt p1, v0, :cond_28

    .line 1528
    const/4 v0, 0x6

    goto :goto_11

    .line 1529
    :cond_28
    const/16 v0, 0x64

    if-gt p1, v0, :cond_2e

    move v0, v4

    .line 1530
    goto :goto_11

    .line 1532
    :cond_2e
    const/16 v0, 0x8

    goto :goto_11

    .line 1534
    :cond_31
    if-gt p1, v2, :cond_35

    .line 1535
    const/4 v0, 0x0

    goto :goto_11

    .line 1536
    :cond_35
    if-gt p1, v3, :cond_39

    .line 1537
    const/4 v0, 0x1

    goto :goto_11

    .line 1538
    :cond_39
    if-le p1, v4, :cond_11

    .line 1540
    const/16 v0, 0xa

    if-gt p1, v0, :cond_41

    move v0, v1

    .line 1541
    goto :goto_11

    .line 1542
    :cond_41
    const/16 v0, 0x14

    if-gt p1, v0, :cond_47

    move v0, v2

    .line 1543
    goto :goto_11

    .line 1544
    :cond_47
    const/16 v0, 0x32

    if-gt p1, v0, :cond_4d

    move v0, v3

    .line 1545
    goto :goto_11

    .line 1546
    :cond_4d
    const/16 v0, 0x64

    if-gt p1, v0, :cond_53

    .line 1547
    const/4 v0, 0x6

    goto :goto_11

    :cond_53
    move v0, v4

    .line 1549
    goto :goto_11
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .registers 8
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 1554
    if-eqz p0, :cond_26

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1556
    packed-switch p1, :pswitch_data_3c

    .line 1575
    const v0, 0x7fffffff

    .line 1598
    :goto_18
    :pswitch_18
    return v0

    .line 1563
    :pswitch_19
    const/4 v0, 0x2

    goto :goto_18

    :pswitch_1b
    move v0, v1

    .line 1565
    goto :goto_18

    :pswitch_1d
    move v0, v2

    .line 1567
    goto :goto_18

    :pswitch_1f
    move v0, v3

    .line 1569
    goto :goto_18

    :pswitch_21
    move v0, v4

    .line 1571
    goto :goto_18

    .line 1573
    :pswitch_23
    const/16 v0, 0x64

    goto :goto_18

    .line 1579
    :cond_26
    packed-switch p1, :pswitch_data_52

    .line 1598
    const v0, 0x7fffffff

    goto :goto_18

    .line 1584
    :pswitch_2d
    const/4 v0, 0x4

    goto :goto_18

    :pswitch_2f
    move v0, v1

    .line 1586
    goto :goto_18

    .line 1588
    :pswitch_31
    const/4 v0, 0x7

    goto :goto_18

    :pswitch_33
    move v0, v2

    .line 1590
    goto :goto_18

    :pswitch_35
    move v0, v3

    .line 1592
    goto :goto_18

    :pswitch_37
    move v0, v4

    .line 1594
    goto :goto_18

    .line 1596
    :pswitch_39
    const/16 v0, 0x64

    goto :goto_18

    .line 1556
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1579
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2d
        :pswitch_2f
        :pswitch_31
        :pswitch_33
        :pswitch_35
        :pswitch_37
        :pswitch_39
    .end packed-switch
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p0, :cond_4

    .line 229
    :cond_3
    :goto_3
    return-object v1

    .line 225
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 226
    :catch_10
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J
    .registers 24
    .param p0, "containerId"    # I
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "hostAuthKeyRecv"    # J
    .param p4, "hostAuthKeySend"    # J
    .param p6, "isInsertOP"    # Z
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    const-wide/16 v8, -0x1

    .line 556
    .local v8, "rowId":J
    const/4 v3, 0x0

    .line 557
    .local v3, "compatibilityUuid":Ljava/lang/String;
    if-eqz p6, :cond_1f1

    const/4 v10, 0x0

    .line 558
    .local v10, "settingsFlags":I
    :goto_6
    const/4 v6, 0x0

    .line 560
    .local v6, "ringtoneUri":Ljava/lang/String;
    if-eqz p6, :cond_1f7

    .line 562
    const-string v6, "content://settings/system/notification_sound"

    .line 563
    const/4 v10, 0x1

    .line 564
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 571
    :goto_14
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v13, v14, :cond_205

    .line 572
    or-int/lit8 v10, v10, 0x2

    .line 576
    :cond_1d
    :goto_1d
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v13, v14, :cond_20e

    .line 577
    or-int/lit8 v10, v10, 0x40

    .line 582
    :cond_26
    :goto_26
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 584
    .local v11, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v13, :cond_218

    .line 585
    const-string v13, "displayName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_3a
    const-string v13, "emailAddress"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v13, "syncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 596
    const-string/jumbo v13, "syncInterval"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v13, "peakDays"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const-string v13, "peakStartMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v13, "peakEndMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v13, "peakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 601
    const-string v13, "offPeakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string v13, "roamingSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v13, "hostAuthKeyRecv"

    move-wide/from16 v0, p2

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 605
    const-string v13, "hostAuthKeySend"

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v13, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 607
    const-string v14, "isDefault"

    if-eqz p6, :cond_221

    const/4 v13, 0x0

    :goto_d3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v13, "compatibilityUuid"

    invoke-virtual {v11, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v13, :cond_22d

    .line 610
    const-string v13, "senderName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_ee
    const-string v13, "ringtoneUri"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_102

    .line 616
    const-string v13, "protocolVersion"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_102
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v13, :cond_236

    .line 619
    const-string/jumbo v13, "signature"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v13, "isSignatureEdited"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    :goto_11c
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v13, "emailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v13, "roamingemailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 630
    .local v2, "acctUri":Landroid/net/Uri;
    if-eqz p6, :cond_24c

    .line 631
    :try_start_149
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 634
    .local v5, "newRowUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_154} :catch_245

    move-result-wide v8

    .line 637
    :try_start_155
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15a} :catch_240

    .line 638
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_15a
    const-string v13, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v13, "sevenAccountKey"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 640
    const-string/jumbo v13, "timeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v13, "sizeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string/jumbo v13, "typeMsg"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string v13, "peakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v13, "offPeakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v13, "days"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v13, "peakStartTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v13, "peakEndTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string/jumbo v13, "whileRoaming"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string v13, "attachmentEnabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountCBContentUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_1d7} :catch_277

    move-object v11, v12

    .line 660
    .end local v5    # "newRowUri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_1d8
    :try_start_1d8
    const-string v13, "SettingsUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insertAccountTableRow row Id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1f0} :catch_245

    .line 666
    :goto_1f0
    return-wide v8

    .line 557
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v6    # "ringtoneUri":Ljava/lang/String;
    .end local v10    # "settingsFlags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1f1
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    goto/16 :goto_6

    .line 567
    .restart local v6    # "ringtoneUri":Ljava/lang/String;
    .restart local v10    # "settingsFlags":I
    :cond_1f7
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 568
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 569
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_14

    .line 573
    :cond_205
    const/4 v13, 0x2

    and-int/lit8 v14, v10, 0x2

    if-ne v13, v14, :cond_1d

    .line 574
    xor-int/lit8 v10, v10, 0x2

    goto/16 :goto_1d

    .line 578
    :cond_20e
    const/16 v13, 0x40

    and-int/lit8 v14, v10, 0x40

    if-ne v13, v14, :cond_26

    .line 579
    xor-int/lit8 v10, v10, 0x40

    goto/16 :goto_26

    .line 587
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_218
    const-string v13, "displayName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 607
    :cond_221
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v13, :cond_22a

    const/4 v13, 0x1

    goto/16 :goto_d3

    :cond_22a
    const/4 v13, 0x0

    goto/16 :goto_d3

    .line 612
    :cond_22d
    const-string v13, "senderName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ee

    .line 622
    :cond_236
    const-string/jumbo v13, "signature"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 652
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    :catch_240
    move-exception v4

    .line 653
    .local v4, "e":Ljava/lang/Exception;
    :goto_241
    :try_start_241
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_241 .. :try_end_244} :catch_245

    goto :goto_1d8

    .line 661
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "newRowUri":Landroid/net/Uri;
    :catch_245
    move-exception v4

    .line 662
    .restart local v4    # "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 663
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f0

    .line 656
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_24c
    :try_start_24c
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 658
    .local v7, "rowCount":I
    if-lez v7, :cond_275

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I
    :try_end_272
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_272} :catch_245

    :goto_272
    int-to-long v8, v13

    goto/16 :goto_1d8

    :cond_275
    const/4 v13, -0x1

    goto :goto_272

    .line 652
    .end local v7    # "rowCount":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_277
    move-exception v4

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_241
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 16
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isInsertOP"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v5, -0x1

    .line 428
    .local v5, "rowId":J
    :try_start_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v7, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    if-eqz p2, :cond_1a

    .line 432
    const-string v8, "password"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1a
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 436
    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 438
    if-eqz p3, :cond_70

    .line 439
    const-string v8, "accounts"

    const-string v9, "doesn\'t exist at all"

    invoke-virtual {v0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 440
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertAccountsTableRow  isInsertOP:   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_47
    :goto_47
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertAccountsTableRow row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_9b
    .catchall {:try_start_3 .. :try_end_5f} :catchall_b5

    .line 455
    if-eqz v0, :cond_64

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 458
    :cond_64
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_6f

    .line 460
    sget v8, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_6c
    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 464
    :cond_6f
    return-wide v5

    .line 443
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_70
    :try_start_70
    invoke-static {p0, p1, p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v1

    .line 444
    .local v1, "accountsDBRowId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v1

    if-eqz v8, :cond_47

    .line 445
    const-string v8, "accounts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_93} :catch_9b
    .catchall {:try_start_70 .. :try_end_93} :catchall_b5

    move-result v4

    .line 447
    .local v4, "rowCount":I
    if-lez v4, :cond_98

    move-wide v5, v1

    :goto_97
    goto :goto_47

    :cond_98
    const-wide/16 v5, -0x1

    goto :goto_97

    .line 451
    .end local v1    # "accountsDBRowId":J
    .end local v4    # "rowCount":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_9b
    move-exception v3

    .line 452
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    .line 453
    :try_start_9e
    const-string v8, "SettingsUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_b5

    .line 455
    if-eqz v0, :cond_ac

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 458
    :cond_ac
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_6f

    .line 460
    sget v8, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    goto :goto_6c

    .line 455
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_b5
    move-exception v8

    if-eqz v0, :cond_bb

    .line 456
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 458
    :cond_bb
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_c6

    .line 460
    sget v9, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v9}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 455
    :cond_c6
    throw v8
.end method

.method private static insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J
    .registers 20
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "isHostAuthRecv"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 671
    const-wide/16 v8, -0x1

    .line 672
    .local v8, "rowId":J
    const/4 v4, 0x0

    .line 673
    .local v4, "flags":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 676
    .local v10, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_ef

    .line 677
    if-eqz p2, :cond_e9

    const/4 v11, 0x4

    :goto_d
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    .line 686
    :goto_1f
    const-string v12, "protocol"

    if-eqz p3, :cond_10b

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_27
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v12, "address"

    if-eqz p3, :cond_111

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_32
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v12, "port"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_117

    const/4 v11, 0x0

    :goto_3e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string v11, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_12b

    .line 695
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v11, :cond_125

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "login":Ljava/lang/String;
    :goto_79
    const-string v11, "login"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    if-eqz p3, :cond_8f

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_8f

    .line 702
    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_8f
    if-nez p3, :cond_a0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_a0

    .line 705
    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_a0
    if-eqz p3, :cond_b1

    .line 708
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_138

    .line 709
    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :cond_b1
    :goto_b1
    if-nez p3, :cond_c2

    .line 715
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_141

    .line 716
    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_c2
    :goto_c2
    if-eqz p2, :cond_14a

    .line 724
    :try_start_c4
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 725
    .local v6, "newRowUri":Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 733
    .end local v6    # "newRowUri":Landroid/net/Uri;
    :goto_d0
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertHostAuthTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_e8} :catch_179

    .line 739
    :goto_e8
    return-wide v8

    .line 677
    .end local v5    # "login":Ljava/lang/String;
    :cond_e9
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_d

    .line 681
    :cond_ef
    if-eqz p2, :cond_106

    const/4 v11, 0x4

    :goto_f2
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    goto/16 :goto_1f

    :cond_106
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_f2

    .line 686
    :cond_10b
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_27

    .line 688
    :cond_111
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_32

    .line 690
    :cond_117
    if-eqz p3, :cond_11f

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_3e

    :cond_11f
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_3e

    .line 695
    :cond_125
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_79

    .line 698
    :cond_12b
    if-eqz p3, :cond_133

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .restart local v5    # "login":Ljava/lang/String;
    :goto_131
    goto/16 :goto_79

    .end local v5    # "login":Ljava/lang/String;
    :cond_133
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_131

    .line 711
    .restart local v5    # "login":Ljava/lang/String;
    :cond_138
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    .line 718
    :cond_141
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 727
    :cond_14a
    if-eqz p3, :cond_171

    :try_start_14c
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 729
    .local v2, "existingHostAuthRowId":J
    :goto_150
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 731
    .local v7, "rowCount":I
    if-lez v7, :cond_176

    move-wide v8, v2

    :goto_16f
    goto/16 :goto_d0

    .line 727
    .end local v2    # "existingHostAuthRowId":J
    .end local v7    # "rowCount":I
    :cond_171
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_175} :catch_179

    goto :goto_150

    .line 731
    .restart local v2    # "existingHostAuthRowId":J
    .restart local v7    # "rowCount":I
    :cond_176
    const-wide/16 v8, -0x1

    goto :goto_16f

    .line 734
    .end local v2    # "existingHostAuthRowId":J
    .end local v7    # "rowCount":I
    :catch_179
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 736
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e8
.end method

.method private static isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 14
    .param p0, "acctUri"    # Landroid/net/Uri;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 123
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 127
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 129
    .local v6, "c":Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_50
    .catchall {:try_start_9 .. :try_end_46} :catchall_5b

    move-result v0

    if-lez v0, :cond_62

    .line 138
    if-eqz v6, :cond_4e

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    move v0, v8

    .line 141
    :goto_4f
    return v0

    .line 135
    :catch_50
    move-exception v7

    .line 136
    .local v7, "e":Ljava/lang/Exception;
    :try_start_51
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5b

    .line 138
    if-eqz v6, :cond_59

    .line 139
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_59
    move v0, v9

    .line 141
    goto :goto_4f

    .line 138
    :catchall_5b
    move-exception v0

    if-eqz v6, :cond_61

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_61
    throw v0

    :cond_62
    if-eqz v6, :cond_59

    goto :goto_56
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 10
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 372
    const/4 v3, 0x0

    .line 373
    .local v3, "isValid":Z
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 374
    if-eqz p0, :cond_34

    .line 376
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 377
    .local v6, "len":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 378
    .local v1, "firstAt":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 379
    .local v4, "lastAt":I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 380
    .local v2, "firstDot":I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_37

    move-result v5

    .line 381
    .local v5, "lastDot":I
    if-lez v1, :cond_35

    if-ne v1, v4, :cond_35

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_35

    if-gt v2, v5, :cond_35

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_35

    const/4 v3, 0x1

    .line 387
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :cond_34
    :goto_34
    return v3

    .line 381
    .restart local v1    # "firstAt":I
    .restart local v2    # "firstDot":I
    .restart local v4    # "lastAt":I
    .restart local v5    # "lastDot":I
    .restart local v6    # "len":I
    :cond_35
    const/4 v3, 0x0

    goto :goto_34

    .line 383
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :catch_37
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 15
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "id"    # J
    .param p3, "acc"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p4, "isReceive"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 1188
    const/4 v8, 0x0

    .line 1189
    .local v8, "ret":Z
    const/4 v6, 0x0

    .line 1191
    .local v6, "c":Landroid/database/Cursor;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "domain"

    aput-object v1, v2, v0

    .line 1197
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_2e
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1199
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e7

    .line 1201
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1202
    if-eqz p4, :cond_f3

    .line 1203
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 1204
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 1206
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 1207
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    .line 1208
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_ed

    const/4 v0, 0x1

    :goto_ab
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 1209
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_ef

    const/4 v0, 0x1

    :goto_b5
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 1210
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_f1

    const/4 v0, 0x1

    :goto_c0
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 1211
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1213
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1216
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e6} :catch_167
    .catchall {:try_start_2e .. :try_end_e6} :catchall_175

    .line 1235
    :goto_e6
    const/4 v8, 0x1

    .line 1240
    :cond_e7
    if-eqz v6, :cond_ec

    .line 1241
    :goto_e9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1243
    :cond_ec
    return v8

    .line 1208
    :cond_ed
    const/4 v0, 0x0

    goto :goto_ab

    .line 1209
    :cond_ef
    const/4 v0, 0x0

    goto :goto_b5

    .line 1210
    :cond_f1
    const/4 v0, 0x0

    goto :goto_c0

    .line 1219
    :cond_f3
    :try_start_f3
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 1220
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 1222
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 1223
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    .line 1224
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_16f

    const/4 v0, 0x1

    :goto_12b
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 1225
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_171

    const/4 v0, 0x1

    :goto_135
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 1226
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_173

    const/4 v0, 0x1

    :goto_140
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 1227
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1229
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1232
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_166} :catch_167
    .catchall {:try_start_f3 .. :try_end_166} :catchall_175

    goto :goto_e6

    .line 1237
    :catch_167
    move-exception v7

    .line 1238
    .local v7, "e":Ljava/lang/Exception;
    :try_start_168
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_175

    .line 1240
    if-eqz v6, :cond_ec

    goto/16 :goto_e9

    .line 1224
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_16f
    const/4 v0, 0x0

    goto :goto_12b

    .line 1225
    :cond_171
    const/4 v0, 0x0

    goto :goto_135

    .line 1226
    :cond_173
    const/4 v0, 0x0

    goto :goto_140

    .line 1240
    :catchall_175
    move-exception v0

    if-eqz v6, :cond_17b

    .line 1241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1240
    :cond_17b
    throw v0
.end method

.method private static makeDBpath()V
    .registers 3

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    .line 418
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBpath   ACCOUNTS_DB  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  user id   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .registers 13
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    .prologue
    .line 194
    const-class v6, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v6

    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_68

    move-result v4

    .line 196
    .local v4, "userID":I
    :try_start_7
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 197
    .local v2, "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    const/high16 v1, 0x10000000

    .line 198
    .local v1, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_63
    .catchall {:try_start_7 .. :try_end_1b} :catchall_68

    .line 202
    if-eqz v4, :cond_5b

    .line 203
    :try_start_1d
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 204
    const-string v5, "SettingsUtils"

    const-string v7, "sendAccountsChangedBroadcast : USER space"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_5e
    .catchall {:try_start_1d .. :try_end_34} :catchall_68

    .line 215
    :goto_34
    :try_start_34
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 216
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_52} :catch_63
    .catchall {:try_start_34 .. :try_end_52} :catchall_68

    .line 220
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :goto_52
    :try_start_52
    const-string v5, "SettingsUtils"

    const-string v7, "sendAccountsChangedBroadcast()"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_68

    .line 221
    :goto_59
    monitor-exit v6

    return-void

    .line 207
    .restart local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .restart local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :cond_5b
    :try_start_5b
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5d} :catch_5e
    .catchall {:try_start_5b .. :try_end_5d} :catchall_68

    goto :goto_34

    .line 210
    :catch_5e
    move-exception v3

    .line 211
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_68

    goto :goto_59

    .line 217
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_63
    move-exception v3

    .line 218
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_64
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_52

    .line 194
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "userID":I
    :catchall_68
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .registers 21
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-class v14, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v14

    const/4 v6, 0x0

    .line 146
    .local v6, "success":Z
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 147
    .local v10, "userID":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 148
    .local v3, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_f5

    move-result-wide v8

    .line 150
    .local v8, "token":J
    if-eqz v10, :cond_43

    .line 151
    :try_start_12
    move-object/from16 v0, p0

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    sput-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 152
    const-string v13, "SettingsUtils"

    const-string v15, "setAsDefaultAccount : USER space"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_33} :catch_46
    .catchall {:try_start_12 .. :try_end_33} :catchall_f5

    .line 161
    :goto_33
    const-wide/16 v15, 0x1

    cmp-long v13, v15, p1

    if-lez v13, :cond_4c

    .line 162
    :try_start_39
    const-string v13, "SettingsUtils"

    const-string v15, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_f5

    move v7, v6

    .line 190
    .end local v6    # "success":Z
    .local v7, "success":I
    :goto_41
    monitor-exit v14

    return v7

    .line 155
    .end local v7    # "success":I
    .restart local v6    # "success":Z
    :cond_43
    :try_start_43
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_45} :catch_46
    .catchall {:try_start_43 .. :try_end_45} :catchall_f5

    goto :goto_33

    .line 157
    :catch_46
    move-exception v5

    .line 158
    .local v5, "e":Ljava/lang/Exception;
    :try_start_47
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v6

    .line 159
    .restart local v7    # "success":I
    goto :goto_41

    .line 166
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "success":I
    :cond_4c
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, "acctUri":Landroid/net/Uri;
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_63

    .line 168
    const-string v13, "SettingsUtils"

    const-string v15, "setAsDefaultAccount : No Such Account"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 169
    .restart local v7    # "success":I
    goto :goto_41

    .line 172
    .end local v7    # "success":I
    :cond_63
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v11, "values":Landroid/content/ContentValues;
    const-string v13, "isDefault"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_72
    .catchall {:try_start_47 .. :try_end_72} :catchall_f5

    .line 176
    :try_start_72
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v11, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, "count":I
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9e} :catch_ef
    .catchall {:try_start_72 .. :try_end_9e} :catchall_f5

    .line 180
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_9e
    const-string v13, "isDefault"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 183
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_e3} :catch_f8
    .catchall {:try_start_9e .. :try_end_e3} :catchall_f5

    .line 184
    if-lez v4, :cond_ed

    const/4 v6, 0x1

    :goto_e6
    move-object v11, v12

    .line 189
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_e7
    :try_start_e7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 190
    .restart local v7    # "success":I
    goto/16 :goto_41

    .line 184
    .end local v7    # "success":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v4    # "count":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_ed
    const/4 v6, 0x0

    goto :goto_e6

    .line 185
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catch_ef
    move-exception v5

    .line 186
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_f0
    const/4 v6, 0x0

    .line 187
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f4
    .catchall {:try_start_e7 .. :try_end_f4} :catchall_f5

    goto :goto_e7

    .line 145
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "containerId":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "token":J
    .end local v10    # "userID":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catchall_f5
    move-exception v13

    monitor-exit v14

    throw v13

    .line 185
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v3    # "containerId":I
    .restart local v4    # "count":I
    .restart local v8    # "token":J
    .restart local v10    # "userID":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_f8
    move-exception v5

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_f0
.end method

.method static setPackageNameForUid(ILjava/lang/String;)V
    .registers 5
    .param p0, "uid"    # I
    .param p1, "adminPkgName"    # Ljava/lang/String;

    .prologue
    .line 242
    sput p0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 243
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 244
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method static setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    .registers 14
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "isIncomingPassword"    # Z
    .param p6, "isEasAccount"    # Z
    .param p7, "userID"    # I

    .prologue
    .line 1450
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

    invoke-static {p0, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1458
    const-string v2, ""

    .line 1459
    .local v2, "caller":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1460
    .local v0, "accID":J
    if-eqz p6, :cond_57

    .line 1462
    if-eqz p5, :cond_43

    .line 1463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    :goto_2d
    if-eqz p5, :cond_81

    .line 1474
    const-string/jumbo v4, "user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1477
    :goto_35
    invoke-static {v2, p3}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1478
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p4, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1479
    return-void

    .line 1465
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 1468
    :cond_57
    if-eqz p5, :cond_6d

    .line 1469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 1471
    :cond_6d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 1476
    :cond_81
    const-string v4, "outgoing_user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_35
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1483
    if-eqz p0, :cond_5

    if-nez p1, :cond_d

    .line 1484
    :cond_5
    const-string v2, "SettingsUtils"

    const-string v3, "setOutGoingServerPassword() failed : invalid parameter"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :goto_c
    return v1

    .line 1488
    :cond_d
    :try_start_d
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_1b

    .line 1493
    const-string v1, "SettingsUtils"

    const-string v2, "setSecurityPassword() success"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const/4 v1, 0x1

    goto :goto_c

    .line 1489
    :catch_1b
    move-exception v0

    .line 1490
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingsUtils"

    const-string v3, "setOutGoingServerPassword() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
