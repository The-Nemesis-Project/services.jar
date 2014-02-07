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

.field private static final ACCOUNTS_DB:Ljava/lang/String; = "/data/system/users/0/accounts.db"

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

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field private static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/users/0/"

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addorUpdateAccount(ILcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    .registers 24
    .param p0, "containerId"    # I
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const-class v19, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v19

    const-wide/16 v13, -0x1

    .line 217
    .local v13, "accountId":J
    const-wide/16 v15, -0x1

    .line 218
    .local v15, "accountsRowId":J
    const-wide/16 v6, -0x1

    .line 219
    .local v6, "inComingRowId":J
    const-wide/16 v8, -0x1

    .line 221
    .local v8, "outGoingRowId":J
    :try_start_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v0, p0

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v4, v5, v10, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v15

    .line 225
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v17

    .line 226
    .local v17, "hostUri":Landroid/net/Uri;
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v15

    if-eqz v4, :cond_67

    .line 228
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v6

    .line 230
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4f

    .line 231
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v8

    .line 234
    :cond_4f
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_67

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_67

    move/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 235
    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v13

    .line 239
    :cond_67
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v13

    if-nez v4, :cond_9e

    .line 245
    if-eqz p2, :cond_9c

    .line 246
    const-string v4, "SettingsUtils"

    const-string v5, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v15

    if-eqz v4, :cond_82

    .line 248
    move-wide v0, v15

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 251
    :cond_82
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8f

    .line 252
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v6, v7, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 255
    :cond_8f
    const-wide/16 v4, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_9c

    .line 256
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v8, v9, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_f2

    .line 281
    :cond_9c
    :goto_9c
    monitor-exit v19

    return-wide v13

    .line 260
    :cond_9e
    if-eqz p2, :cond_9c

    .line 261
    :try_start_a0
    new-instance v18, Landroid/content/Intent;

    const-string v4, "com.android.email.ENABLE_MESSAGECOMPOSE"

    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v18, "intent":Landroid/content/Intent;
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    new-instance v12, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    move/from16 v0, p0

    invoke-static {v5, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v12, "account":Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v12, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 271
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v4, :cond_9c

    .line 272
    move/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v13, v14, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(IJLandroid/content/Context;)Z
    :try_end_f1
    .catchall {:try_start_a0 .. :try_end_f1} :catchall_f2

    goto :goto_9c

    .line 212
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v17    # "hostUri":Landroid/net/Uri;
    .end local v18    # "intent":Landroid/content/Intent;
    :catchall_f2
    move-exception v4

    monitor-exit v19

    throw v4
.end method

.method static declared-synchronized deleteAccount(IJLandroid/content/Context;)Z
    .registers 18
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    const-class v13, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v13

    const/4 v12, 0x0

    .line 646
    .local v12, "rowCount":I
    const-wide/16 v3, 0x1

    cmp-long v3, v3, p1

    if-lez v3, :cond_14

    .line 647
    :try_start_a
    const-string v3, "SettingsUtils"

    const-string v4, "deleteAccount : accountId is invalid"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_7e

    .line 648
    const/4 v3, 0x0

    .line 699
    :goto_12
    monitor-exit v13

    return v3

    .line 650
    :cond_14
    const/4 v9, 0x0

    .line 651
    .local v9, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v11, 0x0

    .line 652
    .local v11, "found":Z
    :try_start_16
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 653
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_7e

    move-result-object v2

    .line 655
    .local v2, "acctUri":Landroid/net/Uri;
    const/4 v6, 0x0

    move-wide v3, p1

    move-object/from16 v5, p3

    move v7, p0

    :try_start_23
    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_79
    .catchall {:try_start_23 .. :try_end_26} :catchall_7e

    move-result-object v9

    .line 656
    if-eqz v9, :cond_70

    .line 661
    :cond_29
    :try_start_29
    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v4, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v4, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v3

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 665
    iget-wide v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    move-object/from16 v0, p3

    invoke-static {v1, v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 667
    iget-wide v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    move-object/from16 v0, p3

    invoke-static {v1, v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 670
    iget v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    int-to-long v3, v3

    move-object/from16 v0, p3

    invoke-static {p0, v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountTableRow(IJLandroid/content/Context;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_52} :catch_74
    .catchall {:try_start_29 .. :try_end_52} :catchall_7e

    move-result v11

    .line 675
    :goto_53
    add-int/lit8 v12, v12, 0x1

    .line 677
    if-eqz v11, :cond_9b

    .line 678
    :try_start_57
    iget-boolean v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_81

    .line 679
    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p1

    .line 687
    :goto_6a
    const-wide/16 v3, -0x1

    cmp-long v3, v3, p1

    if-nez v3, :cond_90

    .line 699
    :cond_70
    :goto_70
    if-lez v12, :cond_9e

    const/4 v3, 0x1

    goto :goto_12

    .line 672
    :catch_74
    move-exception v10

    .line 673
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_78} :catch_79
    .catchall {:try_start_57 .. :try_end_78} :catchall_7e

    goto :goto_53

    .line 696
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_79
    move-exception v10

    .line 697
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_7a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_70

    .line 645
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v9    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "found":Z
    :catchall_7e
    move-exception v3

    monitor-exit v13

    throw v3

    .line 683
    .restart local v1    # "hostUri":Landroid/net/Uri;
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v9    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v11    # "found":Z
    :cond_81
    const/4 v3, 0x0

    :try_start_82
    iget-object v4, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v6, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p1

    goto :goto_6a

    .line 689
    :cond_90
    const/4 v6, 0x0

    move-wide v3, p1

    move-object/from16 v5, p3

    move v7, p0

    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_98} :catch_79
    .catchall {:try_start_82 .. :try_end_98} :catchall_7e

    move-result-object v9

    .line 690
    if-eqz v9, :cond_70

    .line 694
    :cond_9b
    if-nez v11, :cond_29

    goto :goto_70

    .line 699
    :cond_9e
    const/4 v3, 0x0

    goto/16 :goto_12
.end method

.method static deleteAccountTableRow(IJLandroid/content/Context;)Z
    .registers 11
    .param p0, "containerId"    # I
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 731
    const/4 v1, -0x1

    .line 732
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_10

    .line 733
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_f
    :goto_f
    return v3

    .line 737
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 738
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 739
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

    .line 743
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_3a
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 740
    :catch_3e
    move-exception v0

    .line 741
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

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p0

    if-lez v6, :cond_12

    .line 373
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_11
    :goto_11
    return v3

    .line 377
    :cond_12
    :try_start_12
    const-string v6, "/data/system/users/0/accounts.db"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 380
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

    .line 381
    .local v2, "rowCount":I
    if-lez v2, :cond_60

    .line 382
    :goto_36
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
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4e} :catch_62
    .catchall {:try_start_12 .. :try_end_4e} :catchall_78

    .line 388
    if-eqz v0, :cond_53

    .line 389
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 391
    :cond_53
    cmp-long v6, p0, v4

    if-eqz v6, :cond_5a

    .line 393
    .end local v2    # "rowCount":I
    :goto_57
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    .line 396
    :cond_5a
    cmp-long v4, v4, p0

    if-eqz v4, :cond_11

    const/4 v3, 0x1

    goto :goto_11

    .restart local v2    # "rowCount":I
    :cond_60
    move-wide p0, v4

    .line 381
    goto :goto_36

    .line 384
    .end local v2    # "rowCount":I
    :catch_62
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 386
    :try_start_65
    const-string v6, "SettingsUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_78

    .line 388
    if-eqz v0, :cond_73

    .line 389
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 391
    :cond_73
    cmp-long v6, p0, v4

    if-eqz v6, :cond_5a

    goto :goto_57

    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v3

    if-eqz v0, :cond_7e

    .line 389
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 391
    :cond_7e
    cmp-long v4, p0, v4

    if-eqz v4, :cond_85

    .line 393
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    .line 388
    :cond_85
    throw v3
.end method

.method private static deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    .registers 11
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 709
    const/4 v1, -0x1

    .line 710
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_10

    .line 711
    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_f
    :goto_f
    return v3

    .line 715
    :cond_10
    :try_start_10
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 716
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 717
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

    .line 721
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_36
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 718
    :catch_3a
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 27
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "accountId"    # J
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "passwordRequired"    # Z
    .param p6, "containerId"    # I

    .prologue
    .line 854
    const/4 v13, 0x0

    .line 855
    .local v13, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/4 v14, 0x0

    .line 857
    .local v14, "c":Landroid/database/Cursor;
    const/16 v4, 0x14

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "emailAddress"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "syncLookback"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "syncInterval"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "peakDays"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "peakStartMinute"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string v5, "peakEndMinute"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string v5, "peakSchedule"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string v5, "offPeakSchedule"

    aput-object v5, v6, v4

    const/16 v4, 0xa

    const-string v5, "roamingSchedule"

    aput-object v5, v6, v4

    const/16 v4, 0xb

    const-string v5, "hostAuthKeyRecv"

    aput-object v5, v6, v4

    const/16 v4, 0xc

    const-string v5, "hostAuthKeySend"

    aput-object v5, v6, v4

    const/16 v4, 0xd

    const-string v5, "flags"

    aput-object v5, v6, v4

    const/16 v4, 0xe

    const-string v5, "isDefault"

    aput-object v5, v6, v4

    const/16 v4, 0xf

    const-string v5, "compatibilityUuid"

    aput-object v5, v6, v4

    const/16 v4, 0x10

    const-string v5, "senderName"

    aput-object v5, v6, v4

    const/16 v4, 0x11

    const-string v5, "ringtoneUri"

    aput-object v5, v6, v4

    const/16 v4, 0x12

    const-string v5, "protocolVersion"

    aput-object v5, v6, v4

    const/16 v4, 0x13

    const-string v5, "signature"

    aput-object v5, v6, v4

    .line 870
    .local v6, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_76
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 872
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAccount row count : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_24c

    .line 874
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 875
    new-instance v10, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v10}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c1} :catch_238
    .catchall {:try_start_76 .. :try_end_c1} :catchall_240

    .line 876
    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v10, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_c1
    const-string v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 877
    const-string v4, "displayName"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 878
    const-string v4, "emailAddress"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 879
    const-string v4, "syncLookback"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 880
    const-string v4, "syncInterval"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 881
    const-string v4, "peakDays"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 882
    const-string v4, "peakStartMinute"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 883
    const-string v4, "peakEndMinute"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 884
    const-string v4, "peakSchedule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 885
    const-string v4, "offPeakSchedule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 887
    const-string v4, "roamingSchedule"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 889
    const-string v4, "hostAuthKeyRecv"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 891
    const-string v4, "hostAuthKeySend"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 893
    const-string v4, "flags"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 894
    const/4 v4, 0x2

    iget v5, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_1ec

    const/4 v4, 0x1

    :goto_171
    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 895
    const/16 v4, 0x40

    iget v5, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-ne v4, v5, :cond_1ee

    const/4 v4, 0x1

    :goto_17c
    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 896
    const-string v4, "isDefault"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f0

    const/4 v4, 0x1

    :goto_18c
    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 897
    const-string v4, "compatibilityUuid"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 899
    const-string v4, "senderName"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 900
    const-string v4, "ringtoneUri"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 901
    const-string v4, "protocolVersion"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 903
    const-string v4, "signature"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 906
    iget-wide v8, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v18

    .line 907
    .local v18, "ret1":Z
    iget-wide v8, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_1df} :catch_24a
    .catchall {:try_start_c1 .. :try_end_1df} :catchall_248

    move-result v19

    .line 909
    .local v19, "ret2":Z
    if-eqz v18, :cond_1e4

    if-nez v19, :cond_1f2

    .line 910
    :cond_1e4
    const/4 v10, 0x0

    .line 935
    if-eqz v14, :cond_1ea

    .line 936
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1ea
    move-object v13, v10

    .line 938
    .end local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v18    # "ret1":Z
    .end local v19    # "ret2":Z
    .restart local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_1eb
    return-object v13

    .line 894
    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_1ec
    const/4 v4, 0x0

    goto :goto_171

    .line 895
    :cond_1ee
    const/4 v4, 0x0

    goto :goto_17c

    .line 896
    :cond_1f0
    const/4 v4, 0x0

    goto :goto_18c

    .line 914
    .restart local v18    # "ret1":Z
    .restart local v19    # "ret2":Z
    :cond_1f2
    if-eqz p5, :cond_208

    .line 915
    :try_start_1f4
    move/from16 v0, p6

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;)[Ljava/lang/String;

    move-result-object v16

    .line 916
    .local v16, "pwds":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v16, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 917
    const/4 v4, 0x1

    aget-object v4, v16, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 920
    .end local v16    # "pwds":[Ljava/lang/String;
    :cond_208
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 921
    iget-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_231

    .line 922
    iget-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 923
    .local v17, "ret":[Ljava/lang/String;
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 924
    const/4 v4, 0x0

    aget-object v4, v17, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 925
    const/4 v4, 0x1

    aget-object v4, v17, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 926
    const/4 v4, 0x1

    aget-object v4, v17, v4

    iput-object v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 927
    iget v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v4, v10, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_231} :catch_24a
    .catchall {:try_start_1f4 .. :try_end_231} :catchall_248

    .line 935
    .end local v17    # "ret":[Ljava/lang/String;
    .end local v18    # "ret1":Z
    .end local v19    # "ret2":Z
    :cond_231
    :goto_231
    if-eqz v14, :cond_236

    .line 936
    :goto_233
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_236
    move-object v13, v10

    .line 938
    .end local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto :goto_1eb

    .line 932
    :catch_238
    move-exception v15

    move-object v10, v13

    .line 933
    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v15, "e":Ljava/lang/Exception;
    :goto_23a
    :try_start_23a
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23d
    .catchall {:try_start_23a .. :try_end_23d} :catchall_248

    .line 935
    if-eqz v14, :cond_236

    goto :goto_233

    .end local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catchall_240
    move-exception v4

    move-object v10, v13

    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_242
    if-eqz v14, :cond_247

    .line 936
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_247
    throw v4

    :catchall_248
    move-exception v4

    goto :goto_242

    .line 932
    :catch_24a
    move-exception v15

    goto :goto_23a

    .end local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_24c
    move-object v10, v13

    .end local v13    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v10    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto :goto_231
.end method

.method private static getAccountCBContentUri(I)Landroid/net/Uri;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1142
    if-nez p0, :cond_5

    .line 1143
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 1146
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
    .line 1126
    if-gtz p0, :cond_5

    .line 1127
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 1130
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

    const-string v1, ".provider/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method static declared-synchronized getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 12
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 840
    const-class v7, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v7

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 841
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 842
    .local v1, "acctUri":Landroid/net/Uri;
    const/4 v5, 0x0

    move-wide v2, p1

    move-object v4, p3

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 840
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    :catchall_15
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method static declared-synchronized getAccountDetails(IJLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .registers 13
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "passwordRequired"    # Z

    .prologue
    .line 847
    const-class v7, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v7

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 848
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "acctUri":Landroid/net/Uri;
    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p0

    .line 849
    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZI)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 847
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    :catchall_15
    move-exception v2

    monitor-exit v7

    throw v2
.end method

.method static declared-synchronized getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 16
    .param p0, "containerId"    # I
    .param p1, "easDomain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "isEas"    # Z
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 756
    const-class v8, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v8

    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 757
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "acctUri":Landroid/net/Uri;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 758
    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_17

    move-result-wide v2

    monitor-exit v8

    return-wide v2

    .line 756
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    :catchall_17
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 23
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "isEas"    # Z
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 764
    const-wide/16 v7, -0x1

    .line 765
    .local v7, "accountId":J
    const/4 v11, 0x0

    .line 767
    .local v11, "c":Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 768
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 769
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 770
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 772
    if-eqz p3, :cond_19

    if-eqz p4, :cond_19

    if-nez p5, :cond_22

    .line 773
    :cond_19
    const-string v1, "SettingsUtils"

    const-string v2, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v9, v7

    .line 829
    .end local v7    # "accountId":J
    .local v9, "accountId":J
    :goto_21
    return-wide v9

    .line 776
    .end local v9    # "accountId":J
    .restart local v7    # "accountId":J
    :cond_22
    if-eqz p6, :cond_41

    if-eqz p2, :cond_41

    .line 777
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

    .line 779
    :cond_41
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 783
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v5, v1

    const/4 v1, 0x1

    aput-object p4, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    .line 786
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 788
    .local v13, "hostAuthId":J
    :try_start_57
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "protocol=? AND address=? AND login=? "

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 793
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

    .line 794
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 795
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8e} :catch_f7
    .catchall {:try_start_57 .. :try_end_8e} :catchall_fe

    move-result v1

    int-to-long v13, v1

    .line 800
    :cond_90
    if-eqz v11, :cond_95

    .line 801
    :goto_92
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 803
    :cond_95
    const/4 v11, 0x0

    .line 805
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v13

    if-eqz v1, :cond_f4

    .line 806
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    .end local v3    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 809
    .restart local v3    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 813
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    :try_start_b5
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 818
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

    .line 819
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 820
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ed} :catch_105
    .catchall {:try_start_b5 .. :try_end_ed} :catchall_10c

    move-result v1

    int-to-long v7, v1

    .line 825
    :cond_ef
    if-eqz v11, :cond_f4

    .line 826
    :goto_f1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f4
    move-wide v9, v7

    .line 829
    .end local v7    # "accountId":J
    .restart local v9    # "accountId":J
    goto/16 :goto_21

    .line 797
    .end local v9    # "accountId":J
    .restart local v7    # "accountId":J
    :catch_f7
    move-exception v12

    .line 798
    .local v12, "e":Ljava/lang/Exception;
    :try_start_f8
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fe

    .line 800
    if-eqz v11, :cond_95

    goto :goto_92

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_fe
    move-exception v1

    if-eqz v11, :cond_104

    .line 801
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_104
    throw v1

    .line 822
    :catch_105
    move-exception v12

    .line 823
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_106
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_10c

    .line 825
    if-eqz v11, :cond_f4

    goto :goto_f1

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_10c
    move-exception v1

    if-eqz v11, :cond_112

    .line 826
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 825
    :cond_112
    throw v1
.end method

.method static declared-synchronized getAccountIds(ILandroid/content/Context;)[J
    .registers 15
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 942
    const-class v12, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v12

    const/4 v11, 0x0

    .line 943
    .local v11, "ret":[J
    const/4 v6, 0x0

    .line 944
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_67

    .line 949
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 951
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 952
    .local v7, "count":I
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    if-lez v7, :cond_6a

    .line 954
    const/4 v9, 0x0

    .line 955
    .local v9, "i":I
    new-array v11, v7, [J

    move v10, v9

    .line 956
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 957
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v11, v10
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_53} :catch_55
    .catchall {:try_start_d .. :try_end_53} :catchall_60

    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_3e

    .line 960
    .end local v7    # "count":I
    .end local v10    # "i":I
    :catch_55
    move-exception v8

    .line 961
    .local v8, "e":Ljava/lang/Exception;
    :try_start_56
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_60

    .line 963
    if-eqz v6, :cond_5e

    .line 964
    :try_start_5b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_67

    .line 967
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    monitor-exit v12

    return-object v11

    .line 963
    :catchall_60
    move-exception v0

    if-eqz v6, :cond_66

    .line 964
    :try_start_63
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 963
    :cond_66
    throw v0
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 942
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :catchall_67
    move-exception v0

    monitor-exit v12

    throw v0

    .line 963
    .restart local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v7    # "count":I
    :cond_6a
    if-eqz v6, :cond_5e

    .line 964
    :try_start_6c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_67

    goto :goto_5e
.end method

.method private static getAccountType(ZI)Ljava/lang/String;
    .registers 3
    .param p0, "isEAS"    # Z
    .param p1, "containerId"    # I

    .prologue
    .line 1122
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
    .registers 13
    .param p0, "emailId"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 402
    .local v3, "cr":Landroid/database/Cursor;
    const-wide/16 v5, -0x1

    .line 403
    .local v5, "rowId":J
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 404
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    if-eqz p0, :cond_aa

    .line 408
    :try_start_e
    const-string v7, "/data/system/users/0/accounts.db"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 410
    const-wide/16 v1, -0x1

    .line 412
    .local v1, "accountsDBRowId":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_8d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\' AND type = \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3c
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

    .line 419
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_63

    .line 420
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 421
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 422
    if-eqz v3, :cond_62

    .line 423
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 424
    :cond_62
    const/4 v3, 0x0

    .line 426
    :cond_63
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-eqz v7, :cond_82

    .line 427
    move-wide v5, v1

    .line 428
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
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_90
    .catchall {:try_start_e .. :try_end_82} :catchall_9e

    .line 439
    :cond_82
    if-eqz v3, :cond_87

    .line 440
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_87
    if-eqz v0, :cond_8c

    .line 442
    .end local v1    # "accountsDBRowId":J
    :goto_89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 448
    :cond_8c
    :goto_8c
    return-wide v5

    .line 412
    .restart local v1    # "accountsDBRowId":J
    :cond_8d
    :try_start_8d
    const-string v7, ""
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8f} :catch_90
    .catchall {:try_start_8d .. :try_end_8f} :catchall_9e

    goto :goto_3c

    .line 435
    .end local v1    # "accountsDBRowId":J
    :catch_90
    move-exception v4

    .line 436
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    .line 437
    :try_start_93
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_9e

    .line 439
    if-eqz v3, :cond_9b

    .line 440
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_9b
    if-eqz v0, :cond_8c

    goto :goto_89

    .line 439
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_9e
    move-exception v7

    if-eqz v3, :cond_a4

    .line 440
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_a4
    if-eqz v0, :cond_a9

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 439
    :cond_a9
    throw v7

    .line 446
    :cond_aa
    const-string v7, "SettingsUtils"

    const-string v8, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c
.end method

.method static declared-synchronized getCBAAlias(IJLandroid/content/Context;)Ljava/lang/String;
    .registers 14
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1055
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    const/4 v6, 0x0

    .line 1056
    .local v6, "alias":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1058
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "cbaCertificateAlias"

    aput-object v1, v2, v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_73

    .line 1062
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_12
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1064
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_62

    .line 1066
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1067
    const-string v0, "cbaCertificateAlias"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_61} :catch_69
    .catchall {:try_start_12 .. :try_end_61} :catchall_76

    move-result-object v6

    .line 1072
    :cond_62
    if-eqz v7, :cond_67

    .line 1073
    :try_start_64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_73

    .line 1075
    :cond_67
    :goto_67
    monitor-exit v9

    return-object v6

    .line 1069
    :catch_69
    move-exception v8

    .line 1070
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_76

    .line 1072
    if-eqz v7, :cond_67

    .line 1073
    :try_start_6f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_67

    .line 1055
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1072
    .restart local v2    # "ID_PROJECTION":[Ljava/lang/String;
    :catchall_76
    move-exception v0

    if-eqz v7, :cond_7c

    .line 1073
    :try_start_79
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1072
    :cond_7c
    throw v0
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_73
.end method

.method public static getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "containerId"    # I
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1079
    if-gtz p0, :cond_3

    .line 1086
    .end local p1    # "action":Ljava/lang/String;
    :goto_2
    return-object p1

    .line 1083
    .restart local p1    # "action":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
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

    .line 1086
    goto :goto_2
.end method

.method public static getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1113
    if-gez p0, :cond_3

    .line 1117
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

    .line 1031
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 1034
    .local v0, "easDomainAndUser":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1035
    if-eqz p0, :cond_3a

    .line 1036
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1037
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, "sp":[Ljava/lang/String;
    if-eqz v1, :cond_3a

    array-length v2, v1

    if-lez v2, :cond_3a

    .line 1039
    array-length v2, v1

    if-ne v5, v2, :cond_3b

    .line 1040
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1041
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1050
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .line 1042
    .restart local v1    # "sp":[Ljava/lang/String;
    :cond_3b
    array-length v2, v1

    if-ne v3, v2, :cond_3a

    .line 1043
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_3a

    .line 1047
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_47
    aput-object p0, v0, v3

    goto :goto_3a
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .registers 2
    .param p0, "containerId"    # I

    .prologue
    .line 1098
    if-gtz p0, :cond_5

    .line 1099
    const-string v0, "com.android.exchange"

    .line 1102
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
    .line 1090
    if-gtz p0, :cond_5

    .line 1091
    const-string v0, "com.android.email"

    .line 1094
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
    .line 1134
    if-nez p0, :cond_5

    .line 1135
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 1138
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

    .line 305
    move v0, p0

    .line 308
    .local v0, "flag":I
    if-ne v3, p1, :cond_f

    .line 309
    or-int/lit8 v0, v0, 0x1

    .line 314
    :cond_6
    :goto_6
    if-ne v3, p2, :cond_16

    .line 315
    or-int/lit8 v0, v0, 0x2

    .line 320
    :cond_a
    :goto_a
    if-ne v3, p3, :cond_1e

    .line 321
    or-int/lit8 v0, v0, 0x8

    .line 325
    :cond_e
    :goto_e
    return v0

    .line 310
    :cond_f
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_6

    .line 311
    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 316
    :cond_16
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_a

    .line 317
    xor-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 322
    :cond_1e
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_e

    .line 323
    xor-int/lit8 v0, v0, 0x8

    goto :goto_e
.end method

.method public static getPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "containerId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1106
    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
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

    .line 1109
    return-object v0
.end method

.method static getPassword(IJLandroid/content/Context;)[Ljava/lang/String;
    .registers 11
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1159
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 1160
    .local v0, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.sec.MDM_ACCOUNT_PASSWORDS_RESULT"

    invoke-static {p0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    .line 1163
    .local v4, "ret":[Ljava/lang/String;
    new-instance v3, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v3, v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 1172
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p3, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1174
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.sec.GET_ACCOUNT_PASSWORDS_TO_MDM"

    invoke-static {p0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "account_id"

    invoke-virtual {v2, v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1176
    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p3, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1179
    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1180
    const-string v5, "SettingsUtils"

    const-string v6, "password obtained"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :goto_3f
    invoke-virtual {p3, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1186
    return-object v4

    .line 1182
    :cond_43
    const-string v5, "SettingsUtils"

    const-string v6, "timeout while obtaining password"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    if-nez p0, :cond_4

    .line 179
    :cond_3
    :goto_3
    return-object v1

    .line 175
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

    .line 176
    :catch_10
    move-exception v0

    .line 177
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
    .line 453
    const-wide/16 v8, -0x1

    .line 455
    .local v8, "rowId":J
    const/4 v3, 0x0

    .line 456
    .local v3, "compatibilityUuid":Ljava/lang/String;
    if-eqz p6, :cond_1c3

    const/4 v10, 0x0

    .line 457
    .local v10, "settingsFlags":I
    :goto_6
    const/4 v6, 0x0

    .line 459
    .local v6, "ringtoneUri":Ljava/lang/String;
    if-eqz p6, :cond_1c9

    .line 461
    const-string v6, "content://settings/system/notification_sound"

    .line 462
    const/4 v10, 0x1

    .line 463
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    :goto_14
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v13, v14, :cond_1d7

    .line 471
    or-int/lit8 v10, v10, 0x2

    .line 475
    :cond_1d
    :goto_1d
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v13, v14, :cond_1e0

    .line 476
    or-int/lit8 v10, v10, 0x40

    .line 481
    :cond_26
    :goto_26
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v11, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v13, :cond_1ea

    .line 484
    const-string v13, "displayName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_3a
    const-string v13, "emailAddress"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v13, "syncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v13, "syncInterval"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v13, "peakDays"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v13, "peakStartMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v13, "peakEndMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v13, "peakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    const-string v13, "offPeakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v13, "roamingSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    const-string v13, "hostAuthKeyRecv"

    move-wide/from16 v0, p2

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v13, "hostAuthKeySend"

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v13, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v14, "isDefault"

    if-eqz p6, :cond_1f3

    const/4 v13, 0x0

    :goto_d1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v13, "compatibilityUuid"

    invoke-virtual {v11, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v13, :cond_1ff

    .line 509
    const-string v13, "senderName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_ec
    const-string v13, "ringtoneUri"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_100

    .line 515
    const-string v13, "protocolVersion"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_100
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v13, :cond_208

    .line 518
    const-string v13, "signature"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v13, "isSignatureEdited"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    :goto_119
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 526
    .local v2, "acctUri":Landroid/net/Uri;
    if-eqz p6, :cond_21d

    .line 527
    :try_start_11f
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 530
    .local v5, "newRowUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12a} :catch_216

    move-result-wide v8

    .line 533
    :try_start_12b
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_130} :catch_211

    .line 534
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_130
    const-string v13, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v13, "sevenAccountKey"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v13, "timeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v13, "sizeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v13, "typeMsg"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v13, "peakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v13, "offPeakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    const-string v13, "days"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v13, "peakStartTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v13, "peakEndTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v13, "whileRoaming"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v13, "attachmentEnabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountCBContentUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_1a9} :catch_248

    move-object v11, v12

    .line 556
    .end local v5    # "newRowUri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_1aa
    :try_start_1aa
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
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c2} :catch_216

    .line 562
    :goto_1c2
    return-wide v8

    .line 456
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v6    # "ringtoneUri":Ljava/lang/String;
    .end local v10    # "settingsFlags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_1c3
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    goto/16 :goto_6

    .line 466
    .restart local v6    # "ringtoneUri":Ljava/lang/String;
    .restart local v10    # "settingsFlags":I
    :cond_1c9
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 467
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 468
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_14

    .line 472
    :cond_1d7
    const/4 v13, 0x2

    and-int/lit8 v14, v10, 0x2

    if-ne v13, v14, :cond_1d

    .line 473
    xor-int/lit8 v10, v10, 0x2

    goto/16 :goto_1d

    .line 477
    :cond_1e0
    const/16 v13, 0x40

    and-int/lit8 v14, v10, 0x40

    if-ne v13, v14, :cond_26

    .line 478
    xor-int/lit8 v10, v10, 0x40

    goto/16 :goto_26

    .line 486
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_1ea
    const-string v13, "displayName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 506
    :cond_1f3
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v13, :cond_1fc

    const/4 v13, 0x1

    goto/16 :goto_d1

    :cond_1fc
    const/4 v13, 0x0

    goto/16 :goto_d1

    .line 511
    :cond_1ff
    const-string v13, "senderName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 521
    :cond_208
    const-string v13, "signature"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_119

    .line 548
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    :catch_211
    move-exception v4

    .line 549
    .local v4, "e":Ljava/lang/Exception;
    :goto_212
    :try_start_212
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_215} :catch_216

    goto :goto_1aa

    .line 557
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "newRowUri":Landroid/net/Uri;
    :catch_216
    move-exception v4

    .line 558
    .restart local v4    # "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 559
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c2

    .line 552
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_21d
    :try_start_21d
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

    .line 554
    .local v7, "rowCount":I
    if-lez v7, :cond_246

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_243} :catch_216

    :goto_243
    int-to-long v8, v13

    goto/16 :goto_1aa

    :cond_246
    const/4 v13, -0x1

    goto :goto_243

    .line 548
    .end local v7    # "rowCount":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_248
    move-exception v4

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_212
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 16
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isInsertOP"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v5, -0x1

    .line 334
    .local v5, "rowId":J
    :try_start_3
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v7, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v8, "type"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    if-eqz p2, :cond_19

    .line 338
    const-string v8, "password"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_19
    const-string v8, "/data/system/users/0/accounts.db"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 343
    if-eqz p3, :cond_52

    .line 344
    const-string v8, "accounts"

    const-string v9, "doesn\'t exist at all"

    invoke-virtual {v0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 353
    :cond_2b
    :goto_2b
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
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_7d
    .catchall {:try_start_3 .. :try_end_43} :catchall_95

    .line 358
    if-eqz v0, :cond_48

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    :cond_48
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_51

    .line 363
    .end local v7    # "values":Landroid/content/ContentValues;
    :goto_4e
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    .line 367
    :cond_51
    return-wide v5

    .line 346
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_52
    :try_start_52
    invoke-static {p0, p1, p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v1

    .line 347
    .local v1, "accountsDBRowId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v1

    if-eqz v8, :cond_2b

    .line 348
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
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_75} :catch_7d
    .catchall {:try_start_52 .. :try_end_75} :catchall_95

    move-result v4

    .line 350
    .local v4, "rowCount":I
    if-lez v4, :cond_7a

    move-wide v5, v1

    :goto_79
    goto :goto_2b

    :cond_7a
    const-wide/16 v5, -0x1

    goto :goto_79

    .line 354
    .end local v1    # "accountsDBRowId":J
    .end local v4    # "rowCount":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_7d
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v5, -0x1

    .line 356
    :try_start_80
    const-string v8, "SettingsUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_95

    .line 358
    if-eqz v0, :cond_8e

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    :cond_8e
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_51

    goto :goto_4e

    .line 358
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_95
    move-exception v8

    if-eqz v0, :cond_9b

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 361
    :cond_9b
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_a4

    .line 363
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache()V

    .line 358
    :cond_a4
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
    .line 567
    const-wide/16 v8, -0x1

    .line 568
    .local v8, "rowId":J
    const/4 v4, 0x0

    .line 569
    .local v4, "flags":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 572
    .local v10, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_ef

    .line 573
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

    .line 582
    :goto_1f
    const-string v12, "protocol"

    if-eqz p3, :cond_10b

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_27
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v12, "address"

    if-eqz p3, :cond_111

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_32
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v12, "port"

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_117

    const/4 v11, 0x0

    :goto_3e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string v11, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_12b

    .line 591
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

    .line 596
    .local v5, "login":Ljava/lang/String;
    :goto_79
    const-string v11, "login"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-eqz p3, :cond_8f

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_8f

    .line 598
    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_8f
    if-nez p3, :cond_a0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_a0

    .line 601
    const-string v11, "password"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_a0
    if-eqz p3, :cond_b1

    .line 604
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_138

    .line 605
    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_b1
    :goto_b1
    if-nez p3, :cond_c2

    .line 611
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_141

    .line 612
    const-string v11, "domain"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_c2
    :goto_c2
    if-eqz p2, :cond_14a

    .line 620
    :try_start_c4
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 621
    .local v6, "newRowUri":Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 629
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

    .line 635
    :goto_e8
    return-wide v8

    .line 573
    .end local v5    # "login":Ljava/lang/String;
    :cond_e9
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_d

    .line 577
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

    .line 582
    :cond_10b
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_27

    .line 584
    :cond_111
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_32

    .line 586
    :cond_117
    if-eqz p3, :cond_11f

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_3e

    :cond_11f
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_3e

    .line 591
    :cond_125
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_79

    .line 594
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

    .line 607
    .restart local v5    # "login":Ljava/lang/String;
    :cond_138
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b1

    .line 614
    :cond_141
    const-string v11, "domain"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 623
    :cond_14a
    if-eqz p3, :cond_171

    :try_start_14c
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 625
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

    .line 627
    .local v7, "rowCount":I
    if-lez v7, :cond_176

    move-wide v8, v2

    :goto_16f
    goto/16 :goto_d0

    .line 623
    .end local v2    # "existingHostAuthRowId":J
    .end local v7    # "rowCount":I
    :cond_171
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_175} :catch_179

    goto :goto_150

    .line 627
    .restart local v2    # "existingHostAuthRowId":J
    .restart local v7    # "rowCount":I
    :cond_176
    const-wide/16 v8, -0x1

    goto :goto_16f

    .line 630
    .end local v2    # "existingHostAuthRowId":J
    .end local v7    # "rowCount":I
    :catch_179
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 632
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

    .line 101
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 105
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 107
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

    .line 109
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

    .line 110
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_50
    .catchall {:try_start_9 .. :try_end_46} :catchall_5b

    move-result v0

    if-lez v0, :cond_62

    .line 116
    if-eqz v6, :cond_4e

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    move v0, v8

    .line 119
    :goto_4f
    return v0

    .line 113
    :catch_50
    move-exception v7

    .line 114
    .local v7, "e":Ljava/lang/Exception;
    :try_start_51
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5b

    .line 116
    if-eqz v6, :cond_59

    .line 117
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_59
    move v0, v9

    .line 119
    goto :goto_4f

    .line 116
    :catchall_5b
    move-exception v0

    if-eqz v6, :cond_61

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 116
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
    .line 285
    const/4 v3, 0x0

    .line 286
    .local v3, "isValid":Z
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 287
    if-eqz p0, :cond_34

    .line 289
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 290
    .local v6, "len":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 291
    .local v1, "firstAt":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 292
    .local v4, "lastAt":I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 293
    .local v2, "firstDot":I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_37

    move-result v5

    .line 294
    .local v5, "lastDot":I
    if-lez v1, :cond_35

    if-ne v1, v4, :cond_35

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_35

    if-gt v2, v5, :cond_35

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_35

    const/4 v3, 0x1

    .line 300
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :cond_34
    :goto_34
    return v3

    .line 294
    .restart local v1    # "firstAt":I
    .restart local v2    # "firstDot":I
    .restart local v4    # "lastAt":I
    .restart local v5    # "lastDot":I
    .restart local v6    # "len":I
    :cond_35
    const/4 v3, 0x0

    goto :goto_34

    .line 296
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :catch_37
    move-exception v0

    .line 297
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
    .line 972
    const/4 v8, 0x0

    .line 973
    .local v8, "ret":Z
    const/4 v6, 0x0

    .line 975
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

    .line 981
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

    .line 983
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

    .line 984
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e7

    .line 985
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 986
    if-eqz p4, :cond_f3

    .line 987
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 988
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 990
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 991
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    .line 992
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_ed

    const/4 v0, 0x1

    :goto_ab
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 993
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_ef

    const/4 v0, 0x1

    :goto_b5
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 994
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_f1

    const/4 v0, 0x1

    :goto_c0
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 995
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 997
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1000
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e6} :catch_167
    .catchall {:try_start_2e .. :try_end_e6} :catchall_175

    .line 1019
    :goto_e6
    const/4 v8, 0x1

    .line 1024
    :cond_e7
    if-eqz v6, :cond_ec

    .line 1025
    :goto_e9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_ec
    return v8

    .line 992
    :cond_ed
    const/4 v0, 0x0

    goto :goto_ab

    .line 993
    :cond_ef
    const/4 v0, 0x0

    goto :goto_b5

    .line 994
    :cond_f1
    const/4 v0, 0x0

    goto :goto_c0

    .line 1003
    :cond_f3
    :try_start_f3
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 1004
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 1006
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 1007
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    .line 1008
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_16f

    const/4 v0, 0x1

    :goto_12b
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 1009
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_171

    const/4 v0, 0x1

    :goto_135
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 1010
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_173

    const/4 v0, 0x1

    :goto_140
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 1011
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1013
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1016
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

    .line 1021
    :catch_167
    move-exception v7

    .line 1022
    .local v7, "e":Ljava/lang/Exception;
    :try_start_168
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_175

    .line 1024
    if-eqz v6, :cond_ec

    goto/16 :goto_e9

    .line 1008
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_16f
    const/4 v0, 0x0

    goto :goto_12b

    .line 1009
    :cond_171
    const/4 v0, 0x0

    goto :goto_135

    .line 1010
    :cond_173
    const/4 v0, 0x0

    goto :goto_140

    .line 1024
    :catchall_175
    move-exception v0

    if-eqz v6, :cond_17b

    .line 1025
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_17b
    throw v0
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;)V
    .registers 11
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const-class v5, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v5

    :try_start_3
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 158
    .local v2, "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    const/high16 v1, 0x10000000

    .line 159
    .local v1, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_35
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3a

    .line 170
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :goto_2c
    :try_start_2c
    const-string v4, "SettingsUtils"

    const-string v6, "sendAccountsChangedBroadcast()"

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3a

    .line 171
    monitor-exit v5

    return-void

    .line 167
    :catch_35
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    :try_start_36
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_2c

    .line 157
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized setAsDefaultAccount(IJLandroid/content/Context;)Z
    .registers 15
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const-class v8, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v8

    const/4 v3, 0x0

    .line 124
    .local v3, "success":Z
    const-wide/16 v9, 0x1

    cmp-long v7, v9, p1

    if-lez v7, :cond_14

    .line 125
    :try_start_a
    const-string v7, "SettingsUtils"

    const-string v9, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_aa

    move v4, v3

    .line 152
    .end local v3    # "success":Z
    .local v4, "success":I
    :goto_12
    monitor-exit v8

    return v4

    .line 129
    .end local v4    # "success":I
    .restart local v3    # "success":Z
    :cond_14
    :try_start_14
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "acctUri":Landroid/net/Uri;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 131
    const-string v7, "SettingsUtils"

    const-string v9, "setAsDefaultAccount : No Such Account"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 132
    .restart local v4    # "success":I
    goto :goto_12

    .line 135
    .end local v4    # "success":I
    :cond_27
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "isDefault"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_aa

    .line 139
    :try_start_36
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, "count":I
    const-string v7, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5d} :catch_a4
    .catchall {:try_start_36 .. :try_end_5d} :catchall_aa

    .line 143
    .end local v5    # "values":Landroid/content/ContentValues;
    .local v6, "values":Landroid/content/ContentValues;
    :try_start_5d
    const-string v7, "isDefault"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 146
    const-string v7, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9b} :catch_ad
    .catchall {:try_start_5d .. :try_end_9b} :catchall_aa

    .line 147
    if-lez v1, :cond_a2

    const/4 v3, 0x1

    :goto_9e
    move-object v5, v6

    .end local v1    # "count":I
    .end local v6    # "values":Landroid/content/ContentValues;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :goto_9f
    move v4, v3

    .line 152
    .restart local v4    # "success":I
    goto/16 :goto_12

    .line 147
    .end local v4    # "success":I
    .end local v5    # "values":Landroid/content/ContentValues;
    .restart local v1    # "count":I
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_a2
    const/4 v3, 0x0

    goto :goto_9e

    .line 148
    .end local v1    # "count":I
    .end local v6    # "values":Landroid/content/ContentValues;
    .restart local v5    # "values":Landroid/content/ContentValues;
    :catch_a4
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    :goto_a5
    const/4 v3, 0x0

    .line 150
    :try_start_a6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_9f

    .line 123
    .end local v0    # "acctUri":Landroid/net/Uri;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "values":Landroid/content/ContentValues;
    :catchall_aa
    move-exception v7

    monitor-exit v8

    throw v7

    .line 148
    .restart local v0    # "acctUri":Landroid/net/Uri;
    .restart local v1    # "count":I
    .restart local v6    # "values":Landroid/content/ContentValues;
    :catch_ad
    move-exception v2

    move-object v5, v6

    .end local v6    # "values":Landroid/content/ContentValues;
    .restart local v5    # "values":Landroid/content/ContentValues;
    goto :goto_a5
.end method

.method static setPassword(IJLjava/lang/String;Landroid/content/Context;Z)V
    .registers 8
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "isIncomingPassword"    # Z

    .prologue
    .line 1190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.UPDATE_ACCOUNT_PASSWORDS_FROM_MDM"

    invoke-static {p0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1193
    if-eqz p5, :cond_1d

    .line 1194
    const-string v1, "user_passwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    :goto_17
    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1199
    return-void

    .line 1196
    :cond_1d
    const-string v1, "outgoing_user_passwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17
.end method
