.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final PERMISSION_SMIME_CERTIFICATE:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z

.field private preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    .line 126
    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 127
    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 130
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 193
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1323
    new-instance v4, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 173
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 174
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "containerId":I
    :try_start_21
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 179
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v3, "syncMgrCn":Landroid/content/ComponentName;
    if-eqz v2, :cond_49

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 183
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "Enabling EAS ExchangeService"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_49} :catch_4a

    .line 191
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_49
    :goto_49
    return-void

    .line 188
    :catch_4a
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructor EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method private enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const-string v3, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v2, p1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 206
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 207
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 208
    .local v0, "callingUid":I
    iget v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    if-eq v2, v0, :cond_42

    .line 209
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->setPackageNameForUid(ILjava/lang/String;)V

    .line 211
    iput v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->preCallingUid:I

    .line 212
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID changed :    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  callingUid   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_42
    return-object p1
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "info"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "userID"    # I

    .prologue
    .line 1082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1083
    .local v3, "token":J
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1085
    .local v0, "acc":Landroid/app/enterprise/Account;
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v5, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1086
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v5, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1087
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v5, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1088
    const-string v5, "0"

    iput-object v5, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1089
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v5, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1090
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v5, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1091
    const-wide/16 v5, -0x1

    iput-wide v5, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1092
    const-wide/16 v5, -0x1

    iput-wide v5, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1093
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v5, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1094
    iget-boolean v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v5, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1095
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1096
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1097
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1098
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v5, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1099
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1100
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1101
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v5, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    .line 1102
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v5, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    .line 1103
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v5, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    .line 1104
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v5, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    .line 1105
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v5, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    .line 1106
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v5, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    .line 1107
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    iput v5, v0, Landroid/app/enterprise/Account;->mSyncCalendarAge:I

    .line 1108
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    iput v5, v0, Landroid/app/enterprise/Account;->mEmailBodyTruncationSize:I

    .line 1109
    iget v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    iput v5, v0, Landroid/app/enterprise/Account;->mEmailRoamingBodyTruncationSize:I

    .line 1113
    :try_start_6a
    new-instance v1, Landroid/accounts/Account;

    iget-object v5, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    .local v1, "acct":Landroid/accounts/Account;
    const-string v5, "com.android.contacts"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    iput-boolean v5, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    .line 1117
    const-string v5, "com.android.calendar"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    iput-boolean v5, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    .line 1119
    const-string/jumbo v5, "tasks"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    iput-boolean v5, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_9a} :catch_173

    .line 1126
    .end local v1    # "acct":Landroid/accounts/Account;
    :goto_9a
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    .line 1128
    new-instance v5, Landroid/app/enterprise/HostAuth;

    invoke-direct {v5}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1129
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v5, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1130
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string v6, "eas"

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1131
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1132
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v5, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1133
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v5, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1134
    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v5, :cond_192

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_e1
    iput-object v5, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1136
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1137
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1138
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1140
    new-instance v5, Landroid/app/enterprise/HostAuth;

    invoke-direct {v5}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1141
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, -0x1

    iput v6, v5, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1142
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string v6, "eas"

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1143
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1144
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput v6, v5, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1145
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v6, v5, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1146
    iget-object v6, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v5, :cond_196

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_138
    iput-object v5, v6, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1148
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v6, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1149
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1150
    iget-object v5, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1152
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillInExchangeAccountData() EX : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/enterprise/Account;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " user :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-object v0

    .line 1122
    :catch_173
    move-exception v2

    .line 1123
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillInExchangeAccountData() EX : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    .line 1134
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_192
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_e1

    .line 1146
    :cond_196
    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_138
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 1686
    const/4 v0, 0x0

    .line 1687
    .local v0, "ret":Z
    const-string v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1688
    const/4 v0, 0x0

    .line 1705
    :cond_a
    :goto_a
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPolicyState: policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    return v0

    .line 1689
    :cond_2d
    const-string v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1690
    const/4 v0, 0x0

    goto :goto_a

    .line 1691
    :cond_37
    const-string v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1692
    const/4 v0, 0x0

    goto :goto_a

    .line 1693
    :cond_41
    const-string v1, "AllowSettingChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1694
    const/4 v0, 0x1

    goto :goto_a

    .line 1695
    :cond_4b
    const-string v1, "AllowNotificationChange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1696
    const/4 v0, 0x1

    goto :goto_a

    .line 1697
    :cond_55
    const-string v1, "ForceSmimeCertForEncryption"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1698
    const/4 v0, 0x0

    goto :goto_a

    .line 1699
    :cond_5f
    const-string v1, "ForceSmimeCertForSigning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1700
    const/4 v0, 0x0

    goto :goto_a

    .line 1701
    :cond_69
    const-string v1, "AttachmentEnable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1702
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private getDefaultValueStateInteger(Ljava/lang/String;)I
    .registers 6
    .param p1, "policy"    # Ljava/lang/String;

    .prologue
    .line 1709
    const/4 v0, 0x0

    .line 1710
    .local v0, "ret":I
    const-string v1, "IncomingAttachmentSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1711
    const/4 v0, 0x0

    .line 1722
    :cond_a
    :goto_a
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValueStateInteger: policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    return v0

    .line 1712
    :cond_2d
    const-string v1, "MaxCalendarAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1713
    const/4 v0, 0x0

    goto :goto_a

    .line 1714
    :cond_37
    const-string v1, "MaxEmailAgeFilter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1715
    const/4 v0, 0x0

    goto :goto_a

    .line 1716
    :cond_41
    const-string v1, "MaxEmailBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1717
    const/4 v0, 0x0

    goto :goto_a

    .line 1718
    :cond_4b
    const-string v1, "MaxEmailHTMLBodyTruncationSize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1719
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 197
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 200
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .registers 3
    .param p0, "containerId"    # I

    .prologue
    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicyState(IJLjava/lang/String;I)Z
    .registers 18
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 1595
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    .line 1596
    .local v8, "ret":Z
    const/4 v9, 0x1

    new-array v1, v9, [Ljava/lang/String;

    .line 1597
    .local v1, "columns":[Ljava/lang/String;
    const/4 v9, 0x0

    aput-object p4, v1, v9

    .line 1599
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1600
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    const-string/jumbo v9, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    const-string v9, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1603
    const/4 v7, 0x0

    .line 1606
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_2e
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ExchangeAccountTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_3f

    move-result-object v7

    .line 1615
    if-eqz v7, :cond_3e

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 1633
    .end local v8    # "ret":Z
    :cond_3e
    :goto_3e
    return v8

    .line 1609
    .restart local v8    # "ret":Z
    :catch_3f
    move-exception v4

    .line 1611
    .local v4, "ex":Ljava/lang/Exception;
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "Exception while getValuesList from EDMStorageProvider"

    invoke-static {v9, v10, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 1618
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_48
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState: results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", accId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", container id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_ab

    const/4 v6, 0x1

    .line 1624
    .local v6, "restricterState":Z
    :goto_89
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1625
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_8d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 1626
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1627
    .local v2, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_ad

    const-string v9, "1"

    :goto_a3
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8d

    move v8, v6

    .line 1628
    goto :goto_3e

    .line 1622
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v6    # "restricterState":Z
    :cond_ab
    const/4 v6, 0x0

    goto :goto_89

    .line 1627
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v6    # "restricterState":Z
    :cond_ad
    const-string v9, "0"

    goto :goto_a3

    .line 1632
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_b0
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState: restricterState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    if-nez v6, :cond_ce

    const/4 v9, 0x1

    :goto_cb
    move v8, v9

    goto/16 :goto_3e

    :cond_ce
    const/4 v9, 0x0

    goto :goto_cb
.end method

.method private getPolicyStateasInteger(IJLjava/lang/String;IZ)I
    .registers 21
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "isMinimum"    # Z

    .prologue
    .line 1637
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueStateInteger(Ljava/lang/String;)I

    move-result v9

    .line 1638
    .local v9, "ret":I
    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    .line 1639
    .local v2, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object p4, v2, v11

    .line 1641
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1642
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v11, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1643
    const-string/jumbo v11, "userID"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1644
    const-string v11, "AccountId"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1645
    const/4 v8, 0x0

    .line 1647
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_2e
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ExchangeAccountTable"

    invoke-virtual {v11, v12, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 1650
    if-eqz v8, :cond_3e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 1682
    .end local v9    # "ret":I
    :cond_3e
    :goto_3e
    return v9

    .line 1653
    .restart local v9    # "ret":I
    :cond_3f
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPolicyStateasInteger: results = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", accId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", user id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", container id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_79} :catch_a9

    .line 1663
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1664
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    if-eqz p6, :cond_b2

    const v7, 0x7fffffff

    .line 1665
    .local v7, "result":I
    :cond_82
    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 1666
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1667
    .local v3, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1668
    .local v10, "value":Ljava/lang/Integer;
    if-eqz v10, :cond_82

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lez v11, :cond_82

    .line 1670
    if-eqz p6, :cond_b5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v7, :cond_b5

    .line 1671
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_82

    .line 1657
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v7    # "result":I
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_a9
    move-exception v5

    .line 1659
    .local v5, "ex":Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "Exception while getValuesListasInteger from EDMStorageProvider"

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 1664
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_b2
    const/high16 v7, -0x80000000

    goto :goto_82

    .line 1672
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v7    # "result":I
    .restart local v10    # "value":Ljava/lang/Integer;
    :cond_b5
    if-nez p6, :cond_82

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v7, :cond_82

    .line 1673
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_82

    .line 1676
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v10    # "value":Ljava/lang/Integer;
    :cond_c2
    if-eqz p6, :cond_e6

    .line 1677
    const v11, 0x7fffffff

    if-eq v7, v11, :cond_e4

    .line 1681
    :goto_c9
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPolicyStateasInteger: result = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v7

    .line 1682
    goto/16 :goto_3e

    :cond_e4
    move v7, v9

    .line 1677
    goto :goto_c9

    .line 1679
    :cond_e6
    const/high16 v11, -0x80000000

    if-eq v7, v11, :cond_eb

    :goto_ea
    goto :goto_c9

    :cond_eb
    move v7, v9

    goto :goto_ea
.end method

.method private putPolicyState(IIJILjava/lang/String;)Z
    .registers 13
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "value"    # I
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    .line 1578
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1579
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1580
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1581
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1582
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1585
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1586
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1589
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 1590
    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   accId   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    return v2
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .registers 13
    .param p1, "admin"    # I
    .param p2, "containerId"    # I
    .param p3, "accId"    # J
    .param p5, "state"    # Z
    .param p6, "policy"    # Ljava/lang/String;

    .prologue
    .line 1559
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1560
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1561
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1563
    if-eqz p5, :cond_72

    const-string v3, "1"

    :goto_24
    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1566
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1567
    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1568
    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1570
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 1571
    .local v2, "ret":Z
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   accId   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    return v2

    .line 1563
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v2    # "ret":Z
    :cond_72
    const-string v3, "0"

    goto :goto_24
.end method

.method private resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2282
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2283
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2285
    .local v0, "adminUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2286
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "ForceSmimeCertForEncryption"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2288
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2290
    .local v3, "whereValues":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2291
    const-string v5, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2293
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_35

    const/4 v4, 0x1

    :cond_35
    return v4
.end method

.method private resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2169
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2170
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2171
    .local v0, "adminUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2172
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "ForceSmimeCertForSigning"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2174
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2176
    .local v3, "whereValues":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2177
    const-string v5, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2179
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_35

    const/4 v4, 0x1

    :cond_35
    return v4
.end method

.method private resetForcedSMIMECertificateStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1534
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1535
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1536
    .local v0, "adminUid":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1537
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v5, "ForceSmimeCert"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1539
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1541
    .local v3, "whereValues":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    const-string v5, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1544
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ExchangeAccountTable"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v5

    if-lez v5, :cond_35

    const/4 v4, 0x1

    :cond_35
    return v4
.end method

.method private sendReleaseSMIMECertificate(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 1548
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "account_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1552
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1553
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1554
    return-void
.end method

.method private sendReleaseSMIMECertificateForEncryption(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2296
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2297
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "account_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2300
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2301
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2302
    return-void
.end method

.method private sendReleaseSMIMECertificateForSigning(IJI)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "accId"    # J
    .param p4, "userId"    # I

    .prologue
    .line 2182
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.email.RELEASE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2183
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "account_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2186
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2187
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    return-void
.end method

.method private updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountMData"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p3, "accountId"    # J
    .param p5, "doReCreate"    # Z
    .param p6, "updateField"    # Ljava/lang/String;

    .prologue
    .line 399
    const-wide/16 v3, -0x1

    .line 400
    .local v3, "accId":J
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 401
    .local v6, "callingUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 402
    .local v14, "userID":I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 404
    .local v7, "containerId":I
    const-string v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateAccount :  userID"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 406
    .local v12, "token":J
    const/4 v15, 0x1

    move-object/from16 v0, p2

    iput-boolean v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 408
    const/4 v15, 0x1

    move/from16 v0, p5

    if-ne v0, v15, :cond_119

    .line 409
    :try_start_37
    const-string v15, "ExchangeAccountPolicy"

    const-string v16, "Disabling EAS ExchangeService"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 411
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/ComponentName;

    invoke-static {v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v11, "syncMgrCn":Landroid/content/ComponentName;
    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v11, v15, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 415
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_ab

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v15, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v3

    .line 421
    :goto_8d
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_ae

    .line 422
    const-string v15, "ExchangeAccountPolicy"

    const-string v16, "Enabling EAS ExchangeService : delete account"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v11, v15, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 425
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_a7} :catch_f5
    .catchall {:try_start_37 .. :try_end_a7} :catchall_114

    .line 447
    .end local v5    # "alias":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_a7
    :goto_a7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return-wide v3

    .line 419
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "syncMgrCn":Landroid/content/ComponentName;
    :cond_ab
    const-wide/16 v3, -0x1

    goto :goto_8d

    .line 428
    :cond_ae
    if-eqz v5, :cond_a7

    .line 431
    :try_start_b0
    const-string v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateAccount() : Sending intent to rename"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v9, Landroid/content/Intent;

    const-string v15, "com.android.email.RENAME_CERTIFICATE"

    invoke-static {v7, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v9, "intent":Landroid/content/Intent;
    const-string v15, "accountid"

    invoke-virtual {v9, v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 435
    const-string v15, "alias"

    invoke-virtual {v9, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v17, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_f4} :catch_f5
    .catchall {:try_start_b0 .. :try_end_f4} :catchall_114

    goto :goto_a7

    .line 444
    .end local v5    # "alias":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "syncMgrCn":Landroid/content/ComponentName;
    :catch_f5
    move-exception v8

    .line 445
    .local v8, "e":Ljava/lang/Exception;
    :try_start_f6
    const-string v15, "ExchangeAccountPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateAccount() EX : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catchall {:try_start_f6 .. :try_end_113} :catchall_114

    goto :goto_a7

    .line 447
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_114
    move-exception v15

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    .line 440
    :cond_119
    const/4 v15, 0x0

    :try_start_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v15, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_129} :catch_f5
    .catchall {:try_start_11a .. :try_end_129} :catchall_114

    move-result-wide v3

    goto/16 :goto_a7
.end method


# virtual methods
.method public addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 52
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;

    .prologue
    .line 279
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " called old addNewAccount : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .registers 54
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "easUser"    # Ljava/lang/String;
    .param p5, "easDomain"    # Ljava/lang/String;
    .param p6, "syncLookback"    # I
    .param p7, "syncInterval"    # I
    .param p8, "isDefault"    # Z
    .param p9, "senderName"    # Ljava/lang/String;
    .param p10, "protocolVersion"    # Ljava/lang/String;
    .param p11, "signature"    # Ljava/lang/String;
    .param p12, "emailNotificationVibrateAlways"    # Z
    .param p13, "emailNotificationVibrateWhenSilent"    # Z
    .param p14, "serverAddress"    # Ljava/lang/String;
    .param p15, "useSSL"    # Z
    .param p16, "useTLS"    # Z
    .param p17, "acceptAllCertificates"    # Z
    .param p18, "serverPassword"    # Ljava/lang/String;
    .param p19, "serverPathPrefix"    # Ljava/lang/String;
    .param p20, "peakStarttime"    # I
    .param p21, "peakEndtime"    # I
    .param p22, "peakDays"    # I
    .param p23, "offPeak"    # I
    .param p24, "roamingSchedule"    # I
    .param p25, "retrivalSize"    # I
    .param p26, "periodCalendar"    # I
    .param p27, "isNotify"    # Z
    .param p28, "syncContacts"    # I
    .param p29, "syncCalendar"    # I
    .param p30, "certificate_data"    # [B
    .param p31, "certificate_password"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    .line 302
    .local v21, "userID":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 305
    .local v12, "containerId":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 306
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 307
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    .line 308
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 309
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 310
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 311
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 312
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 313
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    .line 314
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    .line 316
    if-eqz p3, :cond_42

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    if-eqz p14, :cond_42

    if-eqz p10, :cond_42

    if-nez p4, :cond_4c

    .line 318
    :cond_42
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-wide/16 v10, -0x1

    .line 394
    :goto_4b
    return-wide v10

    .line 325
    :cond_4c
    const/4 v3, 0x1

    move/from16 v0, p12

    if-ne v3, v0, :cond_60

    const/4 v3, 0x1

    move/from16 v0, p13

    if-ne v3, v0, :cond_60

    .line 326
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "addNewAccount : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-wide/16 v10, -0x1

    goto :goto_4b

    .line 331
    :cond_60
    const-string v7, "eas"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p14

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_83

    .line 333
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "addNewAccount : Error :: Account already exists."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-wide/16 v10, -0x1

    goto :goto_4b

    .line 337
    :cond_83
    const-wide/16 v10, 0x0

    .line 340
    .local v10, "accId":J
    :try_start_85
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNewAccount() EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v15

    .line 343
    .local v15, "newAccountID":J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v17

    .line 345
    .local v17, "newCertificateID":J
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {v12, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v14, "intent":Landroid/content/Intent;
    const-string v3, "account_id"

    move-wide v0, v15

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 348
    const-string/jumbo v3, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v3, "service"

    const-string v4, "eas"

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v3, "server_name"

    move-object/from16 v0, p14

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v3, "user_name"

    move-object/from16 v0, p4

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v3, "user_passwd_id"

    move-wide v0, v15

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 353
    const-string v3, "serverPathPrefix"

    move-object/from16 v0, p19

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v4, "use_ssl"

    if-eqz p15, :cond_1f5

    const/4 v3, 0x1

    :goto_f6
    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string/jumbo v4, "use_tsl"

    if-eqz p16, :cond_1f8

    const/4 v3, 0x1

    :goto_ff
    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    const-string/jumbo v4, "trust_all"

    if-eqz p17, :cond_1fb

    const/4 v3, 0x1

    :goto_108
    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v3, "domain"

    move-object/from16 v0, p5

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v3, "peak_starttime"

    move/from16 v0, p20

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string v3, "peak_endtime"

    move/from16 v0, p21

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v3, "peak_days"

    move/from16 v0, p22

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    const-string v3, "peak"

    move/from16 v0, p7

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v3, "off_peak"

    move/from16 v0, p23

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const-string v3, "roaming_schedule"

    move/from16 v0, p24

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v3, "period_email"

    move/from16 v0, p6

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v3, "retrival_size"

    move/from16 v0, p25

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    const-string v3, "period_calendar"

    move/from16 v0, p26

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v3, "notify"

    move/from16 v0, p27

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string/jumbo v3, "sync_contacts"

    move/from16 v0, p28

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string/jumbo v3, "sync_calendar"

    move/from16 v0, p29

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string v3, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string/jumbo v3, "signature"

    move-object/from16 v0, p11

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string/jumbo v3, "vibrate_when_silent"

    move/from16 v0, p13

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    const-string/jumbo v3, "vibrate"

    move/from16 v0, p12

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    const-string v3, "is_default"

    move/from16 v0, p8

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    const-string v3, "certificate_data"

    move-object/from16 v0, p30

    invoke-virtual {v14, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 382
    const-string v3, "certificate_password_id"

    move-wide/from16 v0, v17

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 383
    invoke-static {v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 386
    .local v19, "token":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v3, v14, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 387
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " addNewAccount_ex : sent intent to Email app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_1d4} :catch_1d6

    goto/16 :goto_4b

    .line 390
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "newAccountID":J
    .end local v17    # "newCertificateID":J
    .end local v19    # "token":J
    :catch_1d6
    move-exception v13

    .line 391
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNewAccount() EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 354
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v15    # "newAccountID":J
    .restart local v17    # "newCertificateID":J
    :cond_1f5
    const/4 v3, 0x0

    goto/16 :goto_f6

    .line 355
    :cond_1f8
    const/4 v3, 0x0

    goto/16 :goto_ff

    .line 356
    :cond_1fb
    const/4 v3, 0x0

    goto/16 :goto_108
.end method

.method public addNewAccount_new(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/ExchangeAccount;)J
    .registers 39
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/app/enterprise/ExchangeAccount;

    .prologue
    .line 2304
    const-string v3, "ExchangeAccountPolicy"

    const-string v7, "addNewAccount_new()"

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2306
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v33

    .line 2307
    .local v33, "userID":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2310
    .local v13, "containerId":I
    if-nez p2, :cond_1f

    .line 2312
    const-string v3, "ExchangeAccountPolicy"

    const-string v7, "addNewAccount_new : Error :: Invalid Account."

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    const-wide/16 v10, -0x1

    .line 2402
    :goto_1e
    return-wide v10

    .line 2316
    :cond_1f
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2317
    .local v14, "displayName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2318
    .local v16, "emailAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mServerAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2319
    .local v6, "serverAddress":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2320
    .local v26, "protocolVersion":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mSenderName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2321
    .local v27, "senderName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2322
    .local v30, "signature":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mEasUser:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2323
    .local v5, "easUser":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2324
    .local v4, "easDomain":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2325
    .local v28, "serverPassword":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mServerPathPrefix:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2326
    .local v29, "serverPathPrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    move/from16 v17, v0

    .line 2327
    .local v17, "emailNotificationVibrateAlways":Z
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    move/from16 v18, v0

    .line 2329
    .local v18, "emailNotificationVibrateWhenSilent":Z
    if-eqz v16, :cond_89

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    if-eqz v6, :cond_89

    if-eqz v26, :cond_89

    if-nez v5, :cond_93

    .line 2331
    :cond_89
    const-string v3, "ExchangeAccountPolicy"

    const-string v7, "addNewAccount_new : Error :: Invalid input parameters."

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    const-wide/16 v10, -0x1

    goto :goto_1e

    .line 2334
    :cond_93
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_a8

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_a8

    .line 2335
    const-string v3, "ExchangeAccountPolicy"

    const-string v7, "addNewAccount_new : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    const-wide/16 v10, -0x1

    goto/16 :goto_1e

    .line 2339
    :cond_a8
    const-string v7, "eas"

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v7

    const-wide/16 v34, 0x0

    cmp-long v3, v7, v34

    if-lez v3, :cond_c6

    .line 2341
    const-string v3, "ExchangeAccountPolicy"

    const-string v7, "addNewAccount : Error :: Account already exists."

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    const-wide/16 v10, -0x1

    goto/16 :goto_1e

    .line 2344
    :cond_c6
    const-wide/16 v10, 0x0

    .line 2348
    .local v10, "accId":J
    :try_start_c8
    const-string v3, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNewAccount() New : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    if-eqz v3, :cond_12c

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    if-eqz v3, :cond_12c

    .line 2351
    const-string v3, "ExchangeAccountPolicy"

    const-string v7, " addNewAccount_new : SMIME Certificate at creation time"

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificareMode:I

    move/from16 v21, v0

    .line 2353
    .local v21, "mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2354
    .local v12, "caller":Ljava/lang/String;
    new-instance v20, Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/enterprise/ExchangeAccount;->mSMIMECertificatePassWord:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v3, v7, v2}, Lcom/android/server/enterprise/email/AccountSMIMECertificate;-><init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2355
    .local v20, "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->pushSMIMECertificate(Ljava/lang/String;Lcom/android/server/enterprise/email/AccountSMIMECertificate;)Z

    .line 2358
    .end local v12    # "caller":Ljava/lang/String;
    .end local v20    # "mSMIMECert":Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .end local v21    # "mode":I
    :cond_12c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v22

    .line 2359
    .local v22, "newAccountID":J
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_password:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v24

    .line 2361
    .local v24, "newCertificateID":J
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {v13, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2363
    .local v19, "intent":Landroid/content/Intent;
    const-string v3, "account_id"

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2364
    const-string/jumbo v3, "user_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2365
    const-string v3, "service"

    const-string v7, "eas"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    const-string v3, "server_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2367
    const-string/jumbo v3, "user_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    const-string/jumbo v3, "user_passwd_id"

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2369
    const-string v3, "serverPathPrefix"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2370
    const-string/jumbo v7, "use_ssl"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/app/enterprise/ExchangeAccount;->mUseSSL:Z

    if-eqz v3, :cond_2f6

    const/4 v3, 0x1

    :goto_197
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2371
    const-string/jumbo v7, "use_tsl"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/app/enterprise/ExchangeAccount;->mUseTLS:Z

    if-eqz v3, :cond_2f9

    const/4 v3, 0x1

    :goto_1a6
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2372
    const-string/jumbo v7, "trust_all"

    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/app/enterprise/ExchangeAccount;->mAcceptAllCertificates:Z

    if-eqz v3, :cond_2fc

    const/4 v3, 0x1

    :goto_1b5
    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2373
    const-string v3, "domain"

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/enterprise/ExchangeAccount;->mEasDomain:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2374
    const-string v3, "peak_starttime"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakStarttime:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2375
    const-string v3, "peak_endtime"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakEndtime:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2376
    const-string v3, "peak_days"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mPeakDays:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2377
    const-string v3, "peak"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncInterval:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2378
    const-string v3, "off_peak"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mOffPeak:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2379
    const-string v3, "roaming_schedule"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mRoamingSchedule:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2380
    const-string v3, "period_email"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncLookback:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2381
    const-string v3, "retrival_size"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mRetrivalSize:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2382
    const-string v3, "period_calendar"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mPeriodCalendar:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2383
    const-string v3, "notify"

    move-object/from16 v0, p2

    iget-boolean v7, v0, Landroid/app/enterprise/ExchangeAccount;->mIsNotify:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2384
    const-string/jumbo v3, "sync_contacts"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncContacts:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2385
    const-string/jumbo v3, "sync_calendar"

    move-object/from16 v0, p2

    iget v7, v0, Landroid/app/enterprise/ExchangeAccount;->mSyncCalendar:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2386
    const-string v3, "account_name"

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/enterprise/ExchangeAccount;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2387
    const-string/jumbo v3, "signature"

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/enterprise/ExchangeAccount;->mSignature:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2388
    const-string/jumbo v3, "vibrate_when_silent"

    move-object/from16 v0, p2

    iget-boolean v7, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateWhenSilent:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2389
    const-string/jumbo v3, "vibrate"

    move-object/from16 v0, p2

    iget-boolean v7, v0, Landroid/app/enterprise/ExchangeAccount;->mEmailNotificationVibrateAlways:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2390
    const-string v3, "is_default"

    move-object/from16 v0, p2

    iget-boolean v7, v0, Landroid/app/enterprise/ExchangeAccount;->mIsDefault:Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2391
    const-string v3, "certificate_data"

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/app/enterprise/ExchangeAccount;->mCertificate_data:[B

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2392
    const-string v3, "certificate_password_id"

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2393
    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v31

    .line 2395
    .local v31, "token":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v33

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2396
    invoke-static/range {v31 .. v32}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2397
    const-string v3, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " addNewAccount_new : sent intent to Email app : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_2d5} :catch_2d7

    goto/16 :goto_1e

    .line 2398
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "newAccountID":J
    .end local v24    # "newCertificateID":J
    .end local v31    # "token":J
    :catch_2d7
    move-exception v15

    .line 2399
    .local v15, "e":Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNewAccount() NEW : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 2370
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v22    # "newAccountID":J
    .restart local v24    # "newCertificateID":J
    :cond_2f6
    const/4 v3, 0x0

    goto/16 :goto_197

    .line 2371
    :cond_2f9
    const/4 v3, 0x0

    goto/16 :goto_1a6

    .line 2372
    :cond_2fc
    const/4 v3, 0x0

    goto/16 :goto_1b5
.end method

.method public allowEmailSettingsChange(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "allow"    # Z

    .prologue
    .line 1866
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1867
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1868
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1869
    .local v1, "adminUid":I
    const-string v6, "AllowNotificationChange"

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allowInComingAttachments(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    .line 1810
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1811
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1812
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1813
    .local v1, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1814
    .local v8, "userID":I
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1817
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_1d

    .line 1818
    const-string v0, "ExchangeAccountPolicy"

    const-string v3, " accountMData is null"

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/4 v0, 0x0

    .line 1822
    :goto_1c
    return v0

    :cond_1d
    const-string v6, "AttachmentEnable"

    move-object v0, p0

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    goto :goto_1c
.end method

.method public createAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;
    .param p6, "serverPassword"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v7, 0x0

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1194
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1195
    .local v1, "containerId":I
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_e

    .line 1227
    :cond_d
    :goto_d
    return v7

    .line 1198
    :cond_e
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteAccount() :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1200
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_d

    iget-boolean v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v8, :cond_d

    .line 1201
    const-string v8, "device_account_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1203
    .local v2, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v2, :cond_5f

    const-string v8, "com.android.exchange"

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_5f

    .line 1206
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM policy restriction - Cannot delete account: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1210
    :cond_5f
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1211
    .local v6, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1213
    .local v4, "token":J
    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ">>>>>>>>>>>>>>>>>        deleteAccount(long accId) in user : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

    invoke-static {v1, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "account_id"

    invoke-virtual {v3, v7, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1217
    const-string/jumbo v7, "user_id"

    iget-object v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    const-string v7, "service"

    const-string v8, "eas"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1219
    const-string v7, "server_name"

    iget-object v8, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1224
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    const/4 v7, 0x1

    goto/16 :goto_d
.end method

.method public getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 2468
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    const-string v8, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v7, p1, v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2469
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2470
    .local v6, "userID":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2471
    .local v1, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2472
    .local v4, "token":J
    const/4 v3, 0x0

    .line 2474
    .local v3, "password":Ljava/lang/String;
    :try_start_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "C#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_30
    .catchall {:try_start_15 .. :try_end_2b} :catchall_3a

    move-result-object v3

    .line 2480
    .end local v0    # "caller":Ljava/lang/String;
    :goto_2c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2482
    return-object v3

    .line 2476
    :catch_30
    move-exception v2

    .line 2477
    .local v2, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "ExchangeAccountPolicy"

    const-string v8, "getAccountCertificatePassword() failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    .line 2478
    const/4 v3, 0x0

    goto :goto_2c

    .line 2480
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getAccountDetails(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/Account;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1068
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1069
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1070
    .local v3, "userID":I
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountDetails() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const/4 v2, 0x0

    .line 1072
    .local v2, "ret":Landroid/app/enterprise/Account;
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {p1, p2, p3, v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1074
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_3e

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_3e

    .line 1075
    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v2

    .line 1077
    :cond_3e
    return-object v2
.end method

.method public getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callID"    # J

    .prologue
    .line 2450
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    const-string v8, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v7, p1, v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2451
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2452
    .local v6, "userID":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2453
    .local v1, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2454
    .local v4, "token":J
    const/4 v3, 0x0

    .line 2456
    .local v3, "password":Ljava/lang/String;
    :try_start_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "E#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2457
    .local v0, "caller":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2b} :catch_30
    .catchall {:try_start_15 .. :try_end_2b} :catchall_3a

    move-result-object v3

    .line 2462
    .end local v0    # "caller":Ljava/lang/String;
    :goto_2c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2464
    return-object v3

    .line 2458
    :catch_30
    move-exception v2

    .line 2459
    .local v2, "e":Ljava/lang/Exception;
    :try_start_31
    const-string v7, "ExchangeAccountPolicy"

    const-string v8, "getAccountEmailPassword() failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3a

    .line 2460
    const/4 v3, 0x0

    goto :goto_2c

    .line 2462
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "activeSyncHost"    # Ljava/lang/String;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1055
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEASAccounts(Landroid/app/enterprise/ContextInfo;)[Landroid/app/enterprise/Account;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1165
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1166
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1167
    .local v2, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 1168
    .local v10, "userID":I
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getEASAccounts() :    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    :try_start_27
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J

    move-result-object v7

    .line 1172
    .local v7, "ids":[J
    if-eqz v7, :cond_6b

    .line 1173
    move-object v1, v7

    .local v1, "arr$":[J
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_32
    if-ge v4, v8, :cond_6b

    aget-wide v5, v1, v4

    .line 1174
    .local v5, "id":J
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {p1, v5, v6, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1176
    .local v0, "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    if-eqz v0, :cond_4b

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4b

    .line 1177
    invoke-direct {p0, v2, v0, v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;I)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4b} :catch_4e

    .line 1173
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 1179
    .end local v0    # "acc":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v1    # "arr$":[J
    .end local v4    # "i$":I
    .end local v5    # "id":J
    .end local v7    # "ids":[J
    .end local v8    # "len$":I
    :catch_4e
    move-exception v3

    .line 1180
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getEASAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_80

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_7f
    return-object v11

    :cond_80
    const/4 v11, 0x0

    goto :goto_7f
.end method

.method public getDeviceId(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1260
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1261
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1262
    .local v8, "containerId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1265
    :cond_20
    const-string v1, "ExchangeAccountPolicy"

    const-string v3, "getDeviceId : fail "

    invoke-static {v1, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v1, 0x0

    .line 1317
    :goto_28
    return-object v1

    .line 1269
    :cond_29
    sget-object v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_34

    .line 1270
    sget-object v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v1, v1, v8

    goto :goto_28

    .line 1272
    :cond_34
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 1274
    .local v15, "userID":I
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 1275
    .local v12, "sync":Ljava/lang/Object;
    monitor-enter v12

    .line 1277
    :try_start_3e
    new-instance v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .line 1291
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1292
    .local v13, "token":J
    const-string v1, "com.android.email.GET_DEVICEID"

    invoke-static {v8, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1293
    .local v7, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-static {v8, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1294
    .local v11, "retAction":Ljava/lang/String;
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v4, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v15}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1297
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v15}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v1, v10, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1299
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1301
    const-string v1, "ExchangeAccountPolicy"

    const-string v3, "getDeviceId() EX : sendBroadcast "

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_85} :catch_a9
    .catchall {:try_start_3e .. :try_end_85} :catchall_c7

    .line 1304
    :try_start_85
    sget-object v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v1, v1, v8

    if-nez v1, :cond_97

    .line 1305
    const-string v1, "ExchangeAccountPolicy"

    const-string v3, "Device id is still null, waiting 5 seconds..."

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-wide/16 v5, 0x1388

    invoke-virtual {v12, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_97} :catch_a4
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_97} :catch_a9
    .catchall {:try_start_85 .. :try_end_97} :catchall_c7

    .line 1312
    :cond_97
    :goto_97
    :try_start_97
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_a9
    .catchall {:try_start_97 .. :try_end_9e} :catchall_c7

    .line 1316
    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "action":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "retAction":Ljava/lang/String;
    .end local v13    # "token":J
    :goto_9e
    :try_start_9e
    monitor-exit v12
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_c7

    .line 1317
    sget-object v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v1, v1, v8

    goto :goto_28

    .line 1308
    .restart local v2    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "action":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "retAction":Ljava/lang/String;
    .restart local v13    # "token":J
    :catch_a4
    move-exception v9

    .line 1309
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_a5
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_c7

    goto :goto_97

    .line 1313
    .end local v2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "action":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "retAction":Ljava/lang/String;
    .end local v13    # "token":J
    :catch_a9
    move-exception v9

    .line 1314
    .local v9, "e":Ljava/lang/Exception;
    :try_start_aa
    const-string v1, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId() EX : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 1316
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_c7
    move-exception v1

    monitor-exit v12
    :try_end_c9
    .catchall {:try_start_aa .. :try_end_c9} :catchall_c7

    throw v1
.end method

.method public getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1500
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ForceSmimeCert"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2249
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2250
    .local v1, "containerId":I
    const-string v4, "ForceSmimeCertForEncryption"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2137
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2138
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2139
    .local v5, "userID":I
    const-string v4, "ForceSmimeCertForSigning"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1847
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1848
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1849
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1850
    .local v5, "userID":I
    const-string v4, "IncomingAttachmentSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1911
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1912
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1913
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1914
    .local v5, "userID":I
    const-string v4, "MaxCalendarAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1951
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1952
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1953
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1954
    .local v5, "userID":I
    const-string v4, "MaxEmailAgeFilter"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2013
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2014
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2015
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2016
    .local v5, "userID":I
    const-string v4, "MaxEmailBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2073
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2074
    .local v1, "containerId":I
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2075
    .local v7, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2076
    .local v5, "userID":I
    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyStateasInteger(IJLjava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1418
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqEncryptSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1396
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "ReqSigSmime"

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1861
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1862
    .local v1, "containerId":I
    const-string v4, "AllowSettingChange"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1873
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1874
    .local v1, "containerId":I
    const-string v4, "AllowNotificationChange"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1826
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1827
    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1828
    .local v6, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1829
    .local v5, "userID":I
    const-string v4, "AttachmentEnable"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1728
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1734
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1774
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerCreation("

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

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1807
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerRemoved("

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

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 13
    .param p1, "uid"    # I

    .prologue
    const/4 v10, 0x0

    .line 1745
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1749
    .local v7, "userId":I
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 1750
    .local v2, "columns":[Ljava/lang/String;
    const-string v8, "AccountId"

    aput-object v8, v2, v10

    .line 1751
    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    .line 1753
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1754
    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1756
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1758
    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_53

    .line 1759
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1760
    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_2d

    .line 1763
    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1764
    .local v0, "accId":J
    invoke-direct {p0, v10, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_2d

    .line 1769
    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_53
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "onPreAdminRemoval : "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1780
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1781
    .local v7, "userId":I
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/String;

    .line 1785
    .local v2, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "AccountId"

    aput-object v9, v2, v8

    .line 1786
    const/4 v8, 0x1

    const-string v9, "ForceSmimeCert"

    aput-object v9, v2, v8

    .line 1788
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1789
    .local v3, "cvValues":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1791
    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1793
    .local v5, "emailList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_7b

    .line 1794
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1795
    .local v4, "email":Landroid/content/ContentValues;
    const-string v8, "ForceSmimeCert"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_55

    .line 1798
    const-string v8, "AccountId"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1799
    .local v0, "accId":J
    invoke-direct {p0, p1, v0, v1, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    goto :goto_55

    .line 1803
    .end local v0    # "accId":J
    .end local v4    # "email":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7b
    return-void
.end method

.method public removePendingAccount(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "easUser"    # Ljava/lang/String;
    .param p4, "easDomain"    # Ljava/lang/String;
    .param p5, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 1363
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1364
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1365
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1366
    .local v4, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1367
    .local v2, "token":J
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

    invoke-static {v0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v1, "send":Landroid/content/Intent;
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v5, "service"

    const-string v6, "eas"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1371
    const-string v5, "server_name"

    invoke-virtual {v1, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1372
    const-string/jumbo v5, "user_name"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const-string v5, "domain"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v7, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1376
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePendingAccount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-void
.end method

.method public sendAccountsChangedBroadcast(Landroid/app/enterprise/ContextInfo;)V
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1235
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1236
    .local v1, "containerId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1237
    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1238
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1239
    .local v3, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;I)V

    .line 1241
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1242
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 1243
    iput v5, v2, Landroid/os/Message;->arg2:I

    .line 1244
    iget-boolean v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v6, :cond_36

    .line 1245
    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "sendAccountsChangedBroadcast"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1251
    :goto_32
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1252
    return-void

    .line 1248
    :cond_36
    const-string v6, "ExchangeAccountPolicy"

    const-string v7, "sendAccountsChangedBroadcast   :  Delayed Broadcast"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3a98

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_32
.end method

.method public setAcceptAllCertificates(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "acceptAllCertificates"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v5, 0x0

    .line 489
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 490
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAcceptAllCertificates() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 495
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_2d

    .line 496
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2c
    :goto_2c
    return v5

    .line 500
    :cond_2d
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 501
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 503
    const-wide/16 v7, -0x1

    const-string/jumbo v6, "trust_all"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2c

    const/4 v5, 0x1

    goto :goto_2c
.end method

.method public setAccountBaseParameters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "accId"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 584
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters  - deprecated "

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 586
    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 587
    const/4 p4, 0x0

    .line 589
    :cond_18
    invoke-static {p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 590
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 591
    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 593
    if-nez p4, :cond_32

    if-nez p5, :cond_32

    if-nez p2, :cond_32

    .line 594
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_31
    :goto_31
    return-wide v3

    .line 598
    :cond_32
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p6, p7, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 601
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_42

    .line 602
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, " accountMData is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 606
    :cond_42
    iput-object p3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 608
    if-eqz p4, :cond_48

    .line 609
    iput-object p4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 611
    :cond_48
    if-eqz p2, :cond_4e

    .line 612
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 613
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 615
    :cond_4e
    if-eqz p5, :cond_31

    .line 616
    iput-object p5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 617
    iput-object p5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto :goto_31
.end method

.method public setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 2427
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    const-string v11, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v10, p1, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2428
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 2429
    .local v7, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2430
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 2431
    .local v0, "callID":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2433
    .local v5, "token":J
    if-nez p2, :cond_1e

    move-wide v0, v8

    .line 2445
    .end local v0    # "callID":J
    :goto_1d
    return-wide v0

    .line 2436
    .restart local v0    # "callID":J
    :cond_1e
    :try_start_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "C#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2437
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_3f
    .catchall {:try_start_1e .. :try_end_34} :catchall_4c

    .line 2442
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "setAccountCertificatePassword() success"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 2438
    .end local v2    # "caller":Ljava/lang/String;
    :catch_3f
    move-exception v4

    .line 2439
    .local v4, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v10, "ExchangeAccountPolicy"

    const-string v11, "setAccountCertificatePassword() failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4c

    .line 2442
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v0, v8

    .line 2440
    goto :goto_1d

    .line 2442
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 2406
    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    const-string v11, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v10, p1, v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2407
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 2408
    .local v7, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2409
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 2410
    .local v0, "callID":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2411
    .local v5, "token":J
    if-nez p2, :cond_1e

    move-wide v0, v8

    .line 2423
    .end local v0    # "callID":J
    :goto_1d
    return-wide v0

    .line 2414
    .restart local v0    # "callID":J
    :cond_1e
    :try_start_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "E#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2415
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_3f
    .catchall {:try_start_1e .. :try_end_34} :catchall_4c

    .line 2420
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    const-string v8, "ExchangeAccountPolicy"

    const-string v9, "setAccountEmailPassword() success"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 2416
    .end local v2    # "caller":Ljava/lang/String;
    :catch_3f
    move-exception v4

    .line 2417
    .local v4, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v10, "ExchangeAccountPolicy"

    const-string v11, "setAccountEmailPassword() failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4c

    .line 2420
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v0, v8

    .line 2418
    goto :goto_1d

    .line 2420
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_4c
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setAccountName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v5, 0x0

    .line 890
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 891
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 893
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 896
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_12

    .line 907
    :cond_11
    :goto_11
    return v5

    .line 899
    :cond_12
    if-nez p2, :cond_1c

    .line 900
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountName is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 904
    :cond_1c
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 906
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAccountName() :   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-wide/16 v7, -0x1

    const-string v6, "account_name"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    goto :goto_11
.end method

.method public setAlwaysVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 516
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 517
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 522
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_2e

    .line 523
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_2d
    :goto_2d
    return v5

    .line 527
    :cond_2e
    if-eqz p2, :cond_46

    .line 528
    iput-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 529
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 534
    :goto_34
    const-wide/16 v8, -0x1

    const-string/jumbo v6, "vibrate"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2d

    move v5, v7

    goto :goto_2d

    .line 531
    :cond_46
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_34
.end method

.method public setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 875
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 876
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 877
    .local v1, "userID":I
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAsDefaultAccount :  userID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    move-result v2

    return v2
.end method

.method public setClientAuthCert(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;J)V
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "certData"    # [B
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "accId"    # J

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 751
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 753
    .local v2, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 754
    .local v6, "userID":I
    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setClientAuthCert() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    if-eqz p2, :cond_2c

    if-eqz p3, :cond_2c

    const-wide/16 v7, 0x1

    cmp-long v7, p4, v7

    if-gez v7, :cond_45

    .line 756
    :cond_2c
    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setClientAuthCert() : error!  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_44
    return-void

    .line 760
    :cond_45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 761
    .local v4, "token":J
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 763
    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.email.INSTALL_CERTIFICATE"

    invoke-static {v2, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 770
    .local v0, "accCertID":J
    const-string v7, "data"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 771
    const-string v7, "accountid"

    invoke-virtual {v3, v7, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 772
    const-string v7, "password_id"

    invoke-virtual {v3, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 774
    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 776
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_44
.end method

.method public setDataSyncs(Landroid/app/enterprise/ContextInfo;ZZZZJ)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncCalendar"    # Z
    .param p3, "syncContacts"    # Z
    .param p4, "syncTasks"    # Z
    .param p5, "syncNotes"    # Z
    .param p6, "accId"    # J

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1002
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1003
    .local v4, "containerId":I
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSyncSchedules() : Cal - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Con - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1008
    .local v8, "userID":I
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 1011
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_3f

    .line 1012
    const-string v9, "ExchangeAccountPolicy"

    const-string v10, " accountMData is null"

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v9, 0x0

    .line 1040
    :goto_3e
    return v9

    .line 1016
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1019
    .local v6, "token":J
    :try_start_43
    new-instance v3, Landroid/accounts/Account;

    iget-object v9, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    .local v3, "acct":Landroid/accounts/Account;
    const-string v9, "com.android.contacts"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v9, v10, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1023
    const-string v9, "com.android.contacts"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p3, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1026
    const-string v9, "com.android.calendar"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v9, v10, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1028
    const-string v9, "com.android.calendar"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, p2, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 1031
    const-string/jumbo v9, "tasks"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v3, v9, v10, v8}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 1033
    const-string/jumbo v9, "tasks"

    invoke-static {v4, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v0, p4

    invoke-static {v3, v9, v0, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_8b} :catch_90

    .line 1039
    .end local v3    # "acct":Landroid/accounts/Account;
    :goto_8b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    const/4 v9, 0x1

    goto :goto_3e

    .line 1036
    :catch_90
    move-exception v5

    .line 1037
    .local v5, "e":Ljava/lang/Exception;
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDataSyncs() EX : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b
.end method

.method public setEmailNotificationsState(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1854
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1855
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1856
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1857
    .local v1, "adminUid":I
    const-string v6, "AllowSettingChange"

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 1437
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1438
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    .line 1439
    .local v21, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    .line 1440
    .local v20, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v26

    .line 1442
    .local v26, "userID":I
    const/16 v23, 0x0

    .line 1444
    .local v23, "result":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v19

    .line 1446
    .local v19, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v19, :cond_2d

    .line 1447
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v5, 0x3

    .line 1496
    :goto_2c
    return v5

    .line 1450
    :cond_2d
    if-eqz p4, :cond_35

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1451
    :cond_35
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, " certPath is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v5, 0x1

    goto :goto_2c

    .line 1455
    :cond_3e
    monitor-enter p0

    .line 1457
    :try_start_3f
    new-instance v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    .line 1458
    .local v9, "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v17

    .line 1460
    .local v17, "accCertID":J
    new-instance v6, Landroid/content/Intent;

    const-string v5, "com.android.server.enterprise.email.FORCE_SMIME_CERTIFICATE"

    move/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v6, "intent":Landroid/content/Intent;
    const-string v5, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v6, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1462
    const-string v5, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const-string v5, "cert_password_id"

    move-wide/from16 v0, v17

    invoke-virtual {v6, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 1466
    .local v24, "token":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1468
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1470
    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setForceSMIMECertificate :  sendOrderedBroadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :goto_a8
    iget-boolean v5, v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_aa
    .catchall {:try_start_3f .. :try_end_aa} :catchall_bb

    if-nez v5, :cond_be

    .line 1474
    :try_start_ac
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_af} :catch_b0
    .catchall {:try_start_ac .. :try_end_af} :catchall_bb

    goto :goto_a8

    .line 1475
    :catch_b0
    move-exception v22

    .line 1476
    .local v22, "ex":Ljava/lang/InterruptedException;
    :try_start_b1
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, "Exception while waiting for Email\'s response"

    move-object/from16 v0, v22

    invoke-static {v5, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 1494
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .end local v17    # "accCertID":J
    .end local v22    # "ex":Ljava/lang/InterruptedException;
    .end local v24    # "token":J
    :catchall_bb
    move-exception v5

    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_b1 .. :try_end_bd} :catchall_bb

    throw v5

    .line 1480
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v9    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .restart local v17    # "accCertID":J
    .restart local v24    # "token":J
    :cond_be
    :try_start_be
    invoke-virtual {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v23

    .line 1482
    if-gez v23, :cond_ea

    .line 1485
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    .line 1488
    const/4 v15, 0x1

    const-string v16, "ForceSmimeCert"

    move-object/from16 v10, p0

    move/from16 v11, v20

    move/from16 v12, v21

    move-wide/from16 v13, p2

    invoke-direct/range {v10 .. v16}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e7

    const/16 v23, -0x1

    .line 1494
    :goto_e2
    monitor-exit p0

    move/from16 v5, v23

    .line 1496
    goto/16 :goto_2c

    .line 1488
    :cond_e7
    const/16 v23, 0x0

    goto :goto_e2

    .line 1492
    :cond_ea
    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result code from Email: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_be .. :try_end_104} :catchall_bb

    goto :goto_e2
.end method

.method public setForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2190
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2191
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    .line 2192
    .local v21, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    .line 2193
    .local v20, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v26

    .line 2195
    .local v26, "userID":I
    const/16 v23, 0x0

    .line 2197
    .local v23, "result":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v19

    .line 2199
    .local v19, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v19, :cond_2d

    .line 2200
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const/4 v5, 0x3

    .line 2246
    :goto_2c
    return v5

    .line 2204
    :cond_2d
    monitor-enter p0

    .line 2206
    :try_start_2e
    new-instance v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    .line 2207
    .local v9, "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v17

    .line 2209
    .local v17, "accCertID":J
    new-instance v6, Landroid/content/Intent;

    const-string v5, "com.android.server.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    move/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2210
    .local v6, "intent":Landroid/content/Intent;
    const-string v5, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v6, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2211
    const-string v5, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2212
    const-string v5, "cert_password_id"

    move-wide/from16 v0, v17

    invoke-virtual {v6, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2216
    .local v24, "token":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2218
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2220
    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setForceSMIMECertificateForEncryption :  sendOrderedBroadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :goto_97
    iget-boolean v5, v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_99
    .catchall {:try_start_2e .. :try_end_99} :catchall_aa

    if-nez v5, :cond_ad

    .line 2224
    :try_start_9b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_9e
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_9e} :catch_9f
    .catchall {:try_start_9b .. :try_end_9e} :catchall_aa

    goto :goto_97

    .line 2225
    :catch_9f
    move-exception v22

    .line 2226
    .local v22, "ex":Ljava/lang/InterruptedException;
    :try_start_a0
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, "Exception while waiting for Email\'s response"

    move-object/from16 v0, v22

    invoke-static {v5, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_97

    .line 2244
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .end local v17    # "accCertID":J
    .end local v22    # "ex":Ljava/lang/InterruptedException;
    .end local v24    # "token":J
    :catchall_aa
    move-exception v5

    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_aa

    throw v5

    .line 2230
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v9    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .restart local v17    # "accCertID":J
    .restart local v24    # "token":J
    :cond_ad
    :try_start_ad
    invoke-virtual {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v23

    .line 2232
    if-gez v23, :cond_d9

    .line 2235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    .line 2238
    const/4 v15, 0x1

    const-string v16, "ForceSmimeCertForEncryption"

    move-object/from16 v10, p0

    move/from16 v11, v20

    move/from16 v12, v21

    move-wide/from16 v13, p2

    invoke-direct/range {v10 .. v16}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    const/16 v23, -0x1

    .line 2244
    :goto_d1
    monitor-exit p0

    move/from16 v5, v23

    .line 2246
    goto/16 :goto_2c

    .line 2238
    :cond_d6
    const/16 v23, 0x0

    goto :goto_d1

    .line 2242
    :cond_d9
    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result code from Email: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_ad .. :try_end_f3} :catchall_aa

    goto :goto_d1
.end method

.method public setForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    .registers 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "certPath"    # Ljava/lang/String;
    .param p5, "certPassword"    # Ljava/lang/String;

    .prologue
    .line 2079
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2080
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v21, v0

    .line 2081
    .local v21, "containerId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v20, v0

    .line 2082
    .local v20, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v26

    .line 2084
    .local v26, "userId":I
    const/16 v23, 0x0

    .line 2086
    .local v23, "result":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v19

    .line 2088
    .local v19, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v19, :cond_2d

    .line 2089
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const/4 v5, 0x3

    .line 2134
    :goto_2c
    return v5

    .line 2093
    :cond_2d
    monitor-enter p0

    .line 2095
    :try_start_2e
    new-instance v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    .line 2096
    .local v9, "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v17

    .line 2098
    .local v17, "accCertID":J
    new-instance v6, Landroid/content/Intent;

    const-string v5, "com.android.server.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    move/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2099
    .local v6, "intent":Landroid/content/Intent;
    const-string v5, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v6, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2100
    const-string v5, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v6, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2101
    const-string v5, "cert_password_id"

    move-wide/from16 v0, v17

    invoke-virtual {v6, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 2104
    .local v24, "token":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2106
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2108
    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setForceSMIMECertificateForSigning :  sendOrderedBroadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :goto_97
    iget-boolean v5, v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_99
    .catchall {:try_start_2e .. :try_end_99} :catchall_aa

    if-nez v5, :cond_ad

    .line 2112
    :try_start_9b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_9e
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_9e} :catch_9f
    .catchall {:try_start_9b .. :try_end_9e} :catchall_aa

    goto :goto_97

    .line 2113
    :catch_9f
    move-exception v22

    .line 2114
    .local v22, "ex":Ljava/lang/InterruptedException;
    :try_start_a0
    const-string v5, "ExchangeAccountPolicy"

    const-string v7, "Exception while waiting for Email\'s response"

    move-object/from16 v0, v22

    invoke-static {v5, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_97

    .line 2132
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .end local v17    # "accCertID":J
    .end local v22    # "ex":Ljava/lang/InterruptedException;
    .end local v24    # "token":J
    :catchall_aa
    move-exception v5

    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_aa

    throw v5

    .line 2118
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v9    # "broadcastReceiver":Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;
    .restart local v17    # "accCertID":J
    .restart local v24    # "token":J
    :cond_ad
    :try_start_ad
    invoke-virtual {v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v23

    .line 2120
    if-gez v23, :cond_d9

    .line 2123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    .line 2126
    const/4 v15, 0x1

    const-string v16, "ForceSmimeCertForSigning"

    move-object/from16 v10, p0

    move/from16 v11, v20

    move/from16 v12, v21

    move-wide/from16 v13, p2

    invoke-direct/range {v10 .. v16}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    const/16 v23, -0x1

    .line 2132
    :goto_d1
    monitor-exit p0

    move/from16 v5, v23

    .line 2134
    goto/16 :goto_2c

    .line 2126
    :cond_d6
    const/16 v23, 0x0

    goto :goto_d1

    .line 2130
    :cond_d9
    const-string v5, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result code from Email: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_ad .. :try_end_f3} :catchall_aa

    goto :goto_d1
.end method

.method public setIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 1832
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1833
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1834
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1835
    .local v1, "adminUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1836
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1839
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_1d

    .line 1840
    const-string v0, "ExchangeAccountPolicy"

    const-string v3, " accountMData is null"

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v0, 0x0

    .line 1843
    :goto_1c
    return v0

    :cond_1d
    const-string v6, "IncomingAttachmentSize"

    move-object v0, p0

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v0

    goto :goto_1c
.end method

.method public setMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    .line 1878
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1879
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1880
    .local v6, "containerId":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1881
    .local v5, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 1882
    .local v16, "userID":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v14

    .line 1885
    .local v14, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v14, :cond_27

    .line 1886
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v4, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/4 v4, 0x0

    .line 1907
    :goto_26
    return v4

    .line 1889
    :cond_27
    const/4 v4, 0x4

    move/from16 v0, p2

    if-lt v0, v4, :cond_31

    const/4 v4, 0x7

    move/from16 v0, p2

    if-le v0, v4, :cond_3c

    :cond_31
    if-eqz p2, :cond_3c

    .line 1891
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxCalendarAgeFilter : Error :: Invalid input parameters."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    const/4 v4, 0x0

    goto :goto_26

    .line 1894
    :cond_3c
    const-string v10, "MaxCalendarAgeFilter"

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 1896
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxCalendarAgeFilter : Error :: Fail to update policy."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    const/4 v4, 0x0

    goto :goto_26

    .line 1899
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v15

    .line 1900
    .local v15, "mdmPolicy":I
    iget v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    if-le v4, v15, :cond_a0

    if-eqz v15, :cond_a0

    .line 1902
    const-string v4, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaxCalendarAgeFilter : need to change Account value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 1904
    const-wide/16 v17, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v14

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v17, v7

    if-eqz v4, :cond_9e

    const/4 v4, 0x1

    goto :goto_26

    :cond_9e
    const/4 v4, 0x0

    goto :goto_26

    .line 1907
    :cond_a0
    const/4 v4, 0x1

    goto :goto_26
.end method

.method public setMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "maxage"    # I
    .param p3, "accId"    # J

    .prologue
    .line 1918
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1919
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1920
    .local v6, "containerId":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1921
    .local v5, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 1922
    .local v16, "userID":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v14

    .line 1925
    .local v14, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v14, :cond_27

    .line 1926
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v4, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/4 v4, 0x0

    .line 1947
    :goto_26
    return v4

    .line 1929
    :cond_27
    if-ltz p2, :cond_2e

    const/4 v4, 0x5

    move/from16 v0, p2

    if-le v0, v4, :cond_37

    .line 1931
    :cond_2e
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailAgeFilter : Error :: Invalid input parameters."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const/4 v4, 0x0

    goto :goto_26

    .line 1934
    :cond_37
    const-string v10, "MaxEmailAgeFilter"

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1936
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailAgeFilter : Error :: Fail to update policy."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const/4 v4, 0x0

    goto :goto_26

    .line 1939
    :cond_4e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v15

    .line 1940
    .local v15, "mdmPolicy":I
    iget v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    if-le v4, v15, :cond_9b

    if-eqz v15, :cond_9b

    .line 1942
    const-string v4, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaxEmailAgeFilter : need to change Account value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iput v15, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 1944
    const-wide/16 v17, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v14

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v17, v7

    if-eqz v4, :cond_99

    const/4 v4, 0x1

    goto :goto_26

    :cond_99
    const/4 v4, 0x0

    goto :goto_26

    .line 1947
    :cond_9b
    const/4 v4, 0x1

    goto :goto_26
.end method

.method public setMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 1958
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1959
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1960
    .local v6, "containerId":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1961
    .local v5, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    .line 1962
    .local v21, "userID":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v14

    .line 1965
    .local v14, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v14, :cond_27

    .line 1966
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v4, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const/4 v4, 0x0

    .line 2009
    :goto_26
    return v4

    .line 1969
    :cond_27
    if-gez p2, :cond_30

    .line 1971
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailBodyTruncationSize : Error :: invalid parameter."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    :cond_30
    const-string v10, "MaxEmailBodyTruncationSize"

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 1975
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailBodyTruncationSize : Error :: Fail to update policy."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const/4 v4, 0x0

    goto :goto_26

    .line 1978
    :cond_47
    const/16 v16, 0x1

    .line 1981
    .local v16, "isMDMallowed":Z
    :try_start_49
    const-string v4, "email_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v18

    .line 1982
    .local v18, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v18, :cond_10b

    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5e} :catch_10f

    move-result v16

    .line 1989
    .end local v18    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v19

    .line 1990
    .local v19, "mdmPolicy":I
    iget-boolean v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-nez v4, :cond_11e

    if-nez v16, :cond_11e

    if-eqz v19, :cond_11e

    .line 1992
    const/16 v17, 0x0

    .line 1993
    .local v17, "isupdate":Z
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v7, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v4, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_b3

    .line 1994
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 1995
    .local v20, "setValue":I
    const-string v4, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaxEmailBodyTruncationSize : need to change Account value1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    move/from16 v0, v20

    iput v0, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 1997
    const/16 v17, 0x1

    .line 1999
    .end local v20    # "setValue":I
    :cond_b3
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v7, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v4, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_f3

    .line 2000
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2001
    .restart local v20    # "setValue":I
    const-string v4, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaxEmailBodyTruncationSize : need to change Account value2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    move/from16 v0, v20

    iput v0, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 2003
    const/16 v17, 0x1

    .line 2005
    .end local v20    # "setValue":I
    :cond_f3
    if-eqz v17, :cond_11e

    .line 2006
    const-wide/16 v22, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v14

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v22, v7

    if-eqz v4, :cond_11b

    const/4 v4, 0x1

    goto/16 :goto_26

    .line 1982
    .end local v17    # "isupdate":Z
    .end local v19    # "mdmPolicy":I
    .restart local v18    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_10b
    const/16 v16, 0x1

    goto/16 :goto_5f

    .line 1984
    .end local v18    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_10f
    move-exception v15

    .line 1986
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "Failed talking with email policy"

    invoke-static {v4, v7, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1987
    const/16 v16, 0x1

    goto/16 :goto_5f

    .line 2006
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v17    # "isupdate":Z
    .restart local v19    # "mdmPolicy":I
    :cond_11b
    const/4 v4, 0x0

    goto/16 :goto_26

    .line 2008
    .end local v17    # "isupdate":Z
    :cond_11e
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailBodyTruncationSize : success."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const/4 v4, 0x1

    goto/16 :goto_26
.end method

.method public setMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "size"    # I
    .param p3, "accId"    # J

    .prologue
    .line 2020
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2021
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2022
    .local v6, "containerId":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2023
    .local v5, "adminUid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    .line 2024
    .local v21, "userID":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v14

    .line 2027
    .local v14, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v14, :cond_27

    .line 2028
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, " accountMData is null"

    invoke-static {v4, v7}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/4 v4, 0x0

    .line 2069
    :goto_26
    return v4

    .line 2031
    :cond_27
    if-gez p2, :cond_30

    .line 2033
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailHTMLBodyTruncationSize : Error :: invalid parameter."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    :cond_30
    const-string v10, "MaxEmailHTMLBodyTruncationSize"

    move-object/from16 v4, p0

    move-wide/from16 v7, p3

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 2037
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailHTMLBodyTruncationSize : Error :: Fail to update policy."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    const/4 v4, 0x0

    goto :goto_26

    .line 2040
    :cond_47
    const/16 v16, 0x1

    .line 2042
    .local v16, "isMDMallowed":Z
    :try_start_49
    const-string v4, "email_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/enterprise/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailPolicy;

    move-result-object v18

    .line 2043
    .local v18, "mService":Landroid/app/enterprise/IEmailPolicy;
    if-eqz v18, :cond_10b

    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Landroid/app/enterprise/IEmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5e} :catch_10f

    move-result v16

    .line 2049
    .end local v18    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v19

    .line 2050
    .local v19, "mdmPolicy":I
    iget-boolean v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    if-eqz v4, :cond_11e

    if-eqz v16, :cond_11e

    if-eqz v19, :cond_11e

    .line 2052
    const/16 v17, 0x0

    .line 2053
    .local v17, "isupdate":Z
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v7, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v4, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_b3

    .line 2054
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2055
    .local v20, "setValue":I
    const-string v4, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaxEmailHTMLBodyTruncationSize : need to change Account value1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    move/from16 v0, v20

    iput v0, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 2057
    const/16 v17, 0x1

    .line 2059
    .end local v20    # "setValue":I
    :cond_b3
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iget v7, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v4, v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_f3

    .line 2060
    iget-object v4, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I

    move-result v20

    .line 2061
    .restart local v20    # "setValue":I
    const-string v4, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMaxEmailHTMLBodyTruncationSize : need to change Account value2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    move/from16 v0, v20

    iput v0, v14, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 2063
    const/16 v17, 0x1

    .line 2065
    .end local v20    # "setValue":I
    :cond_f3
    if-eqz v17, :cond_11e

    .line 2066
    const-wide/16 v22, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v14

    move-wide/from16 v10, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v22, v7

    if-eqz v4, :cond_11b

    const/4 v4, 0x1

    goto/16 :goto_26

    .line 2043
    .end local v17    # "isupdate":Z
    .end local v19    # "mdmPolicy":I
    .restart local v18    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :cond_10b
    const/16 v16, 0x1

    goto/16 :goto_5f

    .line 2044
    .end local v18    # "mService":Landroid/app/enterprise/IEmailPolicy;
    :catch_10f
    move-exception v15

    .line 2046
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "Failed talking with email policy"

    invoke-static {v4, v7, v15}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2047
    const/16 v16, 0x1

    goto/16 :goto_5f

    .line 2066
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v17    # "isupdate":Z
    .restart local v19    # "mdmPolicy":I
    :cond_11b
    const/4 v4, 0x0

    goto/16 :goto_26

    .line 2068
    .end local v17    # "isupdate":Z
    :cond_11e
    const-string v4, "ExchangeAccountPolicy"

    const-string v7, "setMaxEmailHTMLBodyTruncationSize : success."

    invoke-static {v4, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const/4 v4, 0x1

    goto/16 :goto_26
.end method

.method public setPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 633
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 635
    .local v0, "containerId":I
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 637
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v8

    .line 639
    .local v8, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v8, :cond_1d

    .line 640
    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "accountMData is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v1

    .line 655
    :goto_1c
    return v5

    .line 644
    :cond_1d
    if-nez p2, :cond_28

    .line 645
    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "setPassword : Error :: Invalid input parameter."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 646
    goto :goto_1c

    .line 649
    :cond_28
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 650
    .local v7, "userID":I
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPassword() :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 653
    .local v9, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide v1, p3

    move-object v3, p2

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V

    .line 654
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c
.end method

.method public setPastDaysToSync(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pastDaysToSync"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 788
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 790
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPastDaysToSync() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-gt v7, p2, :cond_23

    const/4 v0, 0x6

    if-ge v0, p2, :cond_2b

    .line 793
    :cond_23
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_2a
    :goto_2a
    return v5

    .line 797
    :cond_2b
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 800
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_3b

    .line 801
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 805
    :cond_3b
    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 807
    const-wide/16 v8, -0x1

    const-string v6, "period_email"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2a

    move v5, v7

    goto :goto_2a
.end method

.method public setProtocolVersion(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "protocolVersion"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v3, 0x0

    .line 681
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 683
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 685
    if-nez p2, :cond_13

    .line 686
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setProtocolVersion : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_12
    return v3

    .line 690
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 693
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_23

    .line 694
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, " accountMData is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 698
    :cond_23
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    goto :goto_12
.end method

.method public setReleaseSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1507
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1508
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1509
    .local v3, "userID":I
    const/4 v2, 0x1

    .line 1511
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 1513
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_1c

    .line 1514
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, " accountMData is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v4, 0x0

    .line 1530
    :goto_1b
    return v4

    .line 1521
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1524
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v2

    .line 1526
    invoke-direct {p0, v1, p2, p3, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJI)V

    .line 1528
    :cond_29
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReleaseSMIMECertificate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    ID    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 1530
    goto :goto_1b
.end method

.method public setReleaseSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2253
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2254
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2255
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2256
    .local v1, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2257
    .local v4, "userID":I
    const/4 v3, 0x1

    .line 2259
    .local v3, "result":Z
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 2261
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_1e

    .line 2262
    const-string v5, "ExchangeAccountPolicy"

    const-string v6, " accountMData is null"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    const/4 v5, 0x0

    .line 2279
    :goto_1d
    return v5

    .line 2269
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2272
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateByEncryptionStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v3

    .line 2275
    invoke-direct {p0, v2, p2, p3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForEncryption(IJI)V

    .line 2277
    :cond_2b
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReleaseSMIMECertificateForEncryption : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    ID    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 2279
    goto :goto_1d
.end method

.method public setReleaseSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    .line 2142
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2143
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 2144
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2145
    .local v3, "userID":I
    const/4 v2, 0x1

    .line 2147
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 2149
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_1c

    .line 2150
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, " accountMData is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v4, 0x0

    .line 2166
    :goto_1b
    return v4

    .line 2156
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2159
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateBySigningStatusOnProvider(Landroid/app/enterprise/ContextInfo;JI)Z

    move-result v2

    .line 2162
    invoke-direct {p0, v1, p2, p3, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificateForSigning(IJI)V

    .line 2164
    :cond_29
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setReleaseSMIMECertificateForSigning : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    ID    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 2166
    goto :goto_1b
.end method

.method public setRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1403
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1404
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1405
    .local v2, "containerId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1406
    .local v1, "adminUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1409
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_19

    .line 1410
    const-string v0, "ExchangeAccountPolicy"

    const-string v3, " accountMData is null"

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v0, 0x0

    .line 1413
    :goto_18
    return v0

    :cond_19
    const-string v6, "ReqEncryptSmime"

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method

.method public setRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;JZ)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J
    .param p4, "enable"    # Z

    .prologue
    .line 1382
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1383
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1384
    .local v1, "adminUid":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1385
    .local v2, "containerId":I
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v7

    .line 1387
    .local v7, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v7, :cond_19

    .line 1388
    const-string v0, "ExchangeAccountPolicy"

    const-string v3, " accountMData is null"

    invoke-static {v0, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v0, 0x0

    .line 1391
    :goto_18
    return v0

    :cond_19
    const-string v6, "ReqSigSmime"

    move-object v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    goto :goto_18
.end method

.method public setSSL(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enableSSL"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v5, 0x0

    .line 461
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 462
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSSL() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 467
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_2d

    .line 468
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2c
    :goto_2c
    return v5

    .line 472
    :cond_2d
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 473
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 475
    const-wide/16 v7, -0x1

    const-string/jumbo v6, "use_ssl"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2c

    const/4 v5, 0x1

    goto :goto_2c
.end method

.method public setSenderName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "senderName"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    const/4 v3, 0x0

    .line 850
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 851
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 853
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 856
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_19

    .line 857
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, " accountMData is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :goto_18
    return v3

    .line 861
    :cond_19
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    goto :goto_18
.end method

.method public setSignature(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;J)Z
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "accId"    # J

    .prologue
    .line 713
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 714
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 715
    .local v10, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 716
    .local v14, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 718
    .local v12, "token":J
    new-instance v11, Landroid/content/Intent;

    const-string v3, "com.android.email.SIGNATURE_UPDATED"

    invoke-static {v10, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "signature"

    move-object/from16 v0, p2

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v3, v11, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 722
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v5

    .line 729
    .local v5, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v5, :cond_4b

    .line 730
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, " accountMData is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v3, 0x0

    .line 738
    :goto_4a
    return v3

    .line 734
    :cond_4b
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 737
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setSignature "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-wide/16 v15, -0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "signature"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v15, v3

    if-eqz v3, :cond_7f

    const/4 v3, 0x1

    goto :goto_4a

    :cond_7f
    const/4 v3, 0x0

    goto :goto_4a
.end method

.method public setSilentVibrateOnEmailNotification(Landroid/app/enterprise/ContextInfo;ZJ)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "accId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 548
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 553
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_2e

    .line 554
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_2d
    :goto_2d
    return v5

    .line 558
    :cond_2e
    if-eqz p2, :cond_46

    .line 559
    iput-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 560
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 565
    :goto_34
    const-wide/16 v8, -0x1

    const-string/jumbo v6, "vibrate_when_silent"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2d

    move v5, v7

    goto :goto_2d

    .line 562
    :cond_46
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_34
.end method

.method public setSyncInterval(Landroid/app/enterprise/ContextInfo;IJ)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "syncInterval"    # I
    .param p3, "accId"    # J

    .prologue
    const/4 v4, 0x0

    .line 822
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 823
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    .line 828
    .local v0, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v0, :cond_2d

    .line 829
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, " accountMData is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :goto_2c
    return v4

    .line 835
    :cond_2d
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 836
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    goto :goto_2c
.end method

.method public setSyncPeakTimings(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakDays"    # I
    .param p3, "peakStartMinute"    # I
    .param p4, "peakEndMinute"    # I
    .param p5, "accId"    # J

    .prologue
    const/16 v1, 0x5a0

    const/4 v5, 0x0

    .line 923
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 925
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p5, p6, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    .line 928
    .local v2, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v2, :cond_17

    .line 929
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_16
    :goto_16
    return v5

    .line 933
    :cond_17
    if-ltz p2, :cond_1d

    const/16 v0, 0x7f

    if-le p2, v0, :cond_25

    .line 934
    :cond_1d
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " peakDays is invalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 937
    :cond_25
    if-ltz p3, :cond_29

    if-le p3, v1, :cond_31

    .line 938
    :cond_29
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " peakStartMinute is invalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 941
    :cond_31
    if-ltz p4, :cond_35

    if-le p4, v1, :cond_3d

    .line 942
    :cond_35
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " peakEndMinute is invalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 945
    :cond_3d
    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 946
    iput p3, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 947
    iput p4, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 948
    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncPeakTimings() : peakDays "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  mPeakStartMinute:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " peakEndMinute:    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-wide/16 v7, -0x1

    const-string v6, "peak_days"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_16

    const/4 v5, 0x1

    goto :goto_16
.end method

.method public setSyncSchedules(Landroid/app/enterprise/ContextInfo;IIIJ)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "peakSyncSchedule"    # I
    .param p3, "offPeakSyncSchedule"    # I
    .param p4, "roamingSyncSchedule"    # I
    .param p5, "accId"    # J

    .prologue
    .line 967
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 968
    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 972
    .local v9, "containerId":I
    iget-object v2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v4

    .line 975
    .local v4, "accountMData":Lcom/android/server/enterprise/email/AccountMetaData;
    if-nez v4, :cond_19

    .line 976
    const-string v2, "ExchangeAccountPolicy"

    const-string v3, " accountMData is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v2, 0x0

    .line 985
    :goto_18
    return v2

    .line 980
    :cond_19
    iput p2, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 981
    iput p3, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 982
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_66

    const/4 v2, 0x1

    :goto_23
    iput v2, v4, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 984
    const-string v2, "ExchangeAccountPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSyncSchedules() : peakSyncSchedule "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  offPeakSyncSchedule:  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " roamingSyncSchedule:    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    const-string v8, "peak"

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-eqz v2, :cond_68

    const/4 v2, 0x1

    goto :goto_18

    .line 982
    :cond_66
    const/4 v2, 0x0

    goto :goto_23

    .line 985
    :cond_68
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1740
    return-void
.end method
