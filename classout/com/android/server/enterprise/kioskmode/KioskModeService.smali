.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_ASSET_PATH:Ljava/lang/String; = "/system/preloadedkiosk/kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TERMINATE_KIOSK_ACTION:Ljava/lang/String; = "android.intent.action.enterprise.TERMINATE_KIOSK"

.field private static mLock:Ljava/lang/Object;

.field private static volatile packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static volatile terminateIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBusy:Z

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private preAdminRemoval_NavigationBar:Z

.field private preAdminRemoval_StatusBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 138
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;-><init>()V

    .line 110
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 123
    iput-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    .line 148
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    .line 152
    iput-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z

    .line 155
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    .line 156
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 157
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 160
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 162
    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 164
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_58

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    .line 167
    :cond_58
    return-void
.end method

.method private _disableKioskMode(II)V
    .registers 9
    .param p1, "adminUid"    # I
    .param p2, "operation"    # I

    .prologue
    .line 463
    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 464
    :try_start_3
    const-string v2, "KioskModeService"

    const-string v4, "_disableKioskMode"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 469
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v2

    if-eq v2, p1, :cond_33

    .line 471
    const-string v2, "KioskModeService"

    const-string v4, "Kiosk Mode enabled by different admin"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v2, -0x2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 473
    monitor-exit v3

    .line 508
    :goto_22
    return-void

    .line 476
    :cond_23
    const-string v2, "KioskModeService"

    const-string v4, "Kiosk Mode already disabled"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 478
    monitor-exit v3

    goto :goto_22

    .line 507
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2

    .line 482
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterTerminationReceiver()V

    .line 483
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->unregisterPackageRemoveReceiver()V

    .line 485
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "kioskModeKioskPackage"

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "kioskPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string v5, "kioskModeDefaultPackage"

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "newHomePackage":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(ILjava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks()Z

    .line 503
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity()V

    .line 506
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 507
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_33 .. :try_end_64} :catchall_30

    goto :goto_22
.end method

.method private _enableKioskMode(ILjava/lang/String;)V
    .registers 15
    .param p1, "adminUid"    # I
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 384
    sget-object v10, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 385
    :try_start_3
    const-string v9, "KioskModeService"

    const-string v11, "_enableKioskMode"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 390
    const-string v9, "KioskModeService"

    const-string v11, "Kiosk Mode already enabled"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, p1, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 392
    monitor-exit v10

    .line 453
    :goto_1d
    return-void

    .line 398
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "currentHomePackage":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initKioskMode(ILjava/lang/String;)I

    move-result v6

    .line 402
    .local v6, "result":I
    if-eqz v6, :cond_38

    .line 403
    const-string v9, "KioskModeService"

    const-string v11, "Kiosk Mode App not validated"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 405
    monitor-exit v10

    goto :goto_1d

    .line 452
    .end local v1    # "currentHomePackage":Ljava/lang/String;
    .end local v6    # "result":I
    :catchall_35
    move-exception v9

    monitor-exit v10
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v9

    .line 409
    .restart local v1    # "currentHomePackage":Ljava/lang/String;
    .restart local v6    # "result":I
    :cond_38
    :try_start_38
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_50

    .line 410
    const-string v9, "KioskModeService"

    const-string v11, "Cannot find HOME activity"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(ILjava/lang/String;)V

    .line 412
    const/4 v9, 0x1

    const/16 v11, -0x7d0

    invoke-direct {p0, p1, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 413
    monitor-exit v10

    goto :goto_1d

    .line 417
    :cond_50
    const/4 v9, 0x1

    invoke-direct {p0, p1, v9, p2, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver()V

    .line 425
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver()V

    .line 430
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 431
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 432
    .local v2, "flag":Z
    const/16 v7, 0x64

    .local v7, "timeoutCount":I
    move v8, v7

    .line 433
    .end local v7    # "timeoutCount":I
    .local v8, "timeoutCount":I
    :goto_6b
    if-nez v2, :cond_9d

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "timeoutCount":I
    .restart local v7    # "timeoutCount":I
    if-lez v8, :cond_9e

    .line 434
    const/16 v9, 0xa

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    .line 435
    .local v5, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v5, :cond_98

    .line 436
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_98

    .line 437
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 440
    const/4 v2, 0x1

    .end local v3    # "i":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_98
    move v8, v7

    .line 445
    .end local v7    # "timeoutCount":I
    .restart local v8    # "timeoutCount":I
    goto :goto_6b

    .line 436
    .end local v8    # "timeoutCount":I
    .restart local v3    # "i":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v7    # "timeoutCount":I
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .end local v3    # "i":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v7    # "timeoutCount":I
    .restart local v8    # "timeoutCount":I
    :cond_9d
    move v7, v8

    .line 448
    .end local v8    # "timeoutCount":I
    .restart local v7    # "timeoutCount":I
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks()Z

    .line 451
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1, v9, v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 452
    monitor-exit v10
    :try_end_a7
    .catchall {:try_start_38 .. :try_end_a7} :catchall_35

    goto/16 :goto_1d
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1033
    const/4 v1, 0x1

    .line 1034
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1036
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1037
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1040
    :cond_12
    return v1
.end method

.method private applyHideSystemBarPolicy()V
    .registers 5

    .prologue
    .line 983
    :try_start_0
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 985
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->applyEDMPolicy()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 989
    .end local v1    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_d
    return-void

    .line 986
    :catch_e
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "applyEDMPolicy failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private broadcastKioskResult(III)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "operation"    # I
    .param p3, "result"    # I

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "adminPackage":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 658
    :goto_6
    return-void

    .line 634
    :cond_7
    packed-switch p2, :pswitch_data_4c

    goto :goto_6

    .line 636
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 643
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_22
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 650
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 634
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_22
        :pswitch_39
    .end packed-switch
.end method

.method private cleanUpKioskMode(ILjava/lang/String;)V
    .registers 6
    .param p1, "adminUid"    # I
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 732
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 735
    const-string v0, "com.sec.android.kiosk"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 737
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.sec.android.kiosk"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 740
    :cond_1a
    return-void
.end method

.method private copyAssets(Ljava/io/File;)Z
    .registers 14
    .param p1, "apkPath"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 747
    const/4 v3, 0x0

    .line 748
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 750
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_4
    iget-object v9, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 751
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v9, "/system/preloadedkiosk/kioskdefault.apk"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 752
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_70

    .line 753
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_17
    new-array v1, v9, [B

    .line 755
    .local v1, "buffer":[B
    :goto_19
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-eq v7, v10, :cond_49

    .line 756
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_24

    goto :goto_19

    .line 761
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    :catch_24
    move-exception v2

    move-object v5, v6

    .line 762
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :goto_26
    const-string v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    if-eqz v3, :cond_43

    .line 765
    :try_start_40
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_5e

    .line 770
    :cond_43
    :goto_43
    if-eqz v5, :cond_48

    .line 771
    :try_start_45
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_67

    .line 779
    .end local v2    # "e":Ljava/io/IOException;
    :cond_48
    :goto_48
    return v8

    .line 758
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 759
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 760
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_24

    .line 778
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 779
    const/4 v8, 0x1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_48

    .line 766
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_5e
    move-exception v4

    .line 767
    .local v4, "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 772
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_67
    move-exception v4

    .line 773
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 761
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_70
    move-exception v2

    goto :goto_26
.end method

.method private enforceKioskModePermission()I
    .registers 3

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private forceTerminateKiosk()V
    .registers 3

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    .line 518
    .local v0, "kioskAdminUid":I
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(II)V

    .line 519
    return-void
.end method

.method private getActiveKioskAdmin()I
    .registers 5

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "blockedHwKeyList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1072
    .local v4, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1074
    .local v3, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1075
    .local v2, "list":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "array":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    .line 1078
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "list":Ljava/lang/String;
    :cond_2d
    return-object v3
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .registers 12
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string v9, "blockedHwKeyList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1084
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1085
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_24

    .line 1086
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1a
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    .line 1088
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1087
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1091
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_24
    return-object v3
.end method

.method private getDefaultHomeScreen()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 788
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 789
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 793
    .local v0, "cName":Landroid/content/ComponentName;
    if-nez v0, :cond_1b

    .line 804
    :cond_1a
    :goto_1a
    return-object v2

    .line 796
    :cond_1b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 804
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 207
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 210
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 881
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 888
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3e

    .line 889
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 890
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 891
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 894
    .end local v3    # "pkgName":Ljava/lang/String;
    :goto_3a
    return-object v4

    .line 888
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 894
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_3e
    const/4 v4, 0x0

    goto :goto_3a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initKioskMode(ILjava/lang/String;)I
    .registers 10
    .param p1, "adminUid"    # I
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v2, -0x7d0

    .line 687
    const-string v4, "com.sec.android.kiosk"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 692
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v5, "/system/preloadedkiosk/kioskdefault.apk"

    invoke-virtual {v4, p1, v5, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplicationBySystem(ILjava/lang/String;Z)Z

    move-result v1

    .line 696
    .local v1, "isAppInstalled":Z
    if-nez v1, :cond_2f

    .line 719
    .end local v1    # "isAppInstalled":Z
    :cond_16
    :goto_16
    return v2

    .line 701
    :cond_17
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 703
    :cond_27
    const/4 v2, -0x3

    goto :goto_16

    .line 706
    :cond_29
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "homeActivity":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 713
    .end local v0    # "homeActivity":Ljava/lang/String;
    :cond_2f
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v2, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 716
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v2, p1, p2, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    move v2, v3

    .line 719
    goto :goto_16
.end method

.method private initializeKeyCodeLists()V
    .registers 8

    .prologue
    .line 1131
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    .line 1133
    .local v2, "maxKeycode":I
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [I

    .line 1134
    .local v1, "keyCodes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_14

    .line 1135
    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1137
    :cond_14
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .line 1138
    .local v3, "ret":[Z
    if-eqz v3, :cond_34

    .line 1139
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    .line 1140
    const/4 v0, 0x0

    :goto_1e
    :try_start_1e
    array-length v4, v3

    if-ge v0, v4, :cond_33

    .line 1141
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_30

    .line 1142
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1145
    :cond_33
    monitor-exit v5

    .line 1147
    :cond_34
    return-void

    .line 1145
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    throw v4
.end method

.method private isHardwareKeyValid(I)Z
    .registers 4
    .param p1, "hwKeyId"    # I

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private launchHomeActivity()V
    .registers 3

    .prologue
    .line 916
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 919
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 920
    return-void
.end method

.method private registerPackageRemoveReceiver()V
    .registers 7

    .prologue
    .line 528
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_26

    .line 529
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 533
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 551
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 557
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_26
    :goto_26
    return-void

    .line 554
    :catch_27
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private registerTerminationReceiver()V
    .registers 7

    .prologue
    .line 576
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1d

    .line 577
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    sput-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 598
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 604
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1d
    :goto_1d
    return-void

    .line 601
    :catch_1e
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KioskModeService"

    const-string v3, "Cannot register terminateIntentReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1044
    const/4 v1, 0x1

    .line 1045
    .local v1, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1046
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1047
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1048
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1050
    :cond_12
    return v1
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .registers 11
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1054
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1055
    .local v1, "ret":Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1056
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1066
    :goto_12
    return v1

    .line 1059
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1061
    .local v2, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1063
    .end local v2    # "s":Ljava/lang/String;
    :cond_3f
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_12
.end method

.method private setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18
    .param p1, "oldHomePackage"    # Ljava/lang/String;
    .param p2, "newHomePackage"    # Ljava/lang/String;

    .prologue
    .line 817
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v8, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v13, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const/4 v5, 0x0

    .line 825
    .local v5, "flag":Z
    if-eqz p1, :cond_30

    .line 826
    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v9

    .line 828
    .local v9, "isAppInstalled":Z
    const-string v13, "com.sec.android.kiosk"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    if-eqz v9, :cond_29

    .line 829
    const/4 v5, 0x1

    .line 831
    :cond_29
    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 835
    .end local v9    # "isAppInstalled":Z
    :cond_30
    if-eqz p2, :cond_9e

    .line 836
    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x10000

    invoke-virtual {v13, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 839
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_68

    .line 842
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    .line 846
    .local v12, "size":I
    :goto_42
    new-array v3, v12, [Landroid/content/ComponentName;

    .line 847
    .local v3, "components":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_45
    if-ge v7, v12, :cond_75

    .line 848
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 849
    .local v11, "pkgName":Ljava/lang/String;
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 850
    .local v1, "activity":Ljava/lang/String;
    if-eqz v5, :cond_6d

    const-string v13, "com.sec.android.kiosk"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6d

    .line 847
    :goto_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 844
    .end local v1    # "activity":Ljava/lang/String;
    .end local v3    # "components":[Landroid/content/ComponentName;
    .end local v7    # "i":I
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "size":I
    :cond_68
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    .restart local v12    # "size":I
    goto :goto_42

    .line 853
    .restart local v1    # "activity":Ljava/lang/String;
    .restart local v3    # "components":[Landroid/content/ComponentName;
    .restart local v7    # "i":I
    .restart local v11    # "pkgName":Ljava/lang/String;
    :cond_6d
    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v3, v7

    goto :goto_65

    .line 856
    .end local v1    # "activity":Ljava/lang/String;
    .end local v11    # "pkgName":Ljava/lang/String;
    :cond_75
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getHomeActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 857
    .local v6, "homeActivity":Ljava/lang/String;
    if-nez v6, :cond_7f

    .line 858
    const/4 v13, 0x0

    .line 872
    .end local v3    # "components":[Landroid/content/ComponentName;
    .end local v6    # "homeActivity":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "size":I
    :goto_7e
    return v13

    .line 862
    .restart local v3    # "components":[Landroid/content/ComponentName;
    .restart local v6    # "homeActivity":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "size":I
    :cond_7f
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 865
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 866
    const-string v13, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 868
    iget-object v13, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x100000

    invoke-virtual {v13, v4, v14, v3, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 872
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "components":[Landroid/content/ComponentName;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "homeActivity":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "size":I
    :cond_9e
    const/4 v13, 0x1

    goto :goto_7e
.end method

.method private unregisterPackageRemoveReceiver()V
    .registers 3

    .prologue
    .line 563
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 564
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 565
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->packageRemoveIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 567
    :cond_e
    return-void
.end method

.method private unregisterTerminationReceiver()V
    .registers 3

    .prologue
    .line 610
    sget-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 611
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 612
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->terminateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 614
    :cond_e
    return-void
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "enabled"    # Z
    .param p3, "kioskPackage"    # Ljava/lang/String;
    .param p4, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 905
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeDefaultPackage"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string v2, "kioskModeKioskPackage"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 909
    return-void
.end method


# virtual methods
.method public allowHardwareKeys([IZ)[I
    .registers 12
    .param p1, "hwKeyId"    # [I
    .param p2, "allow"    # Z

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 1009
    .local v0, "callingUid":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v7, "successList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v1, "hwKeyIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_f
    array-length v8, p1

    if-ge v3, v8, :cond_1e

    .line 1012
    aget v8, p1, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1014
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1015
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    .line 1016
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1017
    .local v5, "keycode":I
    if-nez p2, :cond_46

    .line 1018
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->addToBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1019
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1021
    :cond_46
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->removeFromBlocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1022
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1025
    .end local v5    # "keycode":I
    :cond_58
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 1026
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v6, v8, [I

    .line 1027
    .local v6, "ret":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    array-length v8, v6

    if-ge v2, v8, :cond_76

    .line 1028
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v2

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1029
    :cond_76
    return-object v6
.end method

.method public allowMultiWindowMode(Z)Z
    .registers 9
    .param p1, "allow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1306
    const/4 v1, 0x1

    .line 1307
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 1309
    .local v0, "callingUid":I
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    if-nez p1, :cond_20

    .line 1310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1311
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1313
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1316
    .end local v2    # "token":J
    :cond_20
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "multiWindowEnabled"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public allowTaskManager(Z)Z
    .registers 11
    .param p1, "allow"    # Z

    .prologue
    .line 1150
    const/4 v3, 0x1

    .line 1151
    .local v3, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .line 1152
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1153
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1154
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_25

    .line 1155
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1156
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1157
    sget-object v6, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1159
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_25
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    const-string v8, "taskManagerEnabled"

    invoke-virtual {v6, v1, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1162
    return v3
.end method

.method public disableKioskMode()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 324
    const-string v3, "KioskModeService"

    const-string v4, "disableKioskMode"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .line 328
    .local v1, "callingUid":I
    iget-boolean v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z

    if-eqz v3, :cond_15

    .line 329
    const/4 v3, -0x4

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 338
    :goto_14
    return-void

    .line 333
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 334
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "adminuid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 337
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14
.end method

.method public enableKioskMode(Ljava/lang/String;)V
    .registers 8
    .param p1, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 303
    const-string v3, "KioskModeService"

    const-string v4, "enableKioskMode"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v1

    .line 307
    .local v1, "callingUid":I
    iget-boolean v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mBusy:Z

    if-eqz v3, :cond_15

    .line 308
    const/4 v3, -0x4

    invoke-direct {p0, v1, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 318
    :goto_14
    return-void

    .line 312
    :cond_15
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 313
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v3, "adminuid"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 317
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14
.end method

.method public getAllBlockedHardwareKeys()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    const/4 v2, 0x0

    .line 1100
    .local v2, "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1101
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getAllBlockedList()Ljava/util/Set;

    move-result-object v2

    .line 1102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v1, "blockedListInt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_34

    .line 1105
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1106
    .restart local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1107
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1109
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    .line 1110
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1113
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "next":Ljava/lang/String;
    :cond_34
    return-object v1
.end method

.method public getHardwareKeyList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    .line 1002
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    .line 1003
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1004
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getKioskHomePackage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 368
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    .line 369
    .local v0, "kioskAdmin":I
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "KIOSKMODE"

    const-string v3, "kioskModeKioskPackage"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .end local v0    # "kioskAdmin":I
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public hideNavigationBar(Z)Z
    .registers 13
    .param p1, "hide"    # Z

    .prologue
    .line 1256
    const/4 v5, 0x1

    .line 1257
    .local v5, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 1258
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1261
    .local v4, "oldVal":I
    :try_start_6
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string v10, "systemBarEnabled"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_f} :catch_38

    move-result v4

    .line 1267
    :goto_10
    const/4 v8, 0x1

    if-ne p1, v8, :cond_34

    or-int/lit8 v4, v4, 0x2

    move v2, v4

    .line 1270
    .end local v4    # "oldVal":I
    .local v2, "newVal":I
    .local v2, "oldVal":I
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result v3

    .line 1271
    .local v3, "oldState":Z
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string v10, "systemBarEnabled"

    invoke-virtual {v8, v0, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1274
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result v1

    .line 1275
    .local v1, "newState":Z
    if-eq v1, v3, :cond_33

    .line 1276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1277
    .local v6, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1278
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1281
    .end local v6    # "token":J
    :cond_33
    return v5

    .line 1267
    .end local v1    # "newState":Z
    .end local v2    # "oldVal":I
    .end local v3    # "oldState":Z
    .restart local v4    # "oldVal":I
    :cond_34
    and-int/lit8 v4, v4, -0x3

    move v2, v4

    .end local v4    # "oldVal":I
    .local v2, "oldVal":I
    goto :goto_16

    .line 1263
    .end local v2    # "oldVal":I
    .restart local v4    # "oldVal":I
    :catch_38
    move-exception v8

    goto :goto_10
.end method

.method public hideStatusBar(Z)Z
    .registers 13
    .param p1, "hide"    # Z

    .prologue
    .line 1202
    const/4 v5, 0x1

    .line 1203
    .local v5, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 1204
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1207
    .local v4, "oldVal":I
    :try_start_6
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string v10, "systemBarEnabled"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_f} :catch_38

    move-result v4

    .line 1213
    :goto_10
    const/4 v8, 0x1

    if-ne p1, v8, :cond_34

    or-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 1216
    .end local v4    # "oldVal":I
    .local v2, "newVal":I
    .local v2, "oldVal":I
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHidden()Z

    move-result v3

    .line 1217
    .local v3, "oldState":Z
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string v10, "systemBarEnabled"

    invoke-virtual {v8, v0, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHidden()Z

    move-result v1

    .line 1221
    .local v1, "newState":Z
    if-eq v1, v3, :cond_33

    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1223
    .local v6, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 1224
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    .end local v6    # "token":J
    :cond_33
    return v5

    .line 1213
    .end local v1    # "newState":Z
    .end local v2    # "oldVal":I
    .end local v3    # "oldState":Z
    .restart local v4    # "oldVal":I
    :cond_34
    and-int/lit8 v4, v4, -0x2

    move v2, v4

    .end local v4    # "oldVal":I
    .local v2, "oldVal":I
    goto :goto_16

    .line 1209
    .end local v2    # "oldVal":I
    .restart local v4    # "oldVal":I
    :catch_38
    move-exception v8

    goto :goto_10
.end method

.method public hideSystemBar(Z)Z
    .registers 13
    .param p1, "hide"    # Z

    .prologue
    .line 929
    const/4 v5, 0x1

    .line 930
    .local v5, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 931
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 934
    .local v4, "oldVal":I
    :try_start_6
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string v10, "systemBarEnabled"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_6 .. :try_end_f} :catch_38

    move-result v4

    .line 940
    :goto_10
    const/4 v8, 0x1

    if-ne p1, v8, :cond_34

    or-int/lit8 v4, v4, 0x3

    move v2, v4

    .line 943
    .end local v4    # "oldVal":I
    .local v2, "newVal":I
    .local v2, "oldVal":I
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v3

    .line 944
    .local v3, "oldState":Z
    iget-object v8, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    const-string v10, "systemBarEnabled"

    invoke-virtual {v8, v0, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 947
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isSystemBarHidden()Z

    move-result v1

    .line 948
    .local v1, "newState":Z
    if-eq v1, v3, :cond_33

    .line 949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 950
    .local v6, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 951
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 953
    .end local v6    # "token":J
    :cond_33
    return v5

    .line 940
    .end local v1    # "newState":Z
    .end local v2    # "oldVal":I
    .end local v3    # "oldState":Z
    .restart local v4    # "oldVal":I
    :cond_34
    and-int/lit8 v4, v4, -0x4

    move v2, v4

    .end local v4    # "oldVal":I
    .local v2, "oldVal":I
    goto :goto_16

    .line 936
    .end local v2    # "oldVal":I
    .restart local v4    # "oldVal":I
    :catch_38
    move-exception v8

    goto :goto_10
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .registers 8
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 1117
    const/4 v0, 0x1

    .line 1118
    .local v0, "allowed":Z
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1119
    const/4 v0, 0x0

    .line 1121
    :cond_1a
    if-eqz p2, :cond_38

    if-nez v0, :cond_38

    .line 1122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v4, 0x104026f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1127
    .end local v1    # "i":Landroid/content/Intent;
    :cond_38
    return v0
.end method

.method public isKioskModeEnabled()Z
    .registers 8

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "kioskModeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 351
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 352
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v4, v2, :cond_f

    .line 353
    move v1, v2

    .line 357
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public isMultiWindowModeAllowed(Z)Z
    .registers 10
    .param p1, "showMsg"    # Z

    .prologue
    .line 1321
    const/4 v1, 0x1

    .line 1322
    .local v1, "allowed":Z
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "multiWindowEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1324
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1325
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1326
    const/4 v1, 0x0

    goto :goto_f

    .line 1329
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_23
    if-eqz p1, :cond_41

    if-nez v1, :cond_41

    .line 1330
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v7, 0x1040298

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1335
    .end local v2    # "i":Landroid/content/Intent;
    :cond_41
    return v1
.end method

.method public isNavigationBarHidden()Z
    .registers 8

    .prologue
    .line 1290
    const/4 v1, 0x0

    .line 1292
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1295
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1296
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_f

    .line 1297
    const/4 v1, 0x1

    .line 1301
    .end local v2    # "value":I
    :cond_24
    const-string v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNavigationBarHidden() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    return v1
.end method

.method public isStatusBarHidden()Z
    .registers 8

    .prologue
    .line 1235
    const/4 v1, 0x0

    .line 1237
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1240
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1241
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_f

    .line 1242
    const/4 v1, 0x1

    .line 1246
    .end local v2    # "value":I
    :cond_24
    const-string v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isStatusBarHidden() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return v1
.end method

.method public isSystemBarHidden()Z
    .registers 8

    .prologue
    .line 964
    const/4 v1, 0x0

    .line 966
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 969
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 970
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_f

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_f

    .line 972
    const/4 v1, 0x1

    .line 976
    .end local v2    # "value":I
    :cond_28
    const-string v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemBarHidden() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return v1
.end method

.method public isTaskManagerAllowed(Z)Z
    .registers 10
    .param p1, "showMsg"    # Z

    .prologue
    .line 1166
    const/4 v1, 0x1

    .line 1167
    .local v1, "allowed":Z
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KIOSKMODE"

    const-string v7, "taskManagerEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1169
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1170
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1171
    const/4 v1, 0x0

    goto :goto_f

    .line 1174
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_23
    if-eqz p1, :cond_41

    if-nez v1, :cond_41

    .line 1175
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    const v7, 0x1040271

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1178
    iget-object v5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1180
    .end local v2    # "i":Landroid/content/Intent;
    :cond_41
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHidden()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    if-eq v0, v1, :cond_18

    .line 278
    :cond_11
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V

    .line 279
    iput-boolean v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    .line 284
    :cond_18
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 285
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getActiveKioskAdmin()I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 259
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V

    .line 264
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isStatusBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_StatusBar:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->preAdminRemoval_NavigationBar:Z

    .line 267
    return-void
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 229
    invoke-virtual {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "kioskPackage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "currentHomePackage":Ljava/lang/String;
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 233
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->setDefaultHomeScreen(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver()V

    .line 239
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerTerminationReceiver()V

    .line 241
    .end local v0    # "currentHomePackage":Ljava/lang/String;
    .end local v1    # "kioskPackage":Ljava/lang/String;
    :cond_21
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->initializeKeyCodeLists()V

    .line 242
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 243
    return-void
.end method

.method public wipeRecentTasks()Z
    .registers 5

    .prologue
    .line 992
    const/4 v1, 0x1

    .line 993
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->enforceKioskModePermission()I

    move-result v0

    .line 994
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 995
    .local v2, "token":J
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks()Z

    .line 996
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    return v1
.end method
