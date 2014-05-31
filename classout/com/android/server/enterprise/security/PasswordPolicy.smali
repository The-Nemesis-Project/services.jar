.class public Lcom/android/server/enterprise/security/PasswordPolicy;
.super Landroid/app/enterprise/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final MDM_PASSWORD_EXPIRING_NOTIFICATION:Ljava/lang/String; = "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final TAG:Ljava/lang/String; = "PasswordPolicy"


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;-><init>()V

    .line 133
    iput-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 523
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 119
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 122
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v0, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 131
    return-void
.end method

.method private ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1233
    const/16 v18, -0x1

    .line 1234
    .local v18, "validAdmin":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1235
    .local v8, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1237
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1239
    .local v5, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "passwordOwnerHistory"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1241
    .local v16, "ownerHistory":Ljava/lang/String;
    if-eqz v16, :cond_10b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_10b

    .line 1242
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v9, "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v19, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1245
    .local v6, "admins":[Ljava/lang/String;
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_40
    if-ge v11, v13, :cond_54

    aget-object v4, v7, v11

    .line 1246
    .local v4, "admin":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    .line 1249
    .end local v4    # "admin":Ljava/lang/String;
    :cond_54
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1252
    const/4 v12, 0x0

    .line 1253
    .local v12, "isValidAdmin":Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .end local v11    # "i$":I
    .local v10, "i":I
    :goto_66
    if-ltz v10, :cond_9b

    if-nez v12, :cond_9b

    .line 1254
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_6e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_93

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1255
    .local v4, "admin":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_6e

    .line 1256
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1257
    const/4 v12, 0x1

    .line 1262
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_93
    if-nez v12, :cond_9b

    .line 1263
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1253
    add-int/lit8 v10, v10, -0x1

    goto :goto_66

    .line 1269
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_9b
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10c

    .line 1270
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .local v15, "newHistorySb":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1272
    .restart local v4    # "admin":Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 1274
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_d3
    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1275
    .local v14, "newHistory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "passwordOwnerHistory"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "passwordPatternOwner"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1287
    .end local v6    # "admins":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "isValidAdmin":Z
    .end local v13    # "len$":I
    .end local v14    # "newHistory":Ljava/lang/String;
    .end local v15    # "newHistorySb":Ljava/lang/StringBuilder;
    :cond_10b
    :goto_10b
    return v18

    .line 1281
    .restart local v6    # "admins":[Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    .restart local v12    # "isValidAdmin":Z
    .restart local v13    # "len$":I
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "passwordOwnerHistory"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string v20, "passwordPatternOwner"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_10b
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    move-result v0

    return v0
.end method

.method private addOwnerToStack(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1325
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1326
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1328
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "passwordPatternOwner"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1332
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "passwordOwnerHistory"

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1334
    .local v1, "stack":Ljava/lang/String;
    if-eqz v1, :cond_42

    .line 1335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1340
    :goto_3a
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "passwordOwnerHistory"

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1342
    return-void

    .line 1337
    :cond_42
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3a
.end method

.method private changePasswordAsUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 713
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(IZ)Z

    .line 733
    :cond_a
    :goto_a
    return-void

    .line 716
    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ne v2, p1, :cond_a

    .line 720
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 721
    .local v1, "uh":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 722
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 725
    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 726
    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 727
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a

    .line 729
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    const-string v2, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a
.end method

.method private checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 163
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_14
    return-object p1

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_14
.end method

.method private checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 173
    :goto_16
    return-void

    .line 172
    :cond_17
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSystemUser()V

    goto :goto_16
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 270
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 274
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 271
    :catch_5
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 12
    .param p1, "str1"    # Ljava/lang/CharSequence;
    .param p2, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1482
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1484
    .local v0, "distance":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_27

    .line 1485
    aget-object v3, v0, v1

    aput v1, v3, v4

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1486
    :cond_27
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_35

    .line 1487
    aget-object v3, v0, v4

    aput v2, v3, v2

    .line 1486
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1489
    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_7f

    .line 1490
    const/4 v2, 0x1

    :goto_3d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_7c

    .line 1491
    aget-object v5, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_7a

    move v3, v4

    :goto_70
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v5, v2

    .line 1490
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1491
    :cond_7a
    const/4 v3, 0x1

    goto :goto_70

    .line 1489
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1495
    :cond_7f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1523
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1525
    .local v4, "length":I
    if-nez v4, :cond_8

    .line 1526
    const/4 v10, 0x0

    .line 1577
    :goto_7
    return v10

    .line 1528
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\w(?=\\w{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",})"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1530
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1531
    .local v5, "match":Ljava/util/regex/Matcher;
    :cond_29
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a6

    .line 1533
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 1537
    .local v9, "start":I
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1540
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1544
    const/4 v2, 0x0

    .line 1545
    .local v2, "flag":I
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int v1, v10, v0

    .line 1546
    .local v1, "charDiff":I
    if-nez v1, :cond_9a

    const/4 v8, 0x0

    .line 1549
    .local v8, "sequencePattern":I
    :goto_49
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v4, 0x5

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1550
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1551
    const/16 v10, 0x51

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1552
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1553
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5e
    if-ge v3, v4, :cond_78

    .line 1554
    add-int v10, v0, v8

    int-to-char v0, v10

    .line 1557
    add-int v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-eqz v10, :cond_77

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 1558
    :cond_77
    const/4 v2, 0x1

    .line 1567
    :cond_78
    const/4 v10, 0x1

    if-eq v2, v10, :cond_29

    .line 1571
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1572
    const/16 v10, 0x45

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1574
    add-int v10, v9, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1575
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 1546
    .end local v3    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sequencePattern":I
    :cond_9a
    if-lez v1, :cond_9e

    const/4 v8, 0x1

    goto :goto_49

    :cond_9e
    const/4 v8, -0x1

    goto :goto_49

    .line 1562
    .restart local v3    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sequencePattern":I
    :cond_a0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1553
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1577
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "flag":I
    .end local v3    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sequencePattern":I
    .end local v9    # "start":I
    :cond_a6
    const/4 v10, 0x0

    goto/16 :goto_7
.end method

.method private containsForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1129
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 1131
    .local v0, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    move v3, v4

    .line 1139
    :goto_f
    return v3

    .line 1134
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1135
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_f

    .end local v2    # "s":Ljava/lang/String;
    :cond_2d
    move v3, v4

    .line 1139
    goto :goto_f
.end method

.method private containsForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1030
    .local v3, "length":I
    if-nez v3, :cond_8

    .line 1031
    const/4 v9, 0x0

    .line 1060
    :goto_7
    return v9

    .line 1033
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\d(?=\\d{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1034
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1035
    .local v4, "match":Ljava/util/regex/Matcher;
    :cond_29
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 1037
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1041
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1042
    .local v0, "c":C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1043
    .local v1, "charDiff":I
    if-nez v1, :cond_62

    const/4 v7, 0x0

    .line 1045
    .local v7, "sequencePattern":I
    :goto_42
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1046
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1047
    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v3, :cond_68

    .line 1050
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1051
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1043
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_62
    if-lez v1, :cond_66

    const/4 v7, 0x1

    goto :goto_42

    :cond_66
    const/4 v7, -0x1

    goto :goto_42

    .line 1054
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_68
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1055
    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1057
    add-int v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1058
    const/4 v9, 0x1

    goto :goto_7

    .line 1060
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    .end local v8    # "start":I
    :cond_86
    const/4 v9, 0x0

    goto :goto_7
.end method

.method private containsForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "storedPwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1506
    if-nez p3, :cond_4

    .line 1513
    :cond_3
    :goto_3
    return v1

    .line 1509
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1510
    .local v0, "minDistance":I
    if-eqz v0, :cond_3

    .line 1513
    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method private containsMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1181
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1183
    .local v7, "rptCount":I
    if-nez v7, :cond_a

    move v8, v9

    .line 1200
    :goto_9
    return v8

    .line 1186
    :cond_a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1187
    .local v4, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1188
    .local v2, "ca":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_16
    if-ge v5, v6, :cond_6e

    aget-char v1, v0, v5

    .line 1189
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_62

    .line 1190
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1191
    .local v3, "cnt":I
    if-ne v3, v7, :cond_52

    .line 1192
    const-string v8, "PasswordPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 1193
    goto :goto_9

    .line 1195
    :cond_52
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .end local v3    # "cnt":I
    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1197
    :cond_62
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .end local v1    # "c":C
    :cond_6e
    move v8, v9

    .line 1200
    goto :goto_9
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePwdChangeForUser(II)Z
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 457
    const/4 v3, 0x1

    .line 459
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 461
    .local v4, "token":J
    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 467
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 468
    const/4 v6, 0x1

    invoke-direct {p0, p2, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPwdResetEventToPersona(IZ)Z

    move-result v2

    .line 469
    .local v2, "ret":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    .end local v2    # "ret":Z
    :goto_17
    return v2

    .line 473
    :cond_18
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v1

    .line 474
    .local v1, "isLockPwdEnabled":Z
    if-nez v1, :cond_59

    .line 476
    const/4 v6, 0x3

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 480
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_32

    .line 481
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_37

    .line 505
    .end local v1    # "isLockPwdEnabled":Z
    :goto_2d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v3

    .line 506
    goto :goto_17

    .line 485
    .restart local v1    # "isLockPwdEnabled":Z
    :cond_32
    const/4 v6, -0x4

    :try_start_33
    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_2d

    .line 500
    .end local v1    # "isLockPwdEnabled":Z
    :catch_37
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 502
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception during password enforcement: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isLockPwdEnabled":Z
    :cond_59
    :try_start_59
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_65

    .line 492
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto :goto_2d

    .line 496
    :cond_65
    const/4 v6, -0x2

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_69} :catch_37

    goto :goto_2d
.end method

.method private enforcePwdChangeIfNeededAfterCall(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 673
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v0

    .line 675
    .local v0, "changeRequired":I
    const/4 v1, 0x0

    .line 680
    .local v1, "newEnforceValue":I
    packed-switch v0, :pswitch_data_18

    .line 698
    :goto_9
    if-lez v1, :cond_11

    .line 699
    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 701
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 703
    :cond_11
    return-void

    .line 683
    :pswitch_12
    const/4 v1, 0x3

    .line 684
    goto :goto_9

    .line 687
    :pswitch_14
    const/4 v1, 0x2

    .line 688
    goto :goto_9

    .line 691
    :pswitch_16
    const/4 v1, 0x1

    .line 692
    goto :goto_9

    .line 680
    :pswitch_data_18
    .packed-switch -0x4
        :pswitch_12
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method private enforcePwdChangeIfNeededOnStart(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v0

    .line 592
    .local v0, "changeRequired":I
    const/4 v1, 0x0

    .line 598
    .local v1, "newEnforceValue":I
    packed-switch v0, :pswitch_data_16

    .line 617
    :goto_9
    if-eqz v1, :cond_e

    .line 618
    invoke-direct {p0, v2, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 621
    :cond_e
    return-void

    .line 601
    :pswitch_f
    const/4 v1, 0x3

    .line 602
    goto :goto_9

    .line 606
    :pswitch_11
    const/4 v1, 0x2

    .line 607
    goto :goto_9

    .line 610
    :pswitch_13
    const/4 v1, 0x1

    .line 611
    goto :goto_9

    .line 598
    nop

    :pswitch_data_16
    .packed-switch -0x4
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method private enforcePwdChangeIfNeededOnSwitch(I)V
    .registers 5
    .param p1, "newCurrentUserId"    # I

    .prologue
    .line 631
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v0

    .line 634
    .local v0, "changeRequired":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v1

    .line 638
    .local v1, "hasPassword":Z
    if-lez v0, :cond_10

    if-nez v1, :cond_10

    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 642
    :cond_10
    return-void
.end method

.method private enforcePwdChangeIfNeededOnTimeout(I)V
    .registers 5
    .param p1, "sendingUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 650
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 653
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_18

    .line 655
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    .line 665
    :cond_17
    :goto_17
    return-void

    .line 661
    :cond_18
    const/4 v0, -0x3

    invoke-direct {p0, v2, v0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    goto :goto_17
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .registers 4

    .prologue
    .line 411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 412
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 413
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_16
    return-void
.end method

.method private getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1210
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1212
    .local v5, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v9, "passwordPatternOwner"

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1214
    .local v3, "owner":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1215
    .local v6, "validAdmin":I
    if-eqz v3, :cond_42

    .line 1216
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1217
    .local v4, "ownerAdmin":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1218
    .local v1, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1219
    .local v0, "admin":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_23

    .line 1220
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1225
    .end local v0    # "admin":Ljava/lang/Integer;
    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :goto_3d
    return v7

    .line 1223
    .restart local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_3e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_42
    move v7, v6

    .line 1225
    goto :goto_3d
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 141
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 899
    if-nez p1, :cond_b

    .line 900
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 902
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_3b

    .line 904
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 905
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    .line 906
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 908
    :cond_27
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 909
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 910
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 911
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_3a
    return v4

    :cond_3b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_3a
.end method

.method private hasPassword(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 519
    :goto_7
    return v0

    .line 516
    :cond_8
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android"

    invoke-static {v2, v3, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 518
    .local v1, "userCtx":Landroid/content/Context;
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-direct {v2, v1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->isLockPasswordEnabled()Z

    move-result v0

    .line 519
    .local v0, "hasPassword":Z
    goto :goto_7
.end method

.method private isChangeRequestedForUser(II)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "flag":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "passwordChangeRequested"

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 940
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 943
    :cond_f
    return v0
.end method

.method private isMDMAdmin(Landroid/content/Intent;I)Z
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 797
    const-string v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 800
    .local v12, "pkgName":Ljava/lang/String;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 801
    .local v14, "userContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v16, "android"

    const/16 v17, 0x0

    new-instance v18, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v15 .. v18}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v14

    .line 804
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 805
    .local v11, "pkgMgr":Landroid/content/pm/PackageManager;
    const/16 v15, 0x1000

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 808
    .local v10, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2f
    if-ge v5, v7, :cond_ac

    aget-object v9, v2, v5

    .line 809
    .local v9, "perm":Ljava/lang/String;
    const-string v15, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_83

    const-string v15, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8c

    .line 819
    :cond_83
    const-string v15, "PasswordPolicy"

    const-string v16, "**** An MDM Admin ****"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8a} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8a} :catch_cd

    .line 820
    const/4 v15, 0x1

    .line 847
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v14    # "userContext":Landroid/content/Context;
    :goto_8b
    return v15

    .line 808
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "perm":Ljava/lang/String;
    .restart local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .restart local v14    # "userContext":Landroid/content/Context;
    :cond_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 824
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v14    # "userContext":Landroid/content/Context;
    :catch_8f
    move-exception v4

    .line 825
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "PasswordPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not retrieve user context for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ac
    :goto_ac
    :try_start_ac
    const-string v15, "enterprise_license_policy"

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 834
    .local v13, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v13, :cond_e5

    .line 835
    invoke-virtual {v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v8

    .line 836
    .local v8, "list":[Landroid/app/enterprise/license/LicenseInfo;
    move-object v2, v8

    .local v2, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_bd
    if-ge v5, v7, :cond_e5

    aget-object v6, v2, v5

    .line 837
    .local v6, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v6}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c8} :catch_db

    move-result v15

    if-eqz v15, :cond_d8

    .line 838
    const/4 v15, 0x1

    goto :goto_8b

    .line 826
    .end local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v5    # "i$":I
    .end local v6    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "len$":I
    .end local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_cd
    move-exception v3

    .line 827
    .local v3, "e":Ljava/lang/Exception;
    const-string v15, "PasswordPolicy"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 836
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "i$":I
    .restart local v6    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v7    # "len$":I
    .restart local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    .line 842
    .end local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v5    # "i$":I
    .end local v6    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "len$":I
    .end local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_db
    move-exception v3

    .line 843
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v15, "PasswordPolicy"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e5
    const-string v15, "PasswordPolicy"

    const-string v16, "**** Not an MDM Admin ****"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v15, 0x0

    goto :goto_8b
.end method

.method private isPasswordVisibilityEnabledEx(II)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1621
    const/4 v1, 0x1

    .line 1623
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordVisibilityEnabled"

    invoke-virtual {v4, p2, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1625
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1626
    .local v2, "value":Z
    if-nez v2, :cond_f

    .line 1627
    move v1, v2

    .line 1631
    .end local v2    # "value":Z
    :cond_22
    return v1
.end method

.method private isPersona(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 785
    const/4 v1, 0x0

    .line 786
    .local v1, "ret":Z
    if-eqz p1, :cond_14

    .line 787
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 788
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 789
    const/4 v1, 0x1

    .line 792
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_14
    return v1
.end method

.method private postPersonaEvent(ILandroid/content/pm/PersonaEvent;)Z
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "event"    # Landroid/content/pm/PersonaEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "mPersonaStateHandler":Landroid/content/pm/IPersonaStateHandler;
    const-string v2, "persona_state"

    invoke-static {p1, v2}, Lcom/android/server/pm/HandlerCacheManager;->getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 744
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 745
    invoke-static {v0}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v1

    .line 746
    if-eqz v1, :cond_21

    .line 747
    invoke-interface {v1, p2}, Landroid/content/pm/IPersonaStateHandler;->postEvent(Landroid/content/pm/PersonaEvent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 748
    const/4 v2, 0x1

    .line 755
    :goto_19
    return v2

    .line 752
    :cond_1a
    const-string v2, "PasswordPolicy"

    const-string v3, "postPersonaEvent() IPersonaStateHandler from HandlerCacheManager is null."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_21
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private postPwdResetEventToPersona(IZ)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "rollback"    # Z

    .prologue
    const/4 v5, 0x0

    .line 764
    const/4 v1, 0x0

    .line 766
    .local v1, "success":Z
    :try_start_2
    new-instance v2, Landroid/content/pm/PersonaEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/pm/PersonaEvent;-><init>(I)V

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->postPersonaEvent(ILandroid/content/pm/PersonaEvent;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_14

    move-result v1

    .line 773
    :goto_c
    if-nez v1, :cond_13

    if-eqz p2, :cond_13

    .line 775
    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 778
    :cond_13
    return v1

    .line 768
    :catch_14
    move-exception v0

    .line 769
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "PasswordPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during postPwdResetEventToPersonaOrRollback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1295
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1296
    .local v3, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 1298
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "passwordOwnerHistory"

    invoke-virtual {v11, v3, v12, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1300
    .local v9, "stack":Ljava/lang/String;
    if-eqz v9, :cond_5d

    .line 1302
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, "admins":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1304
    .local v7, "newStackSb":Ljava/lang/StringBuilder;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1e
    if-ge v4, v5, :cond_4b

    aget-object v0, v2, v4

    .line 1305
    .local v0, "admin":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1306
    .local v8, "owner":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v11, v12, :cond_48

    .line 1307
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1310
    .end local v0    # "admin":Ljava/lang/String;
    .end local v8    # "owner":Ljava/lang/Integer;
    :cond_4b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1311
    .local v6, "newStack":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5e

    .line 1312
    const/4 v6, 0x0

    .line 1316
    :goto_56
    iget-object v11, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "passwordOwnerHistory"

    invoke-virtual {v11, v3, v12, v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1319
    .end local v1    # "admins":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "newStack":Ljava/lang/String;
    .end local v7    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_5d
    return-void

    .line 1314
    .restart local v1    # "admins":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "newStack":Ljava/lang/String;
    .restart local v7    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_5e
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_56
.end method

.method private declared-synchronized setPwdChangeRequestedForUser(III)Z
    .registers 24
    .param p1, "containerId"    # I
    .param p2, "flag"    # I
    .param p3, "userId"    # I

    .prologue
    .line 857
    monitor-enter p0

    :try_start_1
    const-string v17, "android.uid.system:1000"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c0

    .line 858
    const/4 v13, 0x1

    .line 860
    .local v13, "success":Z
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "passwordChangeRequested"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v17

    if-nez v17, :cond_ba

    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 867
    .local v15, "token":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 869
    .local v5, "am":Landroid/app/ActivityManager;
    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    .line 871
    .local v11, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v12, "com.android.settings"

    .line 872
    .local v12, "settingsPkg":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_bc

    .line 873
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_62
    :goto_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_bc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 874
    .local v14, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v9, v14, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 875
    .local v9, "origInt":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 876
    .local v6, "cmp":Landroid/content/ComponentName;
    if-eqz v6, :cond_62

    .line 877
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 878
    .local v10, "packageName":Ljava/lang/String;
    const-string v17, "PasswordPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "packageName "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    if-eqz v10, :cond_62

    const-string v17, "com.android.settings"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_62

    .line 881
    const-string v17, "com.android.settings"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 882
    iget v0, v14, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/ActivityManager;->removeTask(II)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b4} :catch_b5
    .catchall {:try_start_b .. :try_end_b4} :catchall_c0

    goto :goto_62

    .line 890
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v6    # "cmp":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "origInt":Landroid/content/Intent;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "settingsPkg":Ljava/lang/String;
    .end local v14    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v15    # "token":J
    :catch_b5
    move-exception v7

    .line 891
    .local v7, "e":Ljava/lang/Exception;
    :try_start_b6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_c0

    .line 892
    const/4 v13, 0x0

    .line 894
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_ba
    :goto_ba
    monitor-exit p0

    return v13

    .line 888
    .restart local v5    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v12    # "settingsPkg":Ljava/lang/String;
    .restart local v15    # "token":J
    :cond_bc
    :try_start_bc
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_b5
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_ba

    .line 857
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "settingsPkg":Ljava/lang/String;
    .end local v13    # "success":Z
    .end local v15    # "token":J
    :catchall_c0
    move-exception v17

    monitor-exit p0

    throw v17
.end method


# virtual methods
.method public addRequiredPasswordPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 253
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 254
    :cond_c
    const/4 v0, 0x0

    .line 263
    :goto_d
    return v0

    .line 256
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "oldRegex":Ljava/lang/String;
    if-eqz v5, :cond_45

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 263
    :goto_36
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    .line 261
    :cond_45
    move-object v5, p2

    goto :goto_36
.end method

.method public deleteAllRestrictions(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 287
    .local v7, "oldRegex":Ljava/lang/String;
    const/4 v8, 0x1

    .line 288
    .local v8, "ret":Z
    if-eqz v7, :cond_31

    .line 289
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 291
    if-eqz v8, :cond_31

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 293
    .local v6, "currentOwner":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v6, v0, :cond_32

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    .line 305
    .end local v6    # "currentOwner":I
    :cond_31
    :goto_31
    return v8

    .line 298
    .restart local v6    # "currentOwner":I
    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V

    goto :goto_31
.end method

.method enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1670
    if-eqz p2, :cond_3d

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1672
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3d

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v2, v1, :cond_3d

    .line 1673
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1674
    .local v0, "callingCN":Landroid/content/ComponentName;
    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1675
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component name voilation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1679
    .end local v0    # "callingCN":Landroid/content/ComponentName;
    .end local v1    # "uid":I
    :cond_3d
    return-void
.end method

.method public enforcePwdChange(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 452
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 453
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    move-result v1

    return v1
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1640
    const/4 v6, 0x0

    .line 1641
    .local v6, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1643
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "excludeExternalStorageWipe"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1646
    return v6
.end method

.method public getCurrentFailedPasswordAttempts(Landroid/app/enterprise/ContextInfo;)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2062
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2065
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    .line 2067
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1c
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    move-result v3

    .line 2072
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2076
    :goto_1b
    return v3

    .line 2069
    :catch_1c
    move-exception v0

    .line 2070
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 2072
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2076
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v3, -0x1

    goto :goto_1b

    .line 2072
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1097
    const-string v6, "android.uid.system:1000"

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1099
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1101
    .local v5, "userId":I
    if-eqz p2, :cond_49

    .line 1102
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v8, "PASSWORD"

    const-string v9, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1105
    .local v1, "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_68

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_68

    .line 1106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1108
    .local v4, "str":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    .line 1114
    .end local v1    # "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "str":Ljava/lang/String;
    :cond_49
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v9, "PASSWORD"

    const-string v10, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "adminStrings":Ljava/lang/String;
    if-eqz v0, :cond_68

    .line 1117
    new-instance v2, Ljava/util/ArrayList;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1119
    .end local v0    # "adminStrings":Ljava/lang/String;
    :cond_68
    return-object v2
.end method

.method public getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1158
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1160
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "passwordMaximumCharacterOccurences"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1163
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1164
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1165
    .local v3, "value":I
    if-nez v0, :cond_29

    .line 1166
    move v0, v3

    goto :goto_15

    .line 1167
    :cond_29
    if-eqz v3, :cond_15

    if-le v0, v3, :cond_15

    .line 1168
    move v0, v3

    goto :goto_15

    .line 1171
    .end local v3    # "value":I
    :cond_2f
    return v0
.end method

.method public getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1417
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1419
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "passwordMaximumCharacterSequenceLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1422
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1423
    .local v1, "length":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1424
    .local v3, "value":I
    if-nez v1, :cond_29

    .line 1425
    move v1, v3

    goto :goto_15

    .line 1426
    :cond_29
    if-eqz v3, :cond_15

    if-le v1, v3, :cond_15

    .line 1427
    move v1, v3

    goto :goto_15

    .line 1430
    .end local v3    # "value":I
    :cond_2f
    return v1
.end method

.method public getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 973
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 975
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "passwordAttemptDeviceDisable"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 977
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 978
    .local v1, "lMaxNumFailedAttempt":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 979
    .local v3, "value":I
    if-nez v1, :cond_29

    .line 980
    move v1, v3

    goto :goto_15

    .line 981
    :cond_29
    if-eqz v3, :cond_15

    if-le v1, v3, :cond_15

    .line 982
    move v1, v3

    goto :goto_15

    .line 985
    .end local v3    # "value":I
    :cond_2f
    return v1
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2098
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2099
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2103
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 2105
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 2110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2114
    :goto_1e
    return v3

    .line 2107
    :catch_1f
    move-exception v0

    .line 2108
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 2110
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1007
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1009
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1011
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1012
    .local v1, "length":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1013
    .local v3, "value":I
    if-nez v1, :cond_29

    .line 1014
    move v1, v3

    goto :goto_15

    .line 1015
    :cond_29
    if-eqz v3, :cond_15

    if-le v1, v3, :cond_15

    .line 1016
    move v1, v3

    goto :goto_15

    .line 1019
    .end local v3    # "value":I
    :cond_2f
    return v1
.end method

.method public getMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2155
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2156
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2160
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 2162
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2d

    move-result-wide v3

    .line 2167
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2171
    :goto_1e
    return-wide v3

    .line 2164
    :catch_1f
    move-exception v0

    .line 2165
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2d

    .line 2167
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-wide/16 v3, 0x0

    goto :goto_1e

    .line 2167
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1456
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1458
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1461
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1462
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1463
    .local v3, "value":I
    if-nez v0, :cond_29

    .line 1464
    move v0, v3

    goto :goto_15

    .line 1465
    :cond_29
    if-eqz v3, :cond_15

    if-ge v0, v3, :cond_15

    .line 1470
    move v0, v3

    goto :goto_15

    .line 1473
    .end local v3    # "value":I
    :cond_2f
    return v0
.end method

.method public getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 432
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 434
    .local v2, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 435
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "passwordChangeTimeout"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 437
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 438
    .local v1, "lowerTimeout":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 439
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_18

    .line 442
    const/4 v5, -0x1

    if-eq v1, v5, :cond_33

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_18

    .line 443
    :cond_33
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_18

    .line 446
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_38
    if-gtz v1, :cond_3b

    const/4 v1, 0x0

    .end local v1    # "lowerTimeout":I
    :cond_3b
    return v1
.end method

.method public getPasswordExpiration(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2026
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2027
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2029
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 2031
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;I)J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2d

    move-result-wide v3

    .line 2036
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    :goto_1e
    return-wide v3

    .line 2033
    :catch_1f
    move-exception v0

    .line 2034
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2d

    .line 2036
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-wide/16 v3, 0x0

    goto :goto_1e

    .line 2036
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2008
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2009
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2011
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 2013
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2d

    move-result-wide v3

    .line 2018
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    :goto_1e
    return-wide v3

    .line 2015
    :catch_1f
    move-exception v0

    .line 2016
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2d

    .line 2018
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2022
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-wide/16 v3, 0x0

    goto :goto_1e

    .line 2018
    :catchall_2d
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1974
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1975
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1977
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1979
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1984
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1988
    :goto_1e
    return v3

    .line 1981
    :catch_1f
    move-exception v0

    .line 1982
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1984
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1988
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1984
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, -0x1

    .line 199
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 201
    .local v2, "userId":I
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "unlockDelay"

    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 203
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 204
    .local v1, "lowerPeriod":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 205
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_17

    .line 208
    if-eq v1, v5, :cond_31

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v1, :cond_17

    .line 211
    :cond_31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_17

    .line 214
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_36
    if-gez v1, :cond_39

    move v1, v5

    .end local v1    # "lowerPeriod":I
    :cond_39
    return v1
.end method

.method public getPasswordMinimumLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1736
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1737
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1739
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1741
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1746
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    :goto_1e
    return v3

    .line 1743
    :catch_1f
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1746
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1750
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1746
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordMinimumLetters(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1838
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1839
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1841
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1843
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1848
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1852
    :goto_1e
    return v3

    .line 1845
    :catch_1f
    move-exception v0

    .line 1846
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1848
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1852
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1848
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordMinimumLowerCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1804
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1805
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1807
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1809
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    :goto_1e
    return v3

    .line 1811
    :catch_1f
    move-exception v0

    .line 1812
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1814
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordMinimumNonLetter(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1940
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1941
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1943
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1945
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1950
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1954
    :goto_1e
    return v3

    .line 1947
    :catch_1f
    move-exception v0

    .line 1948
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1950
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1954
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1950
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordMinimumNumeric(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1872
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1873
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1875
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1877
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1882
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1886
    :goto_1e
    return v3

    .line 1879
    :catch_1f
    move-exception v0

    .line 1880
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1882
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1886
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1882
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordMinimumSymbols(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1906
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1907
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1909
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1911
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1916
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    :goto_1e
    return v3

    .line 1913
    :catch_1f
    move-exception v0

    .line 1914
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1916
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1916
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordMinimumUpperCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1770
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1771
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1773
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1775
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1780
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    :goto_1e
    return v3

    .line 1777
    :catch_1f
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1780
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1780
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1701
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1702
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1704
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_2a

    .line 1706
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v3

    .line 1711
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1715
    :goto_1e
    return v3

    .line 1708
    :catch_1f
    move-exception v0

    .line 1709
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 1711
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1715
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_1e

    .line 1711
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 314
    const-string v1, "android.uid.system:1000"

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 315
    if-eqz p2, :cond_1e

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 317
    .local v0, "owner":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 318
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .end local v0    # "owner":I
    :goto_1b
    return-object v1

    .line 321
    .restart local v0    # "owner":I
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b

    .line 323
    .end local v0    # "owner":I
    :cond_1e
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "PASSWORD"

    const-string v5, "passwordRequiredPattern"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b
.end method

.method public hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 346
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 348
    const/4 v0, 0x1

    .line 349
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 373
    const/4 v0, 0x1

    .line 374
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    const/4 v0, 0x1

    .line 337
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 361
    const/4 v0, 0x1

    .line 362
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 384
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 386
    const/4 v0, 0x1

    .line 387
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isActivePasswordSufficient(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2044
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2047
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    .line 2049
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1c
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    move-result v3

    .line 2054
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2058
    :goto_1b
    return v3

    .line 2051
    :catch_1c
    move-exception v0

    .line 2052
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 2054
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v3, 0x0

    goto :goto_1b

    .line 2054
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isChangeRequested(Landroid/app/enterprise/ContextInfo;)I
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 921
    .local v1, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 922
    .local v0, "containerId":I
    if-nez v0, :cond_e

    .line 923
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 926
    :cond_e
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v2

    return v2
.end method

.method public isChangeRequestedEx(Landroid/app/enterprise/ContextInfo;)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 932
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedForUser(II)I

    move-result v1

    return v1
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1653
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1655
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 1657
    .local v1, "ret":Z
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string v8, "excludeExternalStorageWipe"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1659
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1660
    .local v3, "value":Z
    if-nez v3, :cond_15

    .line 1661
    move v1, v3

    .line 1665
    .end local v3    # "value":Z
    :cond_28
    return v1
.end method

.method public isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string v4, "android.uid.system:1000"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 399
    const/4 v3, 0x1

    .line 401
    .local v3, "result":Z
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "patternSet":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 403
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 404
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 407
    .end local v0    # "match":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_19
    return v3
.end method

.method public isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1608
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1609
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledEx(II)Z

    move-result v1

    return v1
.end method

.method public isPasswordVisibilityEnabledAsUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1613
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledEx(II)Z

    move-result v0

    return v0
.end method

.method public isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1379
    const/4 v1, 0x1

    .line 1381
    .local v1, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1383
    .local v2, "userId":I
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string v7, "screenLockPatternVisibility"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1385
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1386
    .local v3, "value":Z
    if-nez v3, :cond_13

    .line 1387
    move v1, v3

    .line 1391
    .end local v3    # "value":Z
    :cond_26
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1346
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1350
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1358
    return-void
.end method

.method public resetPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 2118
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2122
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_27

    .line 2124
    :try_start_c
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;II)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1c
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    move-result v3

    .line 2129
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    :goto_1b
    return v3

    .line 2126
    :catch_1c
    move-exception v0

    .line 2127
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 2129
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v3, 0x0

    goto :goto_1b

    .line 2129
    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setForbiddenStrings(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1067
    .local p2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1068
    const/4 v8, 0x0

    .line 1071
    .local v8, "ret":Z
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .local v10, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_24

    .line 1074
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordForbiddenStrings"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 1090
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :goto_23
    return v8

    .line 1077
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_24
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1079
    .local v11, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1080
    .local v9, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4f} :catch_50

    goto :goto_2d

    .line 1086
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_50
    move-exception v6

    .line 1087
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PasswordPolicy"

    const-string v1, "setForbiddenStrings() failed."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public setMaximumCharacterOccurrences(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "count"    # I

    .prologue
    .line 1146
    if-gez p2, :cond_4

    .line 1147
    const/4 v0, 0x0

    .line 1150
    :goto_3
    return v0

    .line 1149
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1150
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordMaximumCharacterOccurences"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_3
.end method

.method public setMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1401
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1403
    if-gez p2, :cond_8

    .line 1404
    const/4 v0, 0x0

    .line 1406
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordMaximumCharacterSequenceLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7
.end method

.method public setMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "num"    # I

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 959
    if-gez p2, :cond_8

    .line 960
    const/4 v0, 0x0

    .line 961
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordAttemptDeviceDisable"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I

    .prologue
    .line 2080
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2081
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2085
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 2087
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 2092
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2095
    :cond_1d
    return-void

    .line 2089
    :catch_1e
    move-exception v0

    .line 2090
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 2092
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 993
    if-gez p2, :cond_4

    .line 994
    const/4 v0, 0x0

    .line 997
    :goto_3
    return v0

    .line 996
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 997
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordMaximumNumericSequenceLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_3
.end method

.method public setMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;J)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeMs"    # J

    .prologue
    .line 2137
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2138
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2142
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 2144
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, p4, v4}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 2149
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2152
    :cond_1d
    return-void

    .line 2146
    :catch_1e
    move-exception v0

    .line 2147
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 2149
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1442
    if-gez p2, :cond_8

    .line 1443
    const/4 v0, 0x0

    .line 1445
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7
.end method

.method public setPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "timeout"    # I

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 421
    if-gez p2, :cond_8

    .line 422
    const/4 v1, 0x0

    .line 426
    :goto_7
    return v1

    .line 424
    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "passwordChangeTimeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "PASSWORD"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    goto :goto_7
.end method

.method public setPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;J)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeout"    # J

    .prologue
    .line 1992
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1993
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1995
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1997
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, p4, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 2002
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2005
    :cond_1d
    return-void

    .line 1999
    :catch_1e
    move-exception v0

    .line 2000
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 2002
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1958
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1959
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1961
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1963
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1968
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1971
    :cond_1d
    return-void

    .line 1965
    :catch_1e
    move-exception v0

    .line 1966
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1968
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordLockDelay(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # I

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 187
    const/4 v2, -0x1

    if-ge p2, v2, :cond_9

    .line 188
    const/4 v1, 0x0

    .line 193
    :goto_8
    return v1

    .line 189
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "unlockDelay"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "PASSWORD"

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 193
    .local v1, "result":Z
    goto :goto_8
.end method

.method public setPasswordMinimumLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1719
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1720
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1722
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1725
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1730
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    :cond_1d
    return-void

    .line 1727
    :catch_1e
    move-exception v0

    .line 1728
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1730
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordMinimumLetters(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1822
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1823
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1825
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1827
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1832
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1835
    :cond_1d
    return-void

    .line 1829
    :catch_1e
    move-exception v0

    .line 1830
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1832
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordMinimumLowerCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1788
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1789
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1791
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1793
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1798
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1801
    :cond_1d
    return-void

    .line 1795
    :catch_1e
    move-exception v0

    .line 1796
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1798
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordMinimumNonLetter(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1924
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1925
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1926
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1927
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1929
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1934
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1937
    :cond_1d
    return-void

    .line 1931
    :catch_1e
    move-exception v0

    .line 1932
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1934
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordMinimumNumeric(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1856
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1857
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1859
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1861
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1866
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1869
    :cond_1d
    return-void

    .line 1863
    :catch_1e
    move-exception v0

    .line 1864
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1866
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordMinimumSymbols(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1890
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1891
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1893
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1895
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1900
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    :cond_1d
    return-void

    .line 1897
    :catch_1e
    move-exception v0

    .line 1898
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1900
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordMinimumUpperCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 1754
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1755
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1757
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1759
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1764
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1767
    :cond_1d
    return-void

    .line 1761
    :catch_1e
    move-exception v0

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1764
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 1683
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 1684
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1687
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_1d

    .line 1689
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_27

    .line 1694
    :goto_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    :cond_1d
    return-void

    .line 1691
    :catch_1e
    move-exception v0

    .line 1692
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1a

    .line 1694
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1584
    const/4 v6, 0x1

    .line 1585
    .local v6, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1586
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 1588
    .local v9, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-nez v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez p2, :cond_29

    .line 1590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1591
    .local v7, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1593
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    .end local v7    # "token":J
    :cond_29
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordVisibilityEnabled"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1599
    return v6
.end method

.method public setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flag"    # I

    .prologue
    .line 852
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 853
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    move-result v1

    return v1
.end method

.method public setRequiredPasswordPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 226
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 227
    :cond_12
    const/4 v7, 0x0

    .line 241
    :cond_13
    :goto_13
    return v7

    .line 229
    :cond_14
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 231
    .local v7, "ret":Z
    if-eqz v7, :cond_13

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 233
    .local v6, "currentOwner":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v6, v0, :cond_13

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->addOwnerToStack(Landroid/app/enterprise/ContextInfo;)V

    goto :goto_13
.end method

.method public setScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1365
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v5, "PASSWORD"

    const-string v6, "screenLockPatternVisibility"

    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1368
    if-eqz v0, :cond_37

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1370
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pattern_visible_pattern"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1372
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 1373
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    .end local v1    # "token":J
    :cond_37
    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1354
    return-void
.end method
