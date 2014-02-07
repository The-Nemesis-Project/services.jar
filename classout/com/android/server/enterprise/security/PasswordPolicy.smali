.class public Lcom/android/server/enterprise/security/PasswordPolicy;
.super Landroid/app/enterprise/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final MDM_PASSWORD_EXPIRING_NOTIFICATION:Ljava/lang/String; = "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

.field private static final PWD_CHANGE_CALL_CANCELLED:I = 0x2

.field private static final PWD_CHANGE_CALL_ENFORCED:I = 0x1

.field private static final PWD_CHANGE_CALL_NEW_PASSWORD:I = 0x3

.field private static final PWD_CHANGE_CALL_NONE:I = 0x0

.field private static PwdChangeDelayed:I = 0x0

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final TAG:Ljava/lang/String; = "PasswordPolicy"


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field mLockPatternUtilsAdapter:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/security/PasswordPolicy;->PwdChangeDelayed:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;-><init>()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 399
    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    .line 103
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLockPatternUtilsAdapter:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    .line 105
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 113
    return-void
.end method

.method private ChooseNewPasswordOwner(I)I
    .registers 22
    .param p1, "containerId"    # I

    .prologue
    .line 836
    const/16 v16, -0x1

    .line 837
    .local v16, "validAdmin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 839
    .local v5, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "passwordOwnerHistory"

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 841
    .local v15, "ownerHistory":Ljava/lang/String;
    if-eqz v15, :cond_101

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_101

    .line 842
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v8, "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 845
    .local v6, "admins":[Ljava/lang/String;
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_36
    if-ge v10, v12, :cond_4a

    aget-object v4, v7, v10

    .line 846
    .local v4, "admin":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    .line 849
    .end local v4    # "admin":Ljava/lang/String;
    :cond_4a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 852
    const/4 v11, 0x0

    .line 853
    .local v11, "isValidAdmin":Z
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    .end local v10    # "i$":I
    .local v9, "i":I
    :goto_5c
    if-ltz v9, :cond_91

    if-nez v11, :cond_91

    .line 854
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_89

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 855
    .local v4, "admin":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_64

    .line 856
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 857
    const/4 v11, 0x1

    .line 862
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_89
    if-nez v11, :cond_91

    .line 863
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 853
    add-int/lit8 v9, v9, -0x1

    goto :goto_5c

    .line 869
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_91
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_102

    .line 870
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 871
    .local v14, "newHistorySb":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 872
    .restart local v4    # "admin":Ljava/lang/Integer;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a0

    .line 874
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_c9
    const/16 v17, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 875
    .local v13, "newHistory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "passwordOwnerHistory"

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "passwordPatternOwner"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 886
    .end local v6    # "admins":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isValidAdmin":Z
    .end local v12    # "len$":I
    .end local v13    # "newHistory":Ljava/lang/String;
    .end local v14    # "newHistorySb":Ljava/lang/StringBuilder;
    :cond_101
    :goto_101
    return v16

    .line 880
    .restart local v6    # "admins":[Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v8    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "i":I
    .restart local v11    # "isValidAdmin":Z
    .restart local v12    # "len$":I
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "passwordOwnerHistory"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "passwordPatternOwner"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_101
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 80
    sget v0, Lcom/android/server/enterprise/security/PasswordPolicy;->PwdChangeDelayed:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 80
    sput p0, Lcom/android/server/enterprise/security/PasswordPolicy;->PwdChangeDelayed:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private addOwnerToStack(II)V
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 921
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "passwordPatternOwner"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 923
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "passwordOwnerHistory"

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "stack":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    :goto_30
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "passwordOwnerHistory"

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 932
    return-void

    .line 928
    :cond_38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method private checkPackageCallerOrEnforcePermission(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 137
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 141
    .end local v1    # "uid":I
    :goto_16
    return v1

    .restart local v1    # "uid":I
    :cond_17
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    goto :goto_16
.end method

.method private checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 146
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 151
    :goto_16
    return-void

    .line 150
    :cond_17
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSystemUser()V

    goto :goto_16
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 245
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 249
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 246
    :catch_5
    move-exception v0

    .line 247
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

    .line 1061
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

    .line 1063
    .local v0, "distance":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_27

    .line 1064
    aget-object v3, v0, v1

    aput v1, v3, v4

    .line 1063
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1065
    :cond_27
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_35

    .line 1066
    aget-object v3, v0, v4

    aput v2, v3, v2

    .line 1065
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1068
    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_7f

    .line 1069
    const/4 v2, 0x1

    :goto_3d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_7c

    .line 1070
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

    .line 1069
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1070
    :cond_7a
    const/4 v3, 0x1

    goto :goto_70

    .line 1068
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1074
    :cond_7f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenCharacterSequence(ILjava/lang/String;)Z
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(I)I

    move-result v3

    .line 1104
    .local v3, "length":I
    if-nez v3, :cond_9

    .line 1137
    :cond_8
    :goto_8
    return v9

    .line 1107
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\w(?=\\w{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",})"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1109
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1110
    .local v4, "match":Ljava/util/regex/Matcher;
    :cond_2a
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1112
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1116
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1119
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_2a

    .line 1123
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sub-int v1, v11, v0

    .line 1124
    .local v1, "charDiff":I
    if-nez v1, :cond_5f

    move v7, v9

    .line 1126
    .local v7, "sequencePattern":I
    :goto_49
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v3, 0x1

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1127
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    if-ge v2, v3, :cond_65

    .line 1129
    add-int v11, v0, v7

    int-to-char v0, v11

    .line 1130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1124
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_5f
    if-lez v1, :cond_63

    move v7, v10

    goto :goto_49

    :cond_63
    const/4 v7, -0x1

    goto :goto_49

    .line 1134
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_65
    add-int v11, v8, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p2, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a

    move v9, v10

    .line 1135
    goto :goto_8
.end method

.method private containsForbiddenData(ILjava/lang/String;)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 738
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(IZ)Ljava/util/List;

    move-result-object v0

    .line 740
    .local v0, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    move v3, v4

    .line 748
    :goto_f
    return v3

    .line 743
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

    .line 744
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

    .line 748
    goto :goto_f
.end method

.method private containsForbiddenNumericSequence(ILjava/lang/String;)Z
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 643
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(I)I

    move-result v3

    .line 645
    .local v3, "length":I
    if-nez v3, :cond_9

    .line 671
    :cond_8
    :goto_8
    return v9

    .line 648
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\d(?=\\d{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",})"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 649
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 650
    .local v4, "match":Ljava/util/regex/Matcher;
    :cond_2a
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 652
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 656
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 657
    .local v0, "c":C
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sub-int v1, v11, v0

    .line 658
    .local v1, "charDiff":I
    if-nez v1, :cond_59

    move v7, v9

    .line 660
    .local v7, "sequencePattern":I
    :goto_43
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v3, 0x1

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 661
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4e
    if-ge v2, v3, :cond_5f

    .line 663
    add-int v11, v0, v7

    int-to-char v0, v11

    .line 664
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 658
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_59
    if-lez v1, :cond_5d

    move v7, v10

    goto :goto_43

    :cond_5d
    const/4 v7, -0x1

    goto :goto_43

    .line 668
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_5f
    add-int v11, v8, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p2, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a

    move v9, v10

    .line 669
    goto :goto_8
.end method

.method private containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "storedPwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1085
    if-nez p3, :cond_4

    .line 1092
    :cond_3
    :goto_3
    return v1

    .line 1088
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(I)I

    move-result v0

    .line 1089
    .local v0, "minDistance":I
    if-eqz v0, :cond_3

    .line 1092
    invoke-direct {p0, p3, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method private containsMaxRepeatedCharacters(ILjava/lang/String;)Z
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 787
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(I)I

    move-result v7

    .line 789
    .local v7, "rptCount":I
    if-nez v7, :cond_a

    move v8, v9

    .line 806
    :goto_9
    return v8

    .line 792
    :cond_a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 793
    .local v4, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 794
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

    .line 795
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_62

    .line 796
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 797
    .local v3, "cnt":I
    if-ne v3, v7, :cond_52

    .line 798
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

    .line 799
    goto :goto_9

    .line 801
    :cond_52
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    .end local v3    # "cnt":I
    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 803
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

    .line 806
    goto :goto_9
.end method

.method private enforceSecurityPermission()I
    .registers 3

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 334
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_12
    return-void
.end method

.method private getCurrentPasswordOwner(I)I
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    .line 815
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "passwordPatternOwner"

    invoke-virtual {v6, p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 817
    .local v3, "owner":Ljava/lang/String;
    const/4 v5, -0x1

    .line 818
    .local v5, "validAdmin":I
    if-eqz v3, :cond_3c

    .line 819
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 820
    .local v4, "ownerAdmin":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 821
    .local v1, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 822
    .local v0, "admin":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1d

    .line 823
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 828
    .end local v0    # "admin":Ljava/lang/Integer;
    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :goto_37
    return v6

    .line 826
    .restart local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_38
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(I)I

    move-result v5

    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_3c
    move v6, v5

    .line 828
    goto :goto_37
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isMDMAdmin(Landroid/content/Intent;)Z
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 483
    :try_start_0
    const-string v8, "pkgName"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 484
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 485
    .local v6, "pkgMgr":Landroid/content/pm/PackageManager;
    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 488
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v3, :cond_80

    aget-object v4, v0, v2

    .line 489
    .local v4, "perm":Ljava/lang/String;
    const-string v8, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    const-string v8, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 499
    :cond_6a
    const-string v8, "PasswordPolicy"

    const-string v9, "**** An MDM Admin ****"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_71} :catch_76

    .line 500
    const/4 v8, 0x1

    .line 508
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v7    # "pkgName":Ljava/lang/String;
    :goto_72
    return v8

    .line 488
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "perm":Ljava/lang/String;
    .restart local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v6    # "pkgMgr":Landroid/content/pm/PackageManager;
    .restart local v7    # "pkgName":Ljava/lang/String;
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 504
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_76
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PasswordPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_80
    const-string v8, "PasswordPolicy"

    const-string v9, "**** Not an MDM Admin ****"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v8, 0x0

    goto :goto_72
.end method

.method private removeOwnerFromStack(II)V
    .registers 14
    .param p1, "OwnerId"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 894
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "passwordOwnerHistory"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 896
    .local v8, "stack":Ljava/lang/String;
    if-eqz v8, :cond_55

    .line 898
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "admins":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v6, "newStackSb":Ljava/lang/StringBuilder;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_18
    if-ge v3, v4, :cond_43

    aget-object v0, v2, v3

    .line 901
    .local v0, "admin":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 902
    .local v7, "owner":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_40

    .line 903
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 906
    .end local v0    # "admin":Ljava/lang/String;
    .end local v7    # "owner":Ljava/lang/Integer;
    :cond_43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 907
    .local v5, "newStack":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_56

    .line 908
    const/4 v5, 0x0

    .line 912
    :goto_4e
    iget-object v9, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "passwordOwnerHistory"

    invoke-virtual {v9, p2, v10, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 915
    .end local v1    # "admins":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "newStack":Ljava/lang/String;
    .end local v6    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_55
    return-void

    .line 910
    .restart local v1    # "admins":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "newStack":Ljava/lang/String;
    .restart local v6    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_56
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_4e
.end method


# virtual methods
.method public addRequiredPasswordPattern(ILjava/lang/String;)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 228
    .local v1, "callingUid":I
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 229
    :cond_c
    const/4 v0, 0x0

    .line 238
    :goto_d
    return v0

    .line 231
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PASSWORD"

    const-string v3, "passwordRequiredPattern"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "oldRegex":Ljava/lang/String;
    if-eqz v5, :cond_3d

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    :goto_31
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    .line 236
    :cond_3d
    move-object v5, p2

    goto :goto_31
.end method

.method public deleteAllRestrictions(I)Z
    .registers 11
    .param p1, "containerId"    # I

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 260
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PASSWORD"

    const-string v3, "passwordRequiredPattern"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "oldRegex":Ljava/lang/String;
    const/4 v8, 0x1

    .line 263
    .local v8, "ret":Z
    if-eqz v7, :cond_28

    .line 264
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 266
    if-eqz v8, :cond_28

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(I)I

    move-result v6

    .line 268
    .local v6, "currentOwner":I
    if-ne v6, v1, :cond_29

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->ChooseNewPasswordOwner(I)I

    .line 280
    .end local v6    # "currentOwner":I
    :cond_28
    :goto_28
    return v8

    .line 273
    .restart local v6    # "currentOwner":I
    :cond_29
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(II)V

    goto :goto_28
.end method

.method public enforcePwdChange(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v6, 0x1

    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    .line 363
    const/4 v3, 0x1

    .line 364
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 365
    .local v4, "token":J
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    .line 368
    :try_start_c
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mLockPatternUtilsAdapter:Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-virtual {v6}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->isLockPasswordEnabled()Z

    move-result v6

    if-nez v6, :cond_4a

    .line 369
    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    .line 371
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_3f

    .line 372
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v2, "it":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    const/high16 v6, 0x400000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    const/high16 v6, 0x800000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3b} :catch_47

    .line 395
    .end local v2    # "it":Landroid/content/Intent;
    :goto_3b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    return v3

    .line 378
    :cond_3f
    const/4 v6, 0x0

    :try_start_40
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    .line 380
    const/4 v6, 0x3

    sput v6, Lcom/android/server/enterprise/security/PasswordPolicy;->PwdChangeDelayed:I

    goto :goto_3b

    .line 392
    :catch_47
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_3b

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4a
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_5f

    .line 384
    new-instance v1, Landroid/content/Intent;

    const-string v6, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3b

    .line 387
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5f
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(II)Z

    .line 389
    const/4 v6, 0x1

    sput v6, Lcom/android/server/enterprise/security/PasswordPolicy;->PwdChangeDelayed:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_66} :catch_47

    goto :goto_3b
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(IZ)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1195
    const/4 v6, 0x0

    .line 1196
    .local v6, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 1198
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "excludeExternalStorageWipe"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1201
    return v6
.end method

.method public getForbiddenStrings(IZ)Ljava/util/List;
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 708
    const-string v6, "android.uid.system:1000"

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Ljava/lang/String;)I

    .line 710
    if-eqz p2, :cond_42

    .line 711
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string v8, "passwordForbiddenStrings"

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 713
    .local v2, "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_61

    .line 714
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v3, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 716
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    .line 722
    .end local v2    # "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "str":Ljava/lang/String;
    :cond_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 723
    .local v1, "callingUid":I
    iget-object v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string v8, "passwordForbiddenStrings"

    invoke-virtual {v6, v1, p1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "adminStrings":Ljava/lang/String;
    if-eqz v0, :cond_61

    .line 726
    new-instance v3, Ljava/util/ArrayList;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 728
    .end local v0    # "adminStrings":Ljava/lang/String;
    .end local v1    # "callingUid":I
    :cond_61
    return-object v3
.end method

.method public getMaximumCharacterOccurences(I)I
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 767
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordMaximumCharacterOccurences"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 769
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 770
    .local v0, "count":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 771
    .local v2, "value":I
    if-nez v0, :cond_23

    .line 772
    move v0, v2

    goto :goto_f

    .line 773
    :cond_23
    if-eqz v2, :cond_f

    if-le v0, v2, :cond_f

    .line 774
    move v0, v2

    goto :goto_f

    .line 777
    .end local v2    # "value":I
    :cond_29
    return v0
.end method

.method public getMaximumCharacterSequenceLength(I)I
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 1003
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordMaximumCharacterSequenceLength"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1006
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1007
    .local v1, "length":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1008
    .local v2, "value":I
    if-nez v1, :cond_23

    .line 1009
    move v1, v2

    goto :goto_f

    .line 1010
    :cond_23
    if-eqz v2, :cond_f

    if-le v1, v2, :cond_f

    .line 1011
    move v1, v2

    goto :goto_f

    .line 1014
    .end local v2    # "value":I
    :cond_29
    return v1
.end method

.method public getMaximumFailedPasswordsForDisable(I)I
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    .line 592
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordAttemptDeviceDisable"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 594
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 595
    .local v1, "lMaxNumFailedAttempt":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 596
    .local v2, "value":I
    if-nez v1, :cond_26

    .line 597
    move v1, v2

    goto :goto_12

    .line 598
    :cond_26
    if-eqz v2, :cond_12

    if-le v1, v2, :cond_12

    .line 599
    move v1, v2

    goto :goto_12

    .line 602
    .end local v2    # "value":I
    :cond_2c
    return v1
.end method

.method public getMaximumNumericSequenceLength(I)I
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 624
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 626
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 627
    .local v1, "length":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 628
    .local v2, "value":I
    if-nez v1, :cond_23

    .line 629
    move v1, v2

    goto :goto_f

    .line 630
    :cond_23
    if-eqz v2, :cond_f

    if-le v1, v2, :cond_f

    .line 631
    move v1, v2

    goto :goto_f

    .line 634
    .end local v2    # "value":I
    :cond_29
    return v1
.end method

.method public getMinimumCharacterChangeLength(I)I
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 1037
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1040
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1041
    .local v0, "count":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1042
    .local v2, "value":I
    if-nez v0, :cond_23

    .line 1043
    move v0, v2

    goto :goto_f

    .line 1044
    :cond_23
    if-eqz v2, :cond_f

    if-ge v0, v2, :cond_f

    .line 1049
    move v0, v2

    goto :goto_f

    .line 1052
    .end local v2    # "value":I
    :cond_29
    return v0
.end method

.method public getPasswordChangeTimeout(I)I
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 347
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordChangeTimeout"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 349
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 350
    .local v1, "lowerTimeout":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 351
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_f

    .line 354
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v1, :cond_f

    .line 355
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f

    .line 358
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2f
    if-gtz v1, :cond_32

    const/4 v1, 0x0

    .end local v1    # "lowerTimeout":I
    :cond_32
    return v1
.end method

.method public getPasswordLockDelay(I)I
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, -0x1

    .line 176
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string v7, "unlockDelay"

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 178
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 179
    .local v1, "lowerPeriod":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 180
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_10

    .line 183
    if-eq v1, v4, :cond_2a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_10

    .line 186
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    .line 189
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_2f
    if-gez v1, :cond_32

    move v1, v4

    .end local v1    # "lowerPeriod":I
    :cond_32
    return v1
.end method

.method public getRequiredPwdPatternRestrictions(IZ)Ljava/lang/String;
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "allAdmins"    # Z

    .prologue
    .line 289
    const-string v2, "android.uid.system:1000"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforcePermission(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "callingUid":I
    if-eqz p2, :cond_1c

    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(I)I

    move-result v1

    .line 292
    .local v1, "owner":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 293
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v1, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .end local v1    # "owner":I
    :goto_19
    return-object v2

    .line 296
    .restart local v1    # "owner":I
    :cond_1a
    const/4 v2, 0x0

    goto :goto_19

    .line 298
    .end local v1    # "owner":I
    :cond_1c
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    invoke-virtual {v2, v0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method public isChangeRequested()I
    .registers 4

    .prologue
    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 549
    .local v1, "uid":I
    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 550
    .local v0, "containerId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedEx(I)I

    move-result v2

    return v2
.end method

.method public isChangeRequestedEx(I)I
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "flag":I
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "passwordChangeRequested"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 561
    :cond_f
    return v0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 1209
    const/4 v1, 0x1

    .line 1210
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "excludeExternalStorageWipe"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1212
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

    .line 1213
    .local v2, "value":Z
    if-nez v2, :cond_f

    .line 1214
    move v1, v2

    .line 1218
    .end local v2    # "value":Z
    :cond_22
    return v1
.end method

.method public isPasswordPatternMatched(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 311
    const-string v5, "android.uid.system:1000"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 312
    const/4 v3, 0x1

    .line 313
    .local v3, "result":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenNumericSequence(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 329
    :cond_d
    :goto_d
    return v4

    .line 315
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenCharacterSequence(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenStringDistance(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsForbiddenData(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->containsMaxRepeatedCharacters(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 323
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(IZ)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "patternSet":Ljava/lang/String;
    if-eqz v2, :cond_39

    .line 325
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 326
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 327
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .end local v0    # "match":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_39
    move v4, v3

    .line 329
    goto :goto_d
.end method

.method public isPasswordVisibilityEnabled()Z
    .registers 4

    .prologue
    .line 1167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1168
    .local v1, "uid":I
    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    .line 1169
    .local v0, "containerId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledEx(I)Z

    move-result v2

    return v2
.end method

.method public isPasswordVisibilityEnabledEx(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    .line 1177
    const/4 v1, 0x1

    .line 1178
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "passwordVisibilityEnabled"

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1180
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

    .line 1181
    .local v2, "value":Z
    if-nez v2, :cond_f

    .line 1182
    move v1, v2

    .line 1186
    .end local v2    # "value":Z
    :cond_22
    return v1
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .registers 8

    .prologue
    .line 971
    const/4 v1, 0x1

    .line 972
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "screenLockPatternVisibility"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 974
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

    .line 975
    .local v2, "value":Z
    if-nez v2, :cond_f

    .line 976
    move v1, v2

    .line 980
    .end local v2    # "value":Z
    :cond_22
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 937
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 941
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 950
    return-void
.end method

.method public setForbiddenStrings(ILjava/util/List;)Z
    .registers 15
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 678
    .local p2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 679
    .local v1, "callingUid":I
    const/4 v8, 0x0

    .line 682
    .local v8, "ret":Z
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v10, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_21

    .line 685
    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordForbiddenStrings"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 701
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :goto_20
    return v8

    .line 688
    .restart local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_21
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 690
    .local v11, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 691
    .local v9, "s":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4d

    goto :goto_2a

    .line 697
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_4d
    move-exception v6

    .line 698
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PasswordPolicy"

    const-string v2, "setForbiddenStrings() failed."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method

.method public setMaximumCharacterOccurrences(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "count"    # I

    .prologue
    .line 755
    if-gez p2, :cond_4

    .line 756
    const/4 v0, 0x0

    .line 759
    :goto_3
    return v0

    .line 758
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 759
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordMaximumCharacterOccurences"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_3
.end method

.method public setMaximumCharacterSequenceLength(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "length"    # I

    .prologue
    .line 990
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 992
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordMaximumCharacterSequenceLength"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setMaximumFailedPasswordsForDisable(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "num"    # I

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 577
    .local v1, "callingUid":I
    if-gez p2, :cond_8

    .line 578
    const/4 v0, 0x0

    .line 579
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordAttemptDeviceDisable"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_7
.end method

.method public setMaximumNumericSequenceLength(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "length"    # I

    .prologue
    .line 610
    if-gez p2, :cond_4

    .line 611
    const/4 v0, 0x0

    .line 614
    :goto_3
    return v0

    .line 613
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 614
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordMaximumNumericSequenceLength"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_3
.end method

.method public setMinimumCharacterChangeLength(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "length"    # I

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 1025
    .local v1, "callingUid":I
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setPasswordChangeTimeout(II)Z
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 340
    .local v0, "callingUid":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "passwordChangeTimeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    iget-object v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    invoke-virtual {v2, v0, p1, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    return v2
.end method

.method public setPasswordLockDelay(II)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "time"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 165
    .local v0, "callingUid":I
    const/4 v3, -0x1

    if-ge p2, v3, :cond_9

    .line 166
    const/4 v2, 0x0

    .line 171
    :goto_8
    return v2

    .line 167
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "unlockDelay"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PASSWORD"

    invoke-virtual {v3, v0, p1, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 171
    .local v2, "result":Z
    goto :goto_8
.end method

.method public setPasswordVisibilityEnabled(IZ)Z
    .registers 12
    .param p1, "containerId"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 1144
    const/4 v6, 0x1

    .line 1145
    .local v6, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 1147
    .local v1, "callingUid":I
    if-nez p1, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledEx(I)Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez p2, :cond_22

    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1150
    .local v7, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "show_password"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1152
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    .end local v7    # "token":J
    :cond_22
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordVisibilityEnabled"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1158
    return v6
.end method

.method public setPwdChangeRequested(II)Z
    .registers 19
    .param p1, "containerId"    # I
    .param p2, "flag"    # I

    .prologue
    .line 512
    const-string v13, "android.uid.system:1000"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 513
    const/4 v9, 0x1

    .line 515
    .local v9, "success":Z
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "passwordChangeRequested"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v13

    if-nez v13, :cond_91

    .line 518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 519
    .local v11, "token":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 521
    .local v1, "am":Landroid/app/ActivityManager;
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 522
    .local v7, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v8, "com.android.settings"

    .line 523
    .local v8, "settingsPkg":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_92

    .line 524
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_92

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 525
    .local v10, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 526
    .local v5, "origInt":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 527
    .local v2, "cmp":Landroid/content/ComponentName;
    if-eqz v2, :cond_49

    .line 528
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "packageName":Ljava/lang/String;
    const-string v13, "PasswordPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packageName "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-eqz v6, :cond_49

    const-string v13, "com.android.settings"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49

    .line 532
    const-string v13, "com.android.settings"

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 533
    iget v13, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto :goto_49

    .line 541
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "cmp":Landroid/content/ComponentName;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "origInt":Landroid/content/Intent;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v8    # "settingsPkg":Ljava/lang/String;
    .end local v10    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11    # "token":J
    :catch_8f
    move-exception v3

    .line 542
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 544
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_91
    :goto_91
    return v9

    .line 539
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v7    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v8    # "settingsPkg":Ljava/lang/String;
    .restart local v11    # "token":J
    :cond_92
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_95} :catch_8f

    goto :goto_91
.end method

.method public setRequiredPasswordPattern(ILjava/lang/String;)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v1

    .line 201
    .local v1, "callingUid":I
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_23

    .line 202
    :cond_21
    const/4 v7, 0x0

    .line 216
    :cond_22
    :goto_22
    return v7

    .line 204
    :cond_23
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string v4, "passwordRequiredPattern"

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 206
    .local v7, "ret":Z
    if-eqz v7, :cond_22

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentPasswordOwner(I)I

    move-result v6

    .line 208
    .local v6, "currentOwner":I
    if-eq v6, v1, :cond_22

    .line 211
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->removeOwnerFromStack(II)V

    .line 213
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->addOwnerToStack(II)V

    goto :goto_22
.end method

.method public setScreenLockPatternVisibilityEnabled(Z)Z
    .registers 10
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x0

    .line 953
    const/4 v1, 0x0

    .line 954
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforceSecurityPermission()I

    move-result v0

    .line 957
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string v6, "screenLockPatternVisibility"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 960
    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_35

    .line 961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 962
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pattern_visible_pattern"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 964
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 965
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    .end local v2    # "token":J
    :cond_35
    return v1
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 945
    return-void
.end method
