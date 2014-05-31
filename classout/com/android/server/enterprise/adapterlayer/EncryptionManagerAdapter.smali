.class public Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
.super Ljava/lang/Object;
.source "EncryptionManagerAdapter.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    if-nez v0, :cond_10

    .line 52
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;

    .line 55
    :cond_10
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public disableStorageCardEncryptionPolicy()I
    .registers 5

    .prologue
    .line 75
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    move-result v1

    return v1
.end method

.method public enableStorageCardEncryptionPolicy()I
    .registers 5

    .prologue
    .line 69
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    move-result v1

    return v1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequireStorageCardEncryption()Z
    .registers 4

    .prologue
    .line 63
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 65
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public isEncryptionFeatureEnabled()Z
    .registers 2

    .prologue
    .line 59
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public isStorageCardEncrypted()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 82
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/EncryptionManagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 85
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    invoke-virtual {v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 88
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_25
    :goto_25
    return v1

    .line 85
    .restart local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_26
    const/4 v1, 0x1

    goto :goto_25
.end method
