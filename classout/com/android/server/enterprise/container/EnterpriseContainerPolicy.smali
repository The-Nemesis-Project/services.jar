.class public Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy$Stub;
.source "EnterpriseContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;,
        Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;,
        Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;
    }
.end annotation


# static fields
.field static final CONTAINER_CHANGE_KNOX_MODE:Ljava/lang/String; = "com.sec.knox.containersettings.knox.mode"

.field static final CONTAINER_CHANGE_MODE_INTENT:Ljava/lang/String; = "com.sec.knox.containersettings.changemode"

.field private static final DBG:Z

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final INTENT_ALLOW_2WAY_BRIDGE:Ljava/lang/String; = "com.sec.knox.containeragent.bridge.allow2way"

.field private static final KNOX_LAUNCHER:Ljava/lang/String; = "com.sec.android.app.knoxlauncher"

.field private static TAG:Ljava/lang/String; = null

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static final UNINSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.UNINSTALL_SHORTCUT"


# instance fields
.field private mActiveContainer:I

.field private mBoardcaster:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

.field private mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

.field private mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKnoxMode:Z

.field private mModeReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 88
    const-string v1, "EnterpriseContainerPolicy Service"

    sput-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    .line 110
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x0

    :cond_c
    sput-boolean v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 356
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy$Stub;-><init>()V

    .line 89
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 90
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 91
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 92
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 93
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 107
    iput-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    .line 108
    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    .line 112
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mModeReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mBoardcaster:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

    .line 357
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    .line 358
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 359
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 361
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 362
    .local v1, "filterMode":Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.containersettings.changemode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .local v0, "filterContainer":Landroid/content/IntentFilter;
    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/sec/knox/container/IEnterpriseContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v0
.end method

.method private addContainerToDB(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1661
    const/4 v2, 0x0

    .line 1664
    .local v2, "retVal":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addContainer(II)Z

    move-result v1

    .line 1665
    .local v1, "result":Z
    if-eqz v1, :cond_3d

    .line 1666
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container Added to DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_34

    if-eqz v3, :cond_2a

    .line 1669
    :try_start_25
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 1680
    .end local v1    # "result":Z
    :cond_2a
    :goto_2a
    return v2

    .line 1670
    .restart local v1    # "result":Z
    :catch_2b
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2c
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_2a

    .line 1677
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Z
    :catch_34
    move-exception v0

    .line 1678
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at addContainerToDB "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 1675
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Z
    :cond_3d
    :try_start_3d
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add container to DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_55} :catch_34

    goto :goto_2a
.end method

.method private checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v2, 0x0

    .line 659
    .local v2, "isAdminApplication":Z
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 660
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, -0x1

    .line 662
    .local v4, "uid":I
    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 663
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 664
    sget-boolean v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForSystemUIDApplicationForVpn uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_2b
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2e} :catch_35

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_34

    .line 666
    const/4 v2, 0x1

    .line 671
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_34
    :goto_34
    return v2

    .line 668
    :catch_35
    move-exception v0

    .line 669
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    goto :goto_34
.end method

.method private enforceActiveAdminPermission(ILjava/lang/String;)I
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "reqPermission"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceAppPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 432
    const-string v0, "android.permission.sec.MDM_APP_MGMT"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission()I
    .registers 3

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 423
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforcePasswordPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 428
    const-string v0, "android.permission.sec.MDM_SECURITY"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceVpnPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 436
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 382
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 385
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getService()Lcom/sec/knox/container/IEnterpriseContainerService;
    .registers 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-nez v0, :cond_2a

    .line 372
    const-string v0, "container_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 375
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container Service Bind returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_2a
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v0
.end method

.method private getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    .registers 4

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-nez v1, :cond_1a

    .line 390
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 392
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_14

    .line 393
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_14
    invoke-static {v0}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 397
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    return-object v1
.end method

.method private manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    .line 1074
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v19

    if-nez v19, :cond_f

    .line 1075
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "ContainerService is not yet ready!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v15, 0x0

    .line 1142
    :goto_e
    return v15

    .line 1079
    :cond_f
    const/4 v15, 0x0

    .line 1080
    .local v15, "retVal":Z
    const/4 v13, 0x0

    .line 1082
    .local v13, "pkgInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1084
    .local v17, "token":J
    :try_start_15
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, "containerCategory":Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1086
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1091
    .local v11, "pMgr":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v12, "pickAppShortcut":Landroid/content/Intent;
    invoke-virtual {v12, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 1094
    .local v14, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_75

    .line 1095
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_53
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_75

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1096
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_53

    .line 1097
    move-object v13, v9

    .line 1098
    const/4 v15, 0x1

    .line 1104
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    :cond_75
    if-eqz v15, :cond_119

    if-eqz v13, :cond_119

    .line 1105
    const/16 v19, 0x80

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1108
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    new-instance v16, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v16, "shortcutIntent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1110
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const/high16 v19, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1112
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v10, "installAppShorcut":Landroid/content/Intent;
    const-string v19, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1117
    const-string v19, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1119
    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1120
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_f0

    .line 1121
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1122
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const-string v19, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1124
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_f0
    const-string v19, "duplicate"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1125
    const-string v19, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mBoardcaster:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;->send(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_119
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_119} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_119} :catch_13d
    .catchall {:try_start_15 .. :try_end_119} :catchall_14c

    .line 1139
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "containerCategory":Ljava/lang/String;
    .end local v10    # "installAppShorcut":Landroid/content/Intent;
    .end local v11    # "pMgr":Landroid/content/pm/PackageManager;
    .end local v12    # "pickAppShortcut":Landroid/content/Intent;
    .end local v14    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "shortcutIntent":Landroid/content/Intent;
    :cond_119
    :goto_119
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_e

    .line 1132
    :catch_11e
    move-exception v7

    .line 1133
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_11f
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "package name not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v15, 0x0

    goto :goto_119

    .line 1135
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_13d
    move-exception v7

    .line 1136
    .local v7, "e":Ljava/lang/Exception;
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v20, "something wrong here"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14a
    .catchall {:try_start_11f .. :try_end_14a} :catchall_14c

    .line 1137
    const/4 v15, 0x0

    goto :goto_119

    .line 1139
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_14c
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private removeContainerFromDB(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v6, -0x1

    .line 1684
    const/4 v2, 0x0

    .line 1685
    .local v2, "retVal":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v1

    .line 1687
    .local v1, "ownerUid":I
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_13

    if-eq v1, v6, :cond_13

    .line 1689
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, v1}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_3f

    .line 1696
    :cond_13
    :goto_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeContainer(I)Z

    move-result v2

    .line 1697
    if-eqz v2, :cond_48

    .line 1698
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container removed from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_61

    .line 1707
    :goto_33
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_3e

    if-eq v1, v6, :cond_3e

    .line 1709
    :try_start_39
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, v1}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_6a

    .line 1715
    :cond_3e
    :goto_3e
    return v2

    .line 1690
    :catch_3f
    move-exception v0

    .line 1691
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 1700
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_48
    :try_start_48
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_60} :catch_61

    goto :goto_33

    .line 1703
    :catch_61
    move-exception v0

    .line 1704
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at removeContainerFromDB "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1710
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v0

    .line 1711
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method private translateStatus(I)I
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 843
    sparse-switch p1, :sswitch_data_a

    .line 852
    .end local p1    # "status":I
    :goto_3
    return p1

    .line 848
    .restart local p1    # "status":I
    :sswitch_4
    const/16 p1, 0x5b

    goto :goto_3

    .line 850
    :sswitch_7
    const/16 p1, 0x5a

    goto :goto_3

    .line 843
    :sswitch_data_a
    .sparse-switch
        0x52 -> :sswitch_4
        0x53 -> :sswitch_4
        0x61 -> :sswitch_7
        0x62 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public activateContainer(I)Z
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1574
    const/4 v1, 0x0

    .line 1575
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1576
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1588
    .end local v1    # "success":Z
    .local v2, "success":I
    :goto_f
    return v2

    .line 1580
    .end local v2    # "success":I
    .restart local v1    # "success":Z
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 1583
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->activateContainer(I)Z

    move-result v1

    .line 1584
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateContainer: Request sent to ContainerService :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_33

    :goto_31
    move v2, v1

    .line 1588
    .restart local v2    # "success":I
    goto :goto_f

    .line 1585
    .end local v2    # "success":I
    :catch_33
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API activateContainer "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public addHomeShortcut(ILjava/lang/String;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 1061
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    const-string v1, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addVpnProfile(ILjava/lang/String;)Z
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 676
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_f

    .line 677
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_e
    :goto_e
    return v6

    .line 681
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 682
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v7, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v1

    .line 685
    .local v1, "getContainerizedPackageNameForVpn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 686
    .local v4, "pkgNames":[Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 687
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 688
    .local v3, "length":I
    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pkgNames":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 690
    .end local v3    # "length":I
    .restart local v4    # "pkgNames":[Ljava/lang/String;
    :cond_27
    if-nez v4, :cond_42

    .line 691
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addVpnProfile: No packages found in container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 695
    :cond_42
    const/4 v6, 0x1

    .line 696
    .local v6, "retVal":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    array-length v7, v4

    if-ge v2, v7, :cond_e

    .line 697
    sget-boolean v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    if-eqz v7, :cond_65

    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addVpnProfile: The Package added to VPN is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_65
    aget-object v7, v4, v2

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v0

    .line 699
    .local v0, "checkIfApplicationHasSystemUID":Z
    if-eqz v0, :cond_70

    .line 696
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 702
    :cond_70
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-interface {v7, p1, v8, p2}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v5

    .line 703
    .local v5, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    if-eqz v7, :cond_6d

    .line 704
    const/4 v6, 0x0

    .line 707
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_e

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeVPNProfile(I)Z

    goto :goto_e
.end method

.method public addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v3

    if-nez v3, :cond_f

    .line 577
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "VpnService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x0

    .line 595
    :cond_e
    :goto_e
    return v1

    .line 580
    :cond_f
    const/4 v1, 0x1

    .line 581
    .local v1, "retVal":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 582
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "transformedName":Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 584
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, v2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    .line 586
    .local v0, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-eqz v3, :cond_e

    .line 587
    const/4 v1, 0x0

    goto :goto_e

    .line 590
    .end local v0    # "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_2b
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVpnProfileToApp: No package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "found for container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public allowContactInfoToNonKnox(IZ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    move-result v1

    .line 1726
    .local v1, "callingUid":I
    const/4 v7, 0x0

    .line 1728
    .local v7, "retVal":Z
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ContainerSettings"

    const-string v4, "allowContactInfoToNonKnox"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 1732
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.sec.knox.containeragent.bridge.allow2way"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "allow2way"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1734
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1736
    return v7
.end method

.method public createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .registers 10
    .param p1, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p2, "flag"    # I

    .prologue
    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    if-nez v4, :cond_10

    .line 444
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerService is not yet ready!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 457
    .end local v2    # "success":Z
    .local v3, "success":I
    :goto_f
    return v3

    .line 448
    .end local v3    # "success":I
    .restart local v2    # "success":Z
    :cond_10
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission()I

    move-result v0

    .line 451
    .local v0, "adminUid":I
    :try_start_14
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    const/4 v6, -0x1

    invoke-direct {v5, p0, v0, v6, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v4, v5, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v2

    .line 453
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createContainer: Request sent to ContainerService - RequestID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_38} :catch_3a

    :goto_38
    move v3, v2

    .line 457
    .restart local v3    # "success":I
    goto :goto_f

    .line 454
    .end local v3    # "success":I
    :catch_3a
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at EnterpriseContainerPolicy API createContainer "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method public deleteHomeShortcut(ILjava/lang/String;)Z
    .registers 5
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 1068
    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    const-string v1, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enforcePasswordChange(I)Z
    .registers 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 827
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v1, 0x0

    .line 839
    :goto_e
    return v1

    .line 831
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 833
    const/4 v1, 0x0

    .line 835
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->enforcePasswordChange(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 836
    :catch_1a
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API enforcePasswordChange "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getActiveContainerId()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    return v0
.end method

.method public getAllPackagesForProfile(ILjava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v10

    if-nez v10, :cond_f

    .line 626
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "VpnService is not yet ready!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v9, 0x0

    .line 654
    :cond_e
    :goto_e
    return-object v9

    .line 630
    :cond_f
    const/4 v9, 0x0

    .line 631
    .local v9, "retVal":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 633
    if-eqz p2, :cond_61

    .line 634
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v10

    invoke-interface {v10, p1, p2}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->getAllPackagesForProfile(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v8

    .line 636
    .local v8, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v10

    if-nez v10, :cond_e

    .line 637
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 638
    .local v7, "packageNames":[Ljava/lang/String;
    array-length v10, v7

    new-array v9, v10, [Ljava/lang/String;

    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, "i":I
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_36
    if-ge v4, v5, :cond_e

    aget-object v6, v1, v4

    .line 641
    .local v6, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v10, p1, v6}, Lcom/sec/knox/container/IEnterpriseContainerService;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 643
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The string in VpnPolicy returned :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    add-int/lit8 v3, v3, 0x1

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 648
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageNames":[Ljava/lang/String;
    .end local v8    # "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_61
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllPackagesForProfile: No profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "found for container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_83} :catch_84

    goto :goto_e

    .line 651
    :catch_84
    move-exception v2

    .line 652
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method public getContainerId(I)I
    .registers 7
    .param p1, "appUID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 754
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x0

    .line 770
    :cond_e
    :goto_e
    return v0

    .line 758
    :cond_f
    const/4 v0, 0x0

    .line 760
    .local v0, "containerId":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerId(I)I

    move-result v0

    .line 761
    sget-boolean v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    if-eqz v2, :cond_32

    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerId()-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_36

    .line 766
    :cond_32
    :goto_32
    if-gez v0, :cond_e

    .line 767
    const/4 v0, 0x0

    goto :goto_e

    .line 762
    :catch_36
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled Exception in getContainerId(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method public getContainerOwnerUid(I)I
    .registers 13
    .param p1, "containerId"    # I

    .prologue
    const/4 v10, -0x1

    .line 1443
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 1445
    .local v4, "ownerUid":I
    if-ne v10, v4, :cond_61

    .line 1446
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v9

    if-nez v9, :cond_18

    .line 1447
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "ContainerService is not yet ready!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1481
    .end local v4    # "ownerUid":I
    .local v5, "ownerUid":I
    :goto_17
    return v5

    .line 1452
    .end local v5    # "ownerUid":I
    .restart local v4    # "ownerUid":I
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1454
    .local v7, "token":J
    :try_start_1c
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v9}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v3

    .line 1455
    .local v3, "objs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    if-eqz v3, :cond_5e

    .line 1456
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1457
    .local v2, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v9

    if-ne v9, p1, :cond_28

    .line 1458
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v9

    if-eq v9, v10, :cond_5e

    .line 1459
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getStatus(I)I

    move-result v6

    .line 1460
    .local v6, "status":I
    const/16 v9, 0x5d

    if-eq v6, v9, :cond_63

    const/16 v9, 0x5e

    if-eq v6, v9, :cond_63

    .line 1462
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Container owner information was missing from Edm DB - adding now."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v9

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z

    .line 1465
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5d} :catch_6b
    .catchall {:try_start_1c .. :try_end_5d} :catchall_74

    move-result v4

    .line 1477
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v3    # "objs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v6    # "status":I
    :cond_5e
    :goto_5e
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7    # "token":J
    :cond_61
    move v5, v4

    .line 1481
    .end local v4    # "ownerUid":I
    .restart local v5    # "ownerUid":I
    goto :goto_17

    .line 1467
    .end local v5    # "ownerUid":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v3    # "objs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v4    # "ownerUid":I
    .restart local v6    # "status":I
    .restart local v7    # "token":J
    :cond_63
    :try_start_63
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Container creation/removal in progress"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6a} :catch_6b
    .catchall {:try_start_63 .. :try_end_6a} :catchall_74

    goto :goto_5e

    .line 1474
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v3    # "objs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v6    # "status":I
    :catch_6b
    move-exception v0

    .line 1475
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6c
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Handled exception in getContainerOwnerUid()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_74

    goto :goto_5e

    .line 1477
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_74
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public getContainerPackages(I)[Ljava/lang/String;
    .registers 10
    .param p1, "containerId"    # I

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_f

    .line 530
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v4, 0x0

    .line 547
    :cond_e
    :goto_e
    return-object v4

    .line 533
    :cond_f
    const/4 v4, 0x0

    .line 535
    .local v4, "retVal":[Ljava/lang/String;
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getOriginalPackageNames(I)Ljava/util/List;

    move-result-object v3

    .line 536
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_e

    .line 537
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 538
    .local v2, "length":I
    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 539
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_e

    .line 541
    :cond_2b
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No packages found in container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_44

    goto :goto_e

    .line 544
    .end local v2    # "length":I
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_44
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at EnterpriseContainerPolicy API getContainerPackages "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getContainerType(I)I
    .registers 5
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-eqz v1, :cond_13

    .line 489
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerType(I)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 495
    :goto_a
    return v1

    .line 491
    :catch_b
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API getContainerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 777
    if-lez p1, :cond_4

    if-nez p2, :cond_5

    .line 794
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p2

    .line 781
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_13

    .line 782
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 786
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_48

    .line 789
    :cond_21
    sget-boolean v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    if-eqz v1, :cond_47

    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Containerzied Package name found for containerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_47
    move-object v0, p2

    :cond_48
    move-object p2, v0

    .line 794
    goto :goto_4
.end method

.method public getContainerizedPackages(I)[Ljava/lang/String;
    .registers 10
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_f

    .line 553
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v4, 0x0

    .line 570
    :cond_e
    :goto_e
    return-object v4

    .line 556
    :cond_f
    const/4 v4, 0x0

    .line 558
    .local v4, "retVal":[Ljava/lang/String;
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    .line 559
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_e

    .line 560
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 561
    .local v2, "length":I
    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 562
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_e

    .line 564
    :cond_2b
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No packages found in container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_43} :catch_44

    goto :goto_e

    .line 567
    .end local v2    # "length":I
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_44
    move-exception v1

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at EnterpriseContainerPolicy API getContainerizedPackages "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    if-gtz p1, :cond_4

    move-object v1, p2

    .line 1385
    :goto_3
    return-object v1

    .line 1373
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sec_container_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1374
    .local v1, "retVal":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 1375
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1380
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1381
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerizedString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4d} :catch_4e

    goto :goto_3

    .line 1382
    :catch_4e
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getContainerizedString() "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getMaximumFailedPasswordsForDeviceDisable(ILandroid/content/ComponentName;)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1407
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1408
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v1, -0x1

    .line 1419
    :goto_e
    return v1

    .line 1412
    :cond_f
    const/4 v1, -0x1

    .line 1414
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1415
    :catch_17
    move-exception v0

    .line 1416
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getMaximumFailedPasswordsForDisable "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1235
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-wide/16 v1, -0x1

    .line 1245
    :goto_f
    return-wide v1

    .line 1239
    :cond_10
    const-wide/16 v1, -0x1

    .line 1241
    .local v1, "retVal":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-wide v1

    goto :goto_f

    .line 1242
    :catch_19
    move-exception v0

    .line 1243
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API getPasswordHistory "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1319
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/4 v1, 0x0

    .line 1329
    :goto_e
    return v1

    .line 1323
    :cond_f
    const/4 v1, 0x0

    .line 1325
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1326
    :catch_17
    move-exception v0

    .line 1327
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getMinPasswordComplexChars "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getOwnContainers()[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_f

    .line 501
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v5, 0x0

    .line 524
    :goto_e
    return-object v5

    .line 505
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 506
    .local v1, "callingUid":I
    const/4 v5, 0x0

    .line 508
    .local v5, "retVal":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_14
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v7}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v6

    .line 509
    .local v6, "retVal2":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    if-eqz v6, :cond_3f

    .line 510
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 511
    .local v4, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v7

    if-eq v7, v1, :cond_20

    .line 512
    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_36

    goto :goto_20

    .line 521
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v6    # "retVal2":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :catch_36
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "Failed at EnterpriseContainerPolicy API getOwnContainers "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 516
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "retVal2":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_3f
    if-eqz v6, :cond_56

    :try_start_41
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_56

    .line 517
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-object v5, v0

    goto :goto_e

    .line 519
    :cond_56
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "No containers!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5d} :catch_36

    goto :goto_e
.end method

.method public getPasswordEnabledContainerLockTimeout(I)J
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1285
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const-wide/16 v1, -0x1

    .line 1295
    :goto_f
    return-wide v1

    .line 1289
    :cond_10
    const-wide/16 v1, -0x1

    .line 1291
    .local v1, "retVal":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordEnabledContainerLockTimeout(I)J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-wide v1

    goto :goto_f

    .line 1292
    :catch_19
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API getPasswordEnabledContainerLockTimeout "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public getPasswordExpires(ILandroid/content/ComponentName;)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1166
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v1, 0x0

    .line 1176
    :goto_e
    return v1

    .line 1170
    :cond_f
    const/4 v1, 0x0

    .line 1172
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordExpires(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1173
    :catch_17
    move-exception v0

    .line 1174
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordExpires "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getPasswordHistory(ILandroid/content/ComponentName;)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1200
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v1, 0x0

    .line 1210
    :goto_e
    return v1

    .line 1204
    :cond_f
    const/4 v1, 0x0

    .line 1206
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordHistory(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1207
    :catch_17
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordHistory "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1557
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v1, 0x0

    .line 1569
    :goto_e
    return v1

    .line 1561
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1563
    const/4 v1, 0x0

    .line 1565
    .local v1, "length":I
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 1566
    :catch_1a
    move-exception v0

    .line 1567
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordMinimumLength()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getPasswordQuality(ILandroid/content/ComponentName;)I
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 1520
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1521
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v1, 0x0

    .line 1533
    :goto_e
    return v1

    .line 1525
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1527
    const/4 v1, 0x0

    .line 1529
    .local v1, "quality":I
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordQuality(ILandroid/content/ComponentName;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 1530
    :catch_1a
    move-exception v0

    .line 1531
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getPasswordQuality()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getStatus(I)I
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 859
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v1, -0x1

    .line 869
    :goto_e
    return v1

    .line 863
    :cond_f
    const/4 v1, 0x0

    .line 865
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getStatus(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->translateStatus(I)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_e

    .line 866
    :catch_1b
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API getStatus "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public installPackage(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .registers 14
    .param p1, "containerId"    # I
    .param p2, "packagePath"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p4, "installType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    if-nez v0, :cond_f

    .line 912
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ContainerService is not yet ready!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v8, 0x0

    .line 930
    :goto_e
    return v8

    .line 916
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    move-result v6

    .line 918
    .local v6, "adminUid":I
    if-nez p2, :cond_1d

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL apk file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_1d
    const/4 v8, 0x0

    .line 924
    .local v8, "retVal":Z
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v3, p0, v6, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    const/4 v5, 0x2

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/knox/container/IEnterpriseContainerService;->installPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;II)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_2e

    move-result v8

    goto :goto_e

    .line 927
    :catch_2e
    move-exception v7

    .line 928
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed at EnterpriseContainerPolicy API installPackages "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public isActivePasswordSufficient(I)Z
    .registers 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1487
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/4 v1, 0x1

    .line 1499
    :goto_e
    return v1

    .line 1491
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1493
    const/4 v1, 0x1

    .line 1495
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->isActivePasswordSufficient(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 1496
    :catch_1a
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API isActivePasswordSufficient()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public isCameraEnabled(I)Z
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1424
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerService is not yet ready!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const/4 v1, 0x1

    .line 1438
    :goto_e
    return v1

    .line 1428
    :cond_f
    const/4 v1, 0x1

    .line 1429
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1431
    .local v2, "uid":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lcom/sec/knox/container/IEnterpriseContainerService;->getAllowCamera(ILandroid/content/ComponentName;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1f
    .catchall {:try_start_14 .. :try_end_1a} :catchall_28

    move-result v1

    .line 1435
    :goto_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    .line 1432
    :catch_1f
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at EnterpriseContainerPolicy API getAllowCamera()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1b

    .line 1435
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_28
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isContactInfoToNonKnoxAllowed(I)Z
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1748
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 1751
    .local v2, "retVal":Z
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerSettings"

    const-string v5, "allowContactInfoToNonKnox"

    invoke-virtual {v3, v0, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    move-result v2

    .line 1760
    :goto_f
    return v2

    .line 1755
    :catch_10
    move-exception v1

    .line 1756
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin data is null. isContactInfoToNonKnoxAllowed() failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public isContainerMode()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return v0
.end method

.method public isPasswordVisibilityEnabled(I)Z
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1353
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v1, 0x0

    .line 1363
    :goto_e
    return v1

    .line 1357
    :cond_f
    const/4 v1, 0x0

    .line 1359
    .local v1, "retVal":Z
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->isPasswordVisisbilityEnabled(I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1360
    :catch_17
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API isPasswordVisisbilityEnabled "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public lockContainer(I)Z
    .registers 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 875
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v1, 0x0

    .line 887
    :goto_e
    return v1

    .line 879
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 881
    const/4 v1, 0x0

    .line 883
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->lockContainer(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 884
    :catch_1a
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API lockContainer "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1615
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1620
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 12
    .param p1, "uid"    # I

    .prologue
    .line 1629
    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_5

    .line 1658
    :cond_4
    :goto_4
    return-void

    .line 1634
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1635
    .local v1, "containerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2c

    .line 1636
    :cond_13
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No containers owned by admin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1640
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_3a

    .line 1641
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1645
    :cond_3a
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to delete containers for ownerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1648
    .local v0, "containerId":Ljava/lang/Integer;
    :try_start_62
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, p0, p1, v8, v9}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v5, v6, v7}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v4

    .line 1650
    .local v4, "retVal":Z
    if-eqz v4, :cond_80

    .line 1651
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v4

    .line 1653
    :cond_80
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerService.removeContainer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_a2} :catch_a3

    goto :goto_56

    .line 1654
    .end local v4    # "retVal":Z
    :catch_a3
    move-exception v2

    .line 1655
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method public removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_f

    .line 463
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, 0x0

    .line 482
    :goto_e
    return v2

    .line 467
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    .line 469
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 471
    .local v2, "retVal":Z
    :try_start_14
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v3, p1, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    .line 473
    if-eqz v2, :cond_2d

    .line 474
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removeContainer: Request sent to ContainerService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v2

    goto :goto_e

    .line 477
    :cond_2d
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removeContainer: Request failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_35

    goto :goto_e

    .line 479
    :catch_35
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API removeContainer "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public removeVPNProfile(I)Z
    .registers 12
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    const/4 v3, 0x0

    .line 719
    .local v3, "pkgNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 720
    .local v5, "retVal":Z
    const/4 v4, 0x0

    .line 721
    .local v4, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_12

    .line 722
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 748
    .end local v5    # "retVal":Z
    .local v6, "retVal":I
    :goto_11
    return v6

    .line 725
    .end local v6    # "retVal":I
    .restart local v5    # "retVal":Z
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 726
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->containerPackageListFromVpnDatabase(I)[Ljava/lang/String;

    move-result-object v3

    .line 727
    if-eqz v3, :cond_92

    .line 728
    array-length v2, v3

    .line 729
    .local v2, "packageListSize":I
    sget-boolean v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    if-eqz v7, :cond_46

    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeVPNProfile: The Number of Packages inside Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    if-ge v1, v2, :cond_ad

    .line 731
    sget-boolean v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->DBG:Z

    if-eqz v7, :cond_71

    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeVPNProfile: The Package going to be removed from"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_71
    aget-object v7, v3, v1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v0

    .line 733
    .local v0, "checkIfApplicationHasSystemUID":Z
    if-eqz v0, :cond_7c

    .line 730
    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 736
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-interface {v7, p1, v8}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v4

    .line 737
    if-eqz v4, :cond_90

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    if-eqz v7, :cond_90

    .line 738
    const/4 v5, 0x0

    goto :goto_79

    .line 741
    :cond_90
    const/4 v5, 0x1

    goto :goto_79

    .line 745
    .end local v0    # "checkIfApplicationHasSystemUID":Z
    .end local v1    # "i":I
    .end local v2    # "packageListSize":I
    :cond_92
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeVPNProfile: No packages found in container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 746
    .restart local v6    # "retVal":I
    goto/16 :goto_11

    .end local v6    # "retVal":I
    .restart local v1    # "i":I
    .restart local v2    # "packageListSize":I
    :cond_ad
    move v6, v5

    .line 748
    .restart local v6    # "retVal":I
    goto/16 :goto_11
.end method

.method public removeVpnForApplication(ILjava/lang/String;)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v3

    if-nez v3, :cond_f

    .line 602
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "VpnService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v1, 0x0

    .line 620
    :cond_e
    :goto_e
    return v1

    .line 605
    :cond_f
    const/4 v1, 0x1

    .line 606
    .local v1, "retVal":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 607
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "transformedName":Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 609
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    .line 611
    .local v0, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-eqz v3, :cond_e

    .line 612
    const/4 v1, 0x0

    goto :goto_e

    .line 615
    .end local v0    # "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    :cond_2b
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeVpnProfileToApp: No package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "found for container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public resetPassword(I)Z
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1593
    const/4 v1, 0x0

    .line 1594
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1595
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1607
    .end local v1    # "success":Z
    .local v2, "success":I
    :goto_f
    return v2

    .line 1599
    .end local v2    # "success":I
    .restart local v1    # "success":Z
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 1602
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->adminPasswordReset(I)Z

    move-result v1

    .line 1603
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enablePasswordVerifyMode: Request sent to ContainerService :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_33

    :goto_31
    move v2, v1

    .line 1607
    .restart local v2    # "success":I
    goto :goto_f

    .line 1604
    .end local v2    # "success":I
    :catch_33
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API resetPassword "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public setMaximumFailedPasswordsForDeviceDisable(ILandroid/content/ComponentName;I)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I

    .prologue
    const/4 v1, 0x0

    .line 1391
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1392
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_e
    return v1

    .line 1397
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_16

    .line 1398
    const/4 v1, 0x1

    goto :goto_e

    .line 1399
    :catch_16
    move-exception v0

    .line 1400
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API setMaximumFailedPasswordsForDisable "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setMaximumTimeToLock(ILandroid/content/ComponentName;J)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1216
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1217
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_e
    return v1

    .line 1221
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1224
    :try_start_12
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    .line 1225
    const/4 v1, 0x1

    goto :goto_e

    .line 1226
    :catch_19
    move-exception v0

    .line 1227
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API setMaximumTimeToLock "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1302
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_d
    return-void

    .line 1306
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1309
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1310
    :catch_17
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setMinPasswordComplexChars "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordEnabledContainerLockTimeout(IJ)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1258
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1259
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_e
    return v1

    .line 1263
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1266
    :try_start_12
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordEnabledContainerLockTimeout(IJ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    .line 1267
    const/4 v1, 0x1

    goto :goto_e

    .line 1268
    :catch_19
    move-exception v0

    .line 1269
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API setPasswordEnabledContainerLockTimeout "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setPasswordExpires(ILandroid/content/ComponentName;I)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1149
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_d
    return-void

    .line 1153
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1156
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordExpires(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1157
    :catch_17
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordExpires "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordHistory(ILandroid/content/ComponentName;I)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1182
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1183
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_d
    return-void

    .line 1187
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1190
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordHistory(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1191
    :catch_17
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordHistory "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1540
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :goto_d
    return-void

    .line 1544
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1547
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1548
    :catch_17
    move-exception v0

    .line 1549
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordMinimumLength()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordQuality(ILandroid/content/ComponentName;I)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 1504
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1505
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :goto_d
    return-void

    .line 1509
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1512
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordQuality(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1513
    :catch_17
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordQuality()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordVisibilityEnabled(ILandroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "who"    # Landroid/content/ComponentName;
    .param p3, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1336
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_d
    return-void

    .line 1340
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1343
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordVisibilityEnabled(IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1344
    :catch_17
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setPasswordVisibilityEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setSubscriber(Lcom/android/server/enterprise/EnterpriseContainerSubscriber;)V
    .registers 2
    .param p1, "subscriber"    # Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 402
    return-void
.end method

.method public startApp(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 976
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v1, 0x0

    .line 988
    :goto_e
    return v1

    .line 980
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 982
    const/4 v1, 0x0

    .line 984
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->startApp(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 985
    :catch_1a
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API startApp "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public stopApp(ILjava/lang/String;)Z
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 957
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v1, 0x0

    .line 969
    :goto_e
    return v1

    .line 961
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 963
    const/4 v1, 0x0

    .line 965
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->stopApp(ILjava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 966
    :catch_1a
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API stopApp "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1625
    return-void
.end method

.method public uninstallPackage(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_f

    .line 937
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v2, 0x0

    .line 951
    :goto_e
    return v2

    .line 941
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    move-result v0

    .line 943
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 945
    .local v2, "retVal":Z
    :try_start_14
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 946
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v3, p1, p2, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_26

    move-result v2

    goto :goto_e

    .line 948
    :catch_26
    move-exception v1

    .line 949
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API uninstallPackages "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public unlockContainer(I)Z
    .registers 6
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 893
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v1, 0x0

    .line 905
    :goto_e
    return v1

    .line 897
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 899
    const/4 v1, 0x0

    .line 901
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->unlockContainer(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 902
    :catch_1a
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API unlockContainer "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public verifyPassword(ILjava/lang/String;)I
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_f

    .line 800
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v2, -0x1

    .line 821
    :goto_e
    return v2

    .line 804
    :cond_f
    const/4 v2, 0x0

    .line 806
    .local v2, "retVal":I
    :try_start_10
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)V

    .line 807
    .local v0, "cb":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2, v0}, Lcom/sec/knox/container/IEnterpriseContainerService;->verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 808
    monitor-enter v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_2f

    .line 809
    :goto_1b
    :try_start_1b
    iget-boolean v3, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_2c

    if-nez v3, :cond_38

    .line 811
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_2c

    goto :goto_1b

    .line 812
    :catch_23
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_24
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerService API verifyPassword "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 817
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_2c
    move-exception v3

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2f} :catch_2f

    .line 818
    .end local v0    # "cb":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    :catch_2f
    move-exception v1

    .line 819
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API verifyPassword "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 816
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cb":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    :cond_38
    :try_start_38
    iget v2, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 817
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_2c

    goto :goto_e
.end method

.method public writeData(ILjava/lang/String;Ljava/lang/String;[BZ)Z
    .registers 26
    .param p1, "containerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 994
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 996
    if-nez p2, :cond_8

    .line 997
    const/16 v16, 0x0

    .line 1055
    :cond_7
    :goto_7
    return v16

    .line 999
    :cond_8
    const/16 v16, 0x0

    .line 1000
    .local v16, "retVal":Z
    const/4 v13, 0x0

    .line 1001
    .local v13, "out":Ljava/io/OutputStream;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/data"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1006
    .local v8, "destFile":Ljava/lang/String;
    :try_start_3e
    monitor-enter p0
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3f} :catch_fe
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3f} :catch_112
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3f} :catch_126
    .catchall {:try_start_3e .. :try_end_3f} :catchall_13a

    .line 1007
    if-nez p5, :cond_99

    .line 1008
    :try_start_41
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setprop ctl.start createsystemfile:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1009
    .local v4, "command":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v7, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "commandArray":[Ljava/lang/String;
    move-object v3, v6

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_66
    if-ge v11, v12, :cond_70

    aget-object v5, v3, v11

    .line 1012
    .local v5, "commandArg":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    add-int/lit8 v11, v11, 0x1

    goto :goto_66

    .line 1015
    .end local v5    # "commandArg":Ljava/lang/String;
    :cond_70
    new-instance v17, Ljava/lang/ProcessBuilder;

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v15

    .line 1017
    .local v15, "process":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 1019
    const-wide/16 v17, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1024
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "command":Ljava/lang/String;
    .end local v6    # "commandArray":[Ljava/lang/String;
    .end local v7    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "process":Ljava/lang/Process;
    :cond_99
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v10, "f":Ljava/io/File;
    if-eqz p4, :cond_db

    .line 1026
    new-instance v14, Ljava/io/FileOutputStream;

    move/from16 v0, p5

    invoke-direct {v14, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a7
    .catchall {:try_start_41 .. :try_end_a7} :catchall_fb

    .line 1027
    .end local v13    # "out":Ljava/io/OutputStream;
    .local v14, "out":Ljava/io/OutputStream;
    :try_start_a7
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1028
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes are written to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catchall {:try_start_a7 .. :try_end_cf} :catchall_146

    move-object v13, v14

    .line 1036
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    :cond_d0
    :goto_d0
    const/16 v16, 0x1

    .line 1037
    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_fb

    .line 1046
    if-eqz v13, :cond_7

    .line 1048
    :try_start_d5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_144

    .line 1051
    .end local v10    # "f":Ljava/io/File;
    :goto_d8
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1030
    .restart local v10    # "f":Ljava/io/File;
    :cond_db
    if-nez p5, :cond_d0

    .line 1031
    :try_start_dd
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1032
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is now removed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1037
    .end local v10    # "f":Ljava/io/File;
    :catchall_fb
    move-exception v17

    :goto_fc
    monitor-exit p0
    :try_end_fd
    .catchall {:try_start_dd .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v17
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_fe} :catch_fe
    .catch Ljava/lang/InterruptedException; {:try_start_fd .. :try_end_fe} :catch_112
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_fe} :catch_126
    .catchall {:try_start_fd .. :try_end_fe} :catchall_13a

    .line 1039
    :catch_fe
    move-exception v9

    .line 1040
    .local v9, "e":Ljava/io/IOException;
    :try_start_ff
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "IOException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10a
    .catchall {:try_start_ff .. :try_end_10a} :catchall_13a

    .line 1046
    if-eqz v13, :cond_7

    .line 1048
    :try_start_10c
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_110

    goto :goto_d8

    .line 1049
    :catch_110
    move-exception v17

    goto :goto_d8

    .line 1041
    .end local v9    # "e":Ljava/io/IOException;
    :catch_112
    move-exception v9

    .line 1042
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_113
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "InterruptedException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11e
    .catchall {:try_start_113 .. :try_end_11e} :catchall_13a

    .line 1046
    if-eqz v13, :cond_7

    .line 1048
    :try_start_120
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_d8

    .line 1049
    :catch_124
    move-exception v17

    goto :goto_d8

    .line 1043
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catch_126
    move-exception v9

    .line 1044
    .local v9, "e":Ljava/lang/Exception;
    :try_start_127
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "Failed at EnterpriseContainerPolicy API writeData "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132
    .catchall {:try_start_127 .. :try_end_132} :catchall_13a

    .line 1046
    if-eqz v13, :cond_7

    .line 1048
    :try_start_134
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_d8

    .line 1049
    :catch_138
    move-exception v17

    goto :goto_d8

    .line 1046
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_13a
    move-exception v17

    if-eqz v13, :cond_141

    .line 1048
    :try_start_13d
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_142

    .line 1051
    :goto_140
    const/4 v13, 0x0

    .line 1046
    :cond_141
    throw v17

    .line 1049
    :catch_142
    move-exception v18

    goto :goto_140

    .restart local v10    # "f":Ljava/io/File;
    :catch_144
    move-exception v17

    goto :goto_d8

    .line 1037
    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    :catchall_146
    move-exception v17

    move-object v13, v14

    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    goto :goto_fc
.end method
