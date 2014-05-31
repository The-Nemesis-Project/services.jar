.class public Lcom/android/server/enterprise/lso/LSOService;
.super Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;
.source "LSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final MAX_SUPPORTED_LAYER:I = 0x3

.field private static final NO_ADMIN_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LSO"

.field private static final singleAdmin:Z = true


# instance fields
.field private lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mItemData:[Landroid/app/enterprise/lso/LSOItemData;

.field private mOverlayAdminUid:I

.field private mWallpaperAdminUid:I

.field private screenDimesions:Landroid/graphics/Point;

.field private final storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/enterprise/lso/ILockscreenOverlay$Stub;-><init>()V

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v2, Lcom/android/server/enterprise/lso/LSOStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    .line 84
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 85
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getWallpaperAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 86
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 87
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getAdminPref()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 90
    :cond_2e
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    .line 91
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 92
    .local v1, "winMgr":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 94
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_71

    .line 95
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 99
    :goto_5b
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/app/enterprise/lso/LSOItemData;

    iput-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    .line 100
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_61
    const/4 v2, 0x3

    if-gt v0, v2, :cond_7a

    .line 101
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlay(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v3

    aput-object v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 97
    .end local v0    # "i":I
    :cond_71
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_5b

    .line 103
    .restart local v0    # "i":I
    :cond_7a
    return-void
.end method

.method private declared-synchronized deleteFiles(I)V
    .registers 8
    .param p1, "layer"    # I

    .prologue
    .line 453
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4e

    move-result-wide v1

    .line 455
    .local v1, "token":J
    if-eqz p1, :cond_27

    .line 456
    :try_start_7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_51
    .catchall {:try_start_7 .. :try_end_22} :catchall_49

    .line 464
    :cond_22
    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_4e

    .line 466
    :goto_25
    monitor-exit p0

    return-void

    .line 458
    :cond_27
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_28
    const/4 v3, 0x3

    if-gt v0, v3, :cond_22

    .line 459
    :try_start_2b
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/enterprise/lso/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/app/enterprise/lso/LSOUtils;->deleteRecursive(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_51
    .catchall {:try_start_2b .. :try_end_46} :catchall_49

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 464
    .end local v0    # "i":I
    :catchall_49
    move-exception v3

    :try_start_4a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    .line 453
    .end local v1    # "token":J
    :catchall_4e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 462
    .restart local v1    # "token":J
    :catch_51
    move-exception v3

    .line 464
    :try_start_52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4e

    goto :goto_25
.end method

.method private deleteWallpaperFiles()V
    .registers 4

    .prologue
    .line 444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 446
    .local v0, "token":J
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 447
    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v2}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return-void
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCKSCREEN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 391
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getServiceName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 78
    const-string v0, "lockscreen_overlay"

    return-object v0
.end method

.method private sendConfigChangeNotfication()V
    .registers 6

    .prologue
    .line 436
    const-string v3, "LSO"

    const-string v4, "sendConfigChangeNotfication:"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.sec.LSO_CONFIG_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 439
    .local v1, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 440
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    return-void
.end method


# virtual methods
.method public canConfigure(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 256
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "allowedCnt":I
    const/4 v2, 0x0

    .line 261
    .local v2, "featureCnt":I
    :try_start_21
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 262
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 265
    .local v4, "uid":I
    const/4 p2, -0x1

    .line 269
    add-int/lit8 v2, v2, 0x1

    .line 270
    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v5, v8, :cond_32

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v5, v4, :cond_34

    .line 271
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 275
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 276
    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v5, v8, :cond_3e

    iget v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_68

    if-ne v5, v4, :cond_40

    .line 277
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    .line 283
    .end local v4    # "uid":I
    :cond_40
    :goto_40
    if-lez v2, :cond_82

    if-ne v2, v0, :cond_82

    const/4 v3, 0x1

    .line 284
    .local v3, "result":Z
    :goto_45
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canConfigure("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return v3

    .line 279
    .end local v3    # "result":Z
    :catch_68
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LSO"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled exception in canConfigure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_82
    const/4 v3, 0x0

    goto :goto_45
.end method

.method public declared-synchronized copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 10
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "breadth"    # I

    .prologue
    .line 569
    monitor-enter p0

    :try_start_1
    const-string v1, "%s_%s%s_%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "destFile":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/app/enterprise/lso/LSOUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 569
    .end local v0    # "destFile":Ljava/lang/String;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z
    .registers 11
    .param p1, "adminUid"    # I
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I

    .prologue
    const/4 v4, 0x0

    .line 469
    monitor-enter p0

    :try_start_2
    const-string v5, "LSO"

    const-string v6, "copyFiles()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "retVal":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/enterprise/lso/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "layerDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_3d

    move-result-wide v2

    .line 475
    .local v2, "token":J
    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 477
    const-string v5, "/data/system/enterprise"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_76
    .catchall {:try_start_21 .. :try_end_29} :catchall_71

    move-result v5

    if-nez v5, :cond_31

    .line 494
    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    .line 502
    :goto_2f
    monitor-exit p0

    return v4

    .line 481
    :cond_31
    :try_start_31
    const-string v5, "/data/system/enterprise/lso"

    invoke-static {v5}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_76
    .catchall {:try_start_31 .. :try_end_36} :catchall_71

    move-result v5

    if-nez v5, :cond_40

    .line 494
    :try_start_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_2f

    .line 469
    .end local v0    # "layerDir":Ljava/lang/String;
    .end local v1    # "retVal":Z
    .end local v2    # "token":J
    :catchall_3d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 485
    .restart local v0    # "layerDir":Ljava/lang/String;
    .restart local v1    # "retVal":Z
    .restart local v2    # "token":J
    :cond_40
    :try_start_40
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_76
    .catchall {:try_start_40 .. :try_end_43} :catchall_71

    move-result v5

    if-nez v5, :cond_4a

    .line 494
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3d

    goto :goto_2f

    .line 489
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_65} :catch_76
    .catchall {:try_start_4a .. :try_end_65} :catchall_71

    move-result v1

    .line 490
    const/4 v1, 0x1

    .line 494
    :try_start_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 497
    :goto_6a
    if-nez v1, :cond_6f

    .line 499
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    :cond_6f
    move v4, v1

    .line 502
    goto :goto_2f

    .line 494
    :catchall_71
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 491
    :catch_76
    move-exception v4

    .line 494
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_3d

    goto :goto_6a
.end method

.method public declared-synchronized copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z
    .registers 17
    .param p1, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p2, "filePrefix"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 507
    monitor-enter p0

    if-nez p1, :cond_6

    .line 508
    const/4 v8, 0x1

    .line 565
    :cond_4
    :goto_4
    monitor-exit p0

    return v8

    .line 511
    :cond_6
    :try_start_6
    const-string v10, "LSO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copyFiles() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_af

    move-result-object v2

    .line 514
    .local v2, "breadth":Ljava/lang/Integer;
    const/4 v8, 0x1

    .line 516
    .local v8, "retVal":Z
    :try_start_24
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getType()B

    move-result v9

    .line 517
    .local v9, "type":I
    packed-switch v9, :pswitch_data_b2

    .line 550
    :cond_2b
    :goto_2b
    if-eqz v8, :cond_4

    .line 551
    invoke-virtual {p1}, Landroid/app/enterprise/lso/LSOItemData;->getAttrs()Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v1

    .line 552
    .local v1, "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    if-eqz v1, :cond_4

    const-string v10, "android:src"

    invoke-virtual {v1, v10}, Landroid/app/enterprise/lso/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 553
    const-string v10, "android:src"

    invoke-virtual {v1, v10}, Landroid/app/enterprise/lso/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "imagePath":Ljava/lang/String;
    if-nez v5, :cond_a8

    .line 556
    const/4 v8, 0x0

    goto :goto_4

    .line 519
    .end local v1    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v5    # "imagePath":Ljava/lang/String;
    :pswitch_4f
    move-object v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemContainer;

    move-object v6, v0

    .line 520
    .local v6, "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6e

    .line 521
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 523
    .restart local v5    # "imagePath":Ljava/lang/String;
    if-nez v5, :cond_6b

    .line 524
    const/4 v8, 0x0

    .line 525
    goto :goto_2b

    .line 527
    :cond_6b
    invoke-virtual {v6, v5}, Landroid/app/enterprise/lso/LSOItemContainer;->setBGImage(Ljava/lang/String;)V

    .line 530
    .end local v5    # "imagePath":Ljava/lang/String;
    :cond_6e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6f
    invoke-virtual {v6}, Landroid/app/enterprise/lso/LSOItemContainer;->getNumItems()I

    move-result v10

    if-ge v4, v10, :cond_2b

    if-eqz v8, :cond_2b

    .line 531
    invoke-virtual {v6, v4}, Landroid/app/enterprise/lso/LSOItemContainer;->getItem(I)Landroid/app/enterprise/lso/LSOItemData;

    move-result-object v10

    add-int/lit8 v11, p3, 0x1

    invoke-virtual {p0, v10, p2, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(Landroid/app/enterprise/lso/LSOItemData;Ljava/lang/String;I)Z

    move-result v8

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 537
    .end local v4    # "i":I
    .end local v6    # "itemContainer":Landroid/app/enterprise/lso/LSOItemContainer;
    :pswitch_84
    move-object v0, p1

    check-cast v0, Landroid/app/enterprise/lso/LSOItemImage;

    move-object v7, v0

    .line 538
    .local v7, "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2b

    .line 539
    invoke-virtual {v7}, Landroid/app/enterprise/lso/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v0, p3

    invoke-virtual {p0, v10, p2, v0, v11}, Lcom/android/server/enterprise/lso/LSOService;->copyFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 541
    .restart local v5    # "imagePath":Ljava/lang/String;
    if-nez v5, :cond_a0

    .line 542
    const/4 v8, 0x0

    .line 543
    goto :goto_2b

    .line 545
    :cond_a0
    invoke-virtual {v7, v5}, Landroid/app/enterprise/lso/LSOItemImage;->setImagePath(Ljava/lang/String;)V

    goto :goto_2b

    .line 562
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v7    # "itemImage":Landroid/app/enterprise/lso/LSOItemImage;
    .end local v9    # "type":I
    :catch_a4
    move-exception v3

    .line 563
    .local v3, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 558
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .restart local v5    # "imagePath":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_a8
    const-string v10, "android:src"

    invoke-virtual {p1, v10, v5}, Landroid/app/enterprise/lso/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_ad} :catch_a4
    .catchall {:try_start_24 .. :try_end_ad} :catchall_af

    goto/16 :goto_4

    .line 507
    .end local v1    # "attrSet":Landroid/app/enterprise/lso/LSOAttributeSet;
    .end local v2    # "breadth":Ljava/lang/Integer;
    .end local v5    # "imagePath":Ljava/lang/String;
    .end local v8    # "retVal":Z
    .end local v9    # "type":I
    :catchall_af
    move-exception v10

    monitor-exit p0

    throw v10

    .line 517
    :pswitch_data_b2
    .packed-switch 0x3
        :pswitch_84
        :pswitch_4f
    .end packed-switch
.end method

.method public getData(Landroid/app/enterprise/ContextInfo;I)Landroid/app/enterprise/lso/LSOItemData;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "LSO"

    const-string v1, "getData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    if-lt p2, v0, :cond_d

    const/4 v0, 0x3

    if-le p2, v0, :cond_15

    .line 155
    :cond_d
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getPreferences(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/lso/LSOAttributeSet;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    return-object v0
.end method

.method public isConfigured(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 223
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isConfigured("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 p2, 0x0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "featureCnt":I
    const/4 v2, 0x0

    .line 231
    .local v2, "resultCnt":I
    if-eqz p2, :cond_2d

    .line 238
    :cond_26
    :goto_26
    if-eqz p2, :cond_36

    .line 246
    :cond_28
    :goto_28
    if-nez p2, :cond_41

    .line 247
    if-lez v2, :cond_3f

    .line 252
    .local v1, "result":Z
    :goto_2c
    return v1

    .line 233
    .end local v1    # "result":Z
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    .line 234
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-eq v4, v7, :cond_26

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 240
    :cond_36
    add-int/lit8 v0, v0, 0x1

    .line 241
    iget v4, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-eq v4, v7, :cond_28

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3f
    move v1, v3

    .line 247
    goto :goto_2c

    .line 249
    :cond_41
    if-lez v0, :cond_46

    if-ne v0, v2, :cond_46

    .restart local v1    # "result":Z
    :goto_45
    goto :goto_2c

    .end local v1    # "result":Z
    :cond_46
    move v1, v3

    goto :goto_45
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 409
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 433
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 413
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne p1, v1, :cond_1e

    .line 414
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 415
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 416
    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 417
    iput-object v4, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 418
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_14
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    .line 419
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v4, v1, v0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 423
    .end local v0    # "i":I
    :cond_1e
    iget v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne p1, v1, :cond_2c

    .line 424
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 425
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 426
    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 429
    :cond_2c
    return-void
.end method

.method public resetData(Landroid/app/enterprise/ContextInfo;I)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 163
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 167
    if-ltz p2, :cond_29

    if-le p2, v6, :cond_31

    .line 168
    :cond_29
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid layer. Layer must be 0...3"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_31
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v2

    if-nez v2, :cond_40

    .line 173
    const-string v2, "LSO"

    const-string v3, "Not allowed to reset Overlay"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3f
    :goto_3f
    return-void

    .line 177
    :cond_40
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v2, v3, :cond_64

    .line 178
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    .line 179
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetOverlayData(I)V

    .line 180
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 182
    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5d

    .line 183
    iput-object v5, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 186
    :cond_5d
    if-eqz p2, :cond_6a

    .line 187
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v5, v2, p2

    .line 194
    :cond_63
    const/4 v1, 0x1

    .line 197
    :cond_64
    if-eqz v1, :cond_3f

    .line 198
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    goto :goto_3f

    .line 189
    :cond_6a
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6b
    if-gt v0, v6, :cond_63

    .line 190
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object v5, v2, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b
.end method

.method public resetWallpaper(Landroid/app/enterprise/ContextInfo;)V
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    const-string v1, "LSO"

    const-string v2, "resetWallpaper()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "sendNotification":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 206
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 207
    const-string v1, "LSO"

    const-string v2, "Not allowed to reset Wallpaper"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1a
    :goto_1a
    return-void

    .line 211
    :cond_1b
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    if-ne v1, v2, :cond_2d

    .line 212
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 213
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    .line 214
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 215
    const/4 v0, 0x1

    .line 218
    :cond_2d
    if-eqz v0, :cond_1a

    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    goto :goto_1a
.end method

.method public declared-synchronized setData(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOItemData;I)I
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "lsoData"    # Landroid/app/enterprise/lso/LSOItemData;
    .param p3, "layer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x4

    .line 106
    monitor-enter p0

    :try_start_5
    const-string v0, "LSO"

    const-string v1, "setData()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 109
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 111
    .local v8, "uid":I
    if-lt p3, v2, :cond_16

    if-le p3, v3, :cond_21

    .line 112
    :cond_16
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid layer. Layer must be 1...3"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1e

    .line 106
    .end local v8    # "uid":I
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    .restart local v8    # "uid":I
    :cond_21
    const/4 v0, 0x1

    :try_start_22
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 117
    const-string v0, "LSO"

    const-string v1, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_1e

    move v0, v9

    .line 149
    :goto_30
    monitor-exit p0

    return v0

    .line 121
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 125
    .local v7, "telMgr":Landroid/telephony/TelephonyManager;
    if-ne p3, v3, :cond_4f

    if-eqz v7, :cond_46

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 126
    :cond_46
    const-string v0, "LSO"

    const-string v1, "Telephony is not supported"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v0, -0x3

    goto :goto_30

    .line 130
    :cond_4f
    invoke-virtual {p0, v8, p2, p3}, Lcom/android/server/enterprise/lso/LSOService;->copyFiles(ILandroid/app/enterprise/lso/LSOItemData;I)Z

    move-result v0

    if-nez v0, :cond_57

    move v0, v10

    .line 131
    goto :goto_30

    .line 134
    :cond_57
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v1, v8

    iget-object v5, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setOverlayData(JLandroid/app/enterprise/lso/LSOItemData;ILandroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v6

    .line 135
    .local v6, "result":Z
    if-nez v6, :cond_7d

    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v0}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->getOverlayAdminUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 137
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 138
    iget v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v0, v9, :cond_78

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 141
    :cond_78
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/lso/LSOService;->deleteFiles(I)V

    move v0, v10

    .line 142
    goto :goto_30

    .line 145
    :cond_7d
    iput v8, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    aput-object p2, v0, p3

    .line 148
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V
    :try_end_86
    .catchall {:try_start_32 .. :try_end_86} :catchall_1e

    .line 149
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public setPreferences(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/lso/LSOAttributeSet;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pref"    # Landroid/app/enterprise/lso/LSOAttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x6

    .line 351
    const/4 v0, 0x1

    .line 353
    .local v0, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 355
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    if-ne v3, v2, :cond_c

    .line 377
    :cond_b
    :goto_b
    return v1

    .line 360
    :cond_c
    iget v3, p0, Lcom/android/server/enterprise/lso/LSOService;->mOverlayAdminUid:I

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v3, v4, :cond_1b

    .line 361
    const-string v1, "LSO"

    const-string v3, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 362
    goto :goto_b

    .line 365
    :cond_1b
    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService;->mItemData:[Landroid/app/enterprise/lso/LSOItemData;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_b

    .line 371
    :cond_29
    iget-object v1, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->updateAdminPref(Landroid/app/enterprise/lso/LSOAttributeSet;)Z

    move-result v0

    .line 373
    if-eqz v0, :cond_33

    .line 374
    iput-object p2, p0, Lcom/android/server/enterprise/lso/LSOService;->lsoPref:Landroid/app/enterprise/lso/LSOAttributeSet;

    .line 377
    :cond_33
    if-eqz v0, :cond_37

    const/4 v1, 0x0

    goto :goto_b

    :cond_37
    const/4 v1, -0x4

    goto :goto_b
.end method

.method public setWallpaper(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "imageFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v7, -0x4

    .line 289
    const-string v8, "LSO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWallpaper("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/lso/LSOService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 291
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 292
    .local v5, "uid":I
    const/4 v8, 0x2

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/lso/LSOService;->canConfigure(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v8

    if-nez v8, :cond_35

    .line 293
    const-string v7, "LSO"

    const-string v8, "Lockscreen is configured by another admin. Overwrite not allowed."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_34
    return v6

    .line 297
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 298
    .local v3, "token":J
    const/4 v0, 0x0

    .line 300
    .local v0, "bCopied":Z
    :try_start_3a
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/data/com.sec.android.gallery3d"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_53

    .line 301
    const-string v8, "LSO"

    const-string v9, "/data/data/com.sec.android.gallery3d does not exists"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4e} :catch_9d
    .catchall {:try_start_3a .. :try_end_4e} :catchall_a0

    .line 302
    const/4 v6, -0x3

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    .line 305
    :cond_53
    :try_start_53
    const-string v8, "/data/system/enterprise"

    invoke-static {v8}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_9d
    .catchall {:try_start_53 .. :try_end_58} :catchall_a0

    move-result v8

    if-nez v8, :cond_60

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    .line 306
    goto :goto_34

    .line 309
    :cond_60
    :try_start_60
    const-string v8, "/data/system/enterprise/lso"

    invoke-static {v8}, Landroid/app/enterprise/lso/LSOUtils;->mkDir(Ljava/lang/String;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_9d
    .catchall {:try_start_60 .. :try_end_65} :catchall_a0

    move-result v8

    if-nez v8, :cond_6d

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    .line 310
    goto :goto_34

    .line 313
    :cond_6d
    :try_start_6d
    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    invoke-virtual {v8}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->resetWallpaperData()V

    .line 317
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iget-object v10, p0, Lcom/android/server/enterprise/lso/LSOService;->screenDimesions:Landroid/graphics/Point;

    invoke-static {p2, v8, v9, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_8f

    .line 320
    const-string v8, "LSO"

    const-string v9, "Create Ripple image"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v8, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v10, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-static {v8, v9, v10}, Landroid/app/enterprise/lso/LSOUtils;->createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8e} :catch_9d
    .catchall {:try_start_6d .. :try_end_8e} :catchall_a0

    move-result v0

    .line 329
    :cond_8f
    :goto_8f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    if-nez v0, :cond_a5

    .line 333
    const-string v6, "LSO"

    const-string v8, "Error in copying file"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 334
    goto :goto_34

    .line 326
    :catch_9d
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_8f

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a0
    move-exception v6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 337
    :cond_a5
    iget-object v8, p0, Lcom/android/server/enterprise/lso/LSOService;->storageProvider:Lcom/android/server/enterprise/lso/LSOStorageProvider;

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10, p2}, Lcom/android/server/enterprise/lso/LSOStorageProvider;->setWallpaperData(JLjava/lang/String;)Z

    move-result v2

    .line 338
    .local v2, "result":Z
    if-nez v2, :cond_b5

    .line 339
    iput v6, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 340
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->deleteWallpaperFiles()V

    move v6, v7

    .line 341
    goto :goto_34

    .line 344
    :cond_b5
    iput v5, p0, Lcom/android/server/enterprise/lso/LSOService;->mWallpaperAdminUid:I

    .line 346
    invoke-direct {p0}, Lcom/android/server/enterprise/lso/LSOService;->sendConfigChangeNotfication()V

    .line 347
    const/4 v6, 0x0

    goto/16 :goto_34
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 405
    return-void
.end method
