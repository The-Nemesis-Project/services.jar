.class public Lcom/android/server/enterprise/EcppMigrationManager;
.super Ljava/lang/Object;
.source "EcppMigrationManager.java"


# static fields
.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final NEW_CONTAINER_ID:I = 0x0

.field public static final OLD_CONTAINER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EcppMigrationManager"

.field private static mInstance:Lcom/android/server/enterprise/EcppMigrationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

.field private mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    .line 67
    iput-object p1, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    .line 70
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    .line 73
    const-string v0, "password_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    .line 75
    return-void
.end method

.method private copyMaximumFailedPasswordsForDisable(ILandroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, "maximumFailedPasswordsForDisable":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I

    move-result v1

    .line 403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 404
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v4, :cond_17

    .line 406
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v4, p2, v1}, Landroid/app/enterprise/IPasswordPolicy;->setMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 410
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    :cond_17
    return-void

    .line 407
    :catch_18
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 384
    .local v1, "maximumFailedPasswordsForWipe":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumFailedPasswordsForWipe(ILandroid/content/ComponentName;)I

    move-result v1

    .line 386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 387
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 389
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 393
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    :cond_17
    return-void

    .line 390
    :catch_18
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    .registers 11
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 416
    const-wide/16 v1, 0x0

    .line 418
    .local v1, "maximumTimeToLockPassword":J
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J

    move-result-wide v1

    .line 420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 421
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v5, :cond_18

    .line 423
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p3, v1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    .line 427
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 430
    :cond_18
    return-void

    .line 424
    :catch_19
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_15

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private copyPasswordExpirationDate(IILandroid/content/ComponentName;)V
    .registers 11
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 365
    const-wide/16 v1, 0x0

    .line 367
    .local v1, "passwordExpirationDate":J
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationDate(ILandroid/content/ComponentName;)J

    move-result-wide v1

    .line 369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 370
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v5, :cond_18

    .line 372
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p3, v1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    .line 376
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    :cond_18
    return-void

    .line 373
    :catch_19
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_15

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    .registers 11
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 433
    const-wide/16 v1, 0x0

    .line 435
    .local v1, "passwordExpirationTimeout":J
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordExpirationTimeout(ILandroid/content/ComponentName;)J

    move-result-wide v1

    .line 437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 438
    .local v3, "token":J
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v5, :cond_18

    .line 440
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v5, p3, v1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    .line 444
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    :cond_18
    return-void

    .line 441
    :catch_19
    move-exception v0

    .line 442
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1a
    const-string v5, "EcppMigrationManager"

    const-string v6, "Failed talking with enterprise password policy service"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_15

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, "passwordHistoryLength":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordHistory(ILandroid/content/ComponentName;)I

    move-result v1

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 353
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 355
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 359
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 362
    :cond_17
    return-void

    .line 356
    :catch_18
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "passwordMinimumLength":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I

    move-result v1

    .line 233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 234
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 236
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 240
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 243
    :cond_17
    return-void

    .line 237
    :catch_18
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 248
    .local v1, "passwordMinimumLetters":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumLetters(ILandroid/content/ComponentName;)I

    move-result v1

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 251
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 253
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 257
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    :cond_17
    return-void

    .line 254
    :catch_18
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, "passwordMinimumNonLetter":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNonLetter(ILandroid/content/ComponentName;)I

    move-result v1

    .line 267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 268
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 270
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 274
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    :cond_17
    return-void

    .line 271
    :catch_18
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, "passwordMinimumNumeric":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumNumeric(ILandroid/content/ComponentName;)I

    move-result v1

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 285
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 287
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 291
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    :cond_17
    return-void

    .line 288
    :catch_18
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "passwordMinimumSymbols":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordMinimumSymbols(ILandroid/content/ComponentName;)I

    move-result v1

    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 302
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 304
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 308
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    :cond_17
    return-void

    .line 305
    :catch_18
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 308
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordQuality(IILandroid/content/ComponentName;)V
    .registers 10
    .param p1, "oldContainerId"    # I
    .param p2, "newContainerUsedId"    # I
    .param p3, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 316
    .local v1, "passwordQuality":I
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1, p3}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->getPasswordQuality(ILandroid/content/ComponentName;)I

    move-result v1

    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 319
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v4, :cond_17

    .line 321
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v4, p3, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 325
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    :cond_17
    return-void

    .line 322
    :catch_18
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with device policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private copyPasswordVisible(ILandroid/app/enterprise/ContextInfo;)V
    .registers 9
    .param p1, "oldContainerId"    # I
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, "passwordVisible":Z
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->isPasswordVisisbilityEnabled(I)Z

    move-result v1

    .line 335
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 336
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    if-eqz v4, :cond_17

    .line 338
    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mPasswordPolicyService:Landroid/app/enterprise/IPasswordPolicy;

    invoke-interface {v4, p2, v1}, Landroid/app/enterprise/IPasswordPolicy;->setPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18
    .catchall {:try_start_f .. :try_end_14} :catchall_21

    .line 342
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    :cond_17
    return-void

    .line 339
    :catch_18
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string v4, "EcppMigrationManager"

    const-string v5, "Failed talking with enterprise password policy service"

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_14

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_21
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .registers 9

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 83
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 84
    .local v3, "pid":I
    const-string v2, ""

    .line 86
    .local v2, "packageName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_65

    move-result-object v2

    .line 90
    :goto_12
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "caller":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_42

    if-eqz v0, :cond_42

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 96
    :cond_42
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    .end local v0    # "caller":Ljava/lang/String;
    :catch_65
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_7f
    return-void
.end method

.method private findContainerData(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "oldContainerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/enterprise/EcppMigrationManager;->mEcppStorageProvider:Lcom/android/server/enterprise/storage/EcppStorageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/storage/EcppStorageProvider;->findContainerAdmin(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v1, Lcom/android/server/enterprise/EcppMigrationManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    if-nez v0, :cond_e

    .line 58
    new-instance v0, Lcom/android/server/enterprise/EcppMigrationManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EcppMigrationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;

    .line 60
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/EcppMigrationManager;->mInstance:Lcom/android/server/enterprise/EcppMigrationManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public migrateEcppDB(Landroid/content/ComponentName;IJ)Z
    .registers 13
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "newContainerUsedId"    # I
    .param p3, "newContainerAdminUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/EcppMigrationManager;->enforceMigrationAgentSecurityCheck()V

    .line 104
    const/4 v3, 0x1

    .line 105
    .local v3, "oldContainerId":I
    const/4 v4, 0x1

    .line 107
    .local v4, "result":Z
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    long-to-int v6, p3

    invoke-direct {v0, v6, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 111
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :try_start_c
    invoke-direct {p0, v3, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->findContainerData(ILandroid/content/ComponentName;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_13

    move-result v4

    .line 112
    if-nez v4, :cond_1c

    .line 220
    :goto_12
    return v5

    .line 115
    :catch_13
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EcppMigrationManager"

    const-string v7, "Exception in finding container data, Returning!!"

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1c
    :try_start_1c
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLength(IILandroid/content/ComponentName;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_5d

    .line 128
    :goto_1f
    :try_start_1f
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumLetters(IILandroid/content/ComponentName;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_67

    .line 135
    :goto_22
    :try_start_22
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNonLetter(IILandroid/content/ComponentName;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_71

    .line 142
    :goto_25
    :try_start_25
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumNumeric(IILandroid/content/ComponentName;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_7b

    .line 149
    :goto_28
    :try_start_28
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordMinimumSymbols(IILandroid/content/ComponentName;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_85

    .line 156
    :goto_2b
    :try_start_2b
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordQuality(IILandroid/content/ComponentName;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_8f

    .line 162
    :goto_2e
    :try_start_2e
    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordVisible(ILandroid/app/enterprise/ContextInfo;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_98

    .line 169
    :goto_31
    :try_start_31
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordHistoryLength(IILandroid/content/ComponentName;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_34} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_ac

    .line 179
    :goto_34
    :try_start_34
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationDate(IILandroid/content/ComponentName;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_b7

    .line 186
    :goto_37
    :try_start_37
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForWipe(IILandroid/content/ComponentName;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_c2

    .line 193
    :goto_3a
    :try_start_3a
    invoke-direct {p0, v3, v0, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumFailedPasswordsForDisable(ILandroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_cd

    .line 200
    :goto_3d
    :try_start_3d
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyMaximumTimeToLockPassword(IILandroid/content/ComponentName;)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_40} :catch_d8
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_e3

    .line 210
    :goto_40
    :try_start_40
    invoke-direct {p0, v3, p2, p1}, Lcom/android/server/enterprise/EcppMigrationManager;->copyPasswordExpirationTimeout(IILandroid/content/ComponentName;)V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_f9

    .line 219
    :goto_43
    const-string v5, "EcppMigrationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "migrateEcppDB return : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 220
    goto :goto_12

    .line 122
    :catch_5d
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumLength()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v4, 0x0

    goto :goto_1f

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_67
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumLetters()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v4, 0x0

    goto :goto_22

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_71
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumNonLetter()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    const/4 v4, 0x0

    goto :goto_25

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7b
    move-exception v1

    .line 144
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumNumeric()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    const/4 v4, 0x0

    goto :goto_28

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_85
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordMinimumSymbols()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    const/4 v4, 0x0

    goto :goto_2b

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8f
    move-exception v1

    .line 158
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordQuality()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_98
    move-exception v1

    .line 164
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordVisible()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    const/4 v4, 0x0

    goto :goto_31

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a2
    move-exception v2

    .line 171
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "EcppMigrationManager"

    const-string v6, "copyPasswordHistoryLength(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v4, 0x0

    .line 176
    goto :goto_34

    .line 173
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_ac
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordHistoryLength()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    const/4 v4, 0x0

    goto/16 :goto_34

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_b7
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordExpirationDate()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    const/4 v4, 0x0

    goto/16 :goto_37

    .line 187
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_c2
    move-exception v1

    .line 188
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumFailedPasswordsForWipe()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    const/4 v4, 0x0

    goto/16 :goto_3a

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_cd
    move-exception v1

    .line 195
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumFailedPasswordsForDisable()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    const/4 v4, 0x0

    goto/16 :goto_3d

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_d8
    move-exception v2

    .line 202
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v5, "EcppMigrationManager"

    const-string v6, "copyMaximumTimeToLockPassword(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x0

    .line 207
    goto/16 :goto_40

    .line 204
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_e3
    move-exception v1

    .line 205
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyMaximumTimeToLockPassword()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    const/4 v4, 0x0

    goto/16 :goto_40

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_ee
    move-exception v2

    .line 212
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    const-string v5, "EcppMigrationManager"

    const-string v6, "copyPasswordExpirationTimeout(): Policy not yet set"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v4, 0x0

    .line 217
    goto/16 :goto_43

    .line 214
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_f9
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "EcppMigrationManager"

    const-string v6, "Exception in copyPasswordExpirationTimeout()"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    const/4 v4, 0x0

    goto/16 :goto_43
.end method
