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

.field private mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "EnterpriseContainerPolicy Service"

    sput-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseContainerPolicy$Stub;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 89
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 90
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 91
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 106
    iput-boolean v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    .line 107
    iput v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    .line 109
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mModeReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mBoardcaster:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

    .line 346
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    .line 347
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 348
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 350
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v1, "filterMode":Landroid/content/IntentFilter;
    const-string v2, "com.sec.knox.containersettings.changemode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v0, "filterContainer":Landroid/content/IntentFilter;
    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;)Lcom/sec/knox/container/IEnterpriseContainerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v0
.end method

.method private addContainerToDB(II)Z
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1652
    const/4 v2, 0x0

    .line 1655
    .local v2, "retVal":Z
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addContainer(II)Z

    move-result v1

    .line 1656
    .local v1, "result":Z
    if-eqz v1, :cond_3d

    .line 1657
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

    .line 1658
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_34

    if-eqz v3, :cond_2a

    .line 1660
    :try_start_25
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2b

    .line 1671
    .end local v1    # "result":Z
    :cond_2a
    :goto_2a
    return v2

    .line 1661
    .restart local v1    # "result":Z
    :catch_2b
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2c
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_2a

    .line 1668
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Z
    :catch_34
    move-exception v0

    .line 1669
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at addContainerToDB "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 1666
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
    .line 645
    const/4 v2, 0x0

    .line 646
    .local v2, "isAdminApplication":Z
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 647
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, -0x1

    .line 649
    .local v4, "uid":I
    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 650
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 651
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
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_27} :catch_2d

    .line 652
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2c

    .line 653
    const/4 v2, 0x1

    .line 658
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2c
    :goto_2c
    return v2

    .line 655
    :catch_2d
    move-exception v0

    .line 656
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, -0x1

    goto :goto_2c
.end method

.method private enforceActiveAdminPermission(ILjava/lang/String;)I
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "reqPermission"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 408
    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceAppPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 421
    const-string v0, "android.permission.sec.MDM_APP_MGMT"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission()I
    .registers 3

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceEnterpriseContainerPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 412
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforcePasswordPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 417
    const-string v0, "android.permission.sec.MDM_SECURITY"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private enforceVpnPermission(I)I
    .registers 3
    .param p1, "containerId"    # I

    .prologue
    .line 425
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceActiveAdminPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 371
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 374
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getService()Lcom/sec/knox/container/IEnterpriseContainerService;
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-nez v0, :cond_2a

    .line 361
    const-string v0, "container_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    .line 364
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

    .line 366
    :cond_2a
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    return-object v0
.end method

.method private getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;
    .registers 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-nez v1, :cond_1a

    .line 379
    const-string v1, "enterprise_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 381
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_14

    .line 382
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VPN policy service is not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_14
    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 386
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1a
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mVpnPolicy:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    return-object v1
.end method

.method private manageHomeShorcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .param p1, "containerId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "permission"    # Ljava/lang/String;

    .prologue
    .line 1058
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v19

    if-nez v19, :cond_f

    .line 1059
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "ContainerService is not yet ready!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v15, 0x0

    .line 1126
    :goto_e
    return v15

    .line 1063
    :cond_f
    const/4 v15, 0x0

    .line 1064
    .local v15, "retVal":Z
    const/4 v13, 0x0

    .line 1066
    .local v13, "pkgInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1068
    .local v17, "token":J
    :try_start_15
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1069
    .local v5, "containerCategory":Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1070
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1075
    .local v11, "pMgr":Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1076
    .local v12, "pickAppShortcut":Landroid/content/Intent;
    invoke-virtual {v12, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 1078
    .local v14, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_75

    .line 1079
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

    .line 1080
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

    .line 1081
    move-object v13, v9

    .line 1082
    const/4 v15, 0x1

    .line 1088
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    :cond_75
    if-eqz v15, :cond_119

    if-eqz v13, :cond_119

    .line 1089
    const/16 v19, 0x80

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1092
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    new-instance v16, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v16, "shortcutIntent":Landroid/content/Intent;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const/high16 v19, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1096
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

    .line 1099
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v10, "installAppShorcut":Landroid/content/Intent;
    const-string v19, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1101
    const-string v19, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1103
    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1104
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_f0

    .line 1105
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1106
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const-string v19, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1108
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_f0
    const-string v19, "duplicate"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1109
    const-string v19, "com.sec.android.app.knoxlauncher"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mBoardcaster:Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$BroadcastHandler;->send(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_119
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_119} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_119} :catch_13d
    .catchall {:try_start_15 .. :try_end_119} :catchall_14b

    .line 1123
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

    .line 1116
    :catch_11e
    move-exception v7

    .line 1117
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

    .line 1118
    const/4 v15, 0x0

    goto :goto_119

    .line 1119
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_13d
    move-exception v7

    .line 1120
    .local v7, "e":Ljava/lang/Exception;
    sget-object v19, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v20, "something wrong here"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_149
    .catchall {:try_start_11f .. :try_end_149} :catchall_14b

    .line 1121
    const/4 v15, 0x0

    goto :goto_119

    .line 1123
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_14b
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method private removeContainerFromDB(I)Z
    .registers 9
    .param p1, "containerId"    # I

    .prologue
    const/4 v6, -0x1

    .line 1675
    const/4 v2, 0x0

    .line 1676
    .local v2, "retVal":Z
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v1

    .line 1678
    .local v1, "ownerUid":I
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_13

    if-eq v1, v6, :cond_13

    .line 1680
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, v1}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_3f

    .line 1687
    :cond_13
    :goto_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeContainer(I)Z

    move-result v2

    .line 1688
    if-eqz v2, :cond_48

    .line 1689
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

    .line 1698
    :goto_33
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v3, :cond_3e

    if-eq v1, v6, :cond_3e

    .line 1700
    :try_start_39
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    invoke-interface {v3, p1, v1}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_6a

    .line 1706
    :cond_3e
    :goto_3e
    return v2

    .line 1681
    :catch_3f
    move-exception v0

    .line 1682
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Handled Exception in ContainerSubscriber"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 1691
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

    .line 1694
    :catch_61
    move-exception v0

    .line 1695
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at removeContainerFromDB "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 1701
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6a
    move-exception v0

    .line 1702
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
    .line 830
    sparse-switch p1, :sswitch_data_a

    .line 839
    .end local p1    # "status":I
    :goto_3
    return p1

    .line 835
    .restart local p1    # "status":I
    :sswitch_4
    const/16 p1, 0x5b

    goto :goto_3

    .line 837
    :sswitch_7
    const/16 p1, 0x5a

    goto :goto_3

    .line 830
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
    .line 1564
    const/4 v1, 0x0

    .line 1565
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1566
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1578
    .end local v1    # "success":Z
    .local v2, "success":I
    :goto_f
    return v2

    .line 1570
    .end local v2    # "success":I
    .restart local v1    # "success":Z
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 1573
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->activateContainer(I)Z

    move-result v1

    .line 1574
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

    .line 1578
    .restart local v2    # "success":I
    goto :goto_f

    .line 1575
    .end local v2    # "success":I
    :catch_33
    move-exception v0

    .line 1576
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
    .line 1044
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 1045
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

    .line 663
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_f

    .line 664
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_e
    :goto_e
    return v6

    .line 668
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 669
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v7, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v1

    .line 672
    .local v1, "getContainerizedPackageNameForVpn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 673
    .local v4, "pkgNames":[Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 674
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 675
    .local v3, "length":I
    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pkgNames":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 677
    .end local v3    # "length":I
    .restart local v4    # "pkgNames":[Ljava/lang/String;
    :cond_27
    if-nez v4, :cond_42

    .line 678
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

    .line 682
    :cond_42
    const/4 v6, 0x1

    .line 683
    .local v6, "retVal":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    array-length v7, v4

    if-ge v2, v7, :cond_e

    .line 684
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

    .line 685
    aget-object v7, v4, v2

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v0

    .line 686
    .local v0, "checkIfApplicationHasSystemUID":Z
    if-eqz v0, :cond_6c

    .line 683
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 689
    :cond_6c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-interface {v7, p1, v8, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v5

    .line 690
    .local v5, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v5, :cond_69

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    if-eqz v7, :cond_69

    .line 691
    const/4 v6, 0x0

    .line 694
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_e

    .line 695
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
    .line 563
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    if-nez v3, :cond_f

    .line 564
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "VpnService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v1, 0x0

    .line 582
    :cond_e
    :goto_e
    return v1

    .line 567
    :cond_f
    const/4 v1, 0x1

    .line 568
    .local v1, "retVal":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "transformedName":Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 571
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, v2, p3}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    .line 573
    .local v0, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-eqz v3, :cond_e

    .line 574
    const/4 v1, 0x0

    goto :goto_e

    .line 577
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

    .line 579
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public allowContactInfoToNonKnox(IZ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "isAllowed"    # Z

    .prologue
    .line 1715
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    move-result v1

    .line 1717
    .local v1, "callingUid":I
    const/4 v7, 0x0

    .line 1719
    .local v7, "retVal":Z
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ContainerSettings"

    const-string v4, "allowContactInfoToNonKnox"

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 1723
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.sec.knox.containeragent.bridge.allow2way"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "allow2way"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1725
    iget-object v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1727
    return v7
.end method

.method public createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z
    .registers 10
    .param p1, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .param p2, "flag"    # I

    .prologue
    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    if-nez v4, :cond_10

    .line 433
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerService is not yet ready!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 446
    .end local v2    # "success":Z
    .local v3, "success":I
    :goto_f
    return v3

    .line 437
    .end local v3    # "success":I
    .restart local v2    # "success":Z
    :cond_10
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission()I

    move-result v0

    .line 440
    .local v0, "adminUid":I
    :try_start_14
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    const/4 v6, -0x1

    invoke-direct {v5, p0, v0, v6, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v4, v5, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->createContainer(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;I)Z

    move-result v2

    .line 442
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

    .line 446
    .restart local v3    # "success":I
    goto :goto_f

    .line 443
    .end local v3    # "success":I
    :catch_3a
    move-exception v1

    .line 444
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
    .line 1051
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 1052
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
    .line 813
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 814
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v1, 0x0

    .line 826
    :goto_e
    return v1

    .line 818
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 820
    const/4 v1, 0x0

    .line 822
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->enforcePasswordChange(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 823
    :catch_1a
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API enforcePasswordChange "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public getActiveContainerId()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mActiveContainer:I

    return v0
.end method

.method public getAllPackagesForProfile(ILjava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "containerId"    # I
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v10

    if-nez v10, :cond_f

    .line 613
    sget-object v10, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v11, "VpnService is not yet ready!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v9, 0x0

    .line 641
    :cond_e
    :goto_e
    return-object v9

    .line 617
    :cond_f
    const/4 v9, 0x0

    .line 618
    .local v9, "retVal":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 620
    if-eqz p2, :cond_61

    .line 621
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v10

    invoke-interface {v10, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getAllPackagesForProfile(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v8

    .line 623
    .local v8, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v10

    if-nez v10, :cond_e

    .line 624
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 625
    .local v7, "packageNames":[Ljava/lang/String;
    array-length v10, v7

    new-array v9, v10, [Ljava/lang/String;

    .line 626
    const/4 v3, 0x0

    .line 627
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

    .line 628
    .local v6, "packageName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v10, p1, v6}, Lcom/sec/knox/container/IEnterpriseContainerService;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 630
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

    .line 631
    add-int/lit8 v3, v3, 0x1

    .line 627
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 635
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

    .line 638
    :catch_84
    move-exception v2

    .line 639
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
    .line 740
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 741
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    .line 757
    :cond_e
    :goto_e
    return v0

    .line 745
    :cond_f
    const/4 v0, 0x0

    .line 747
    .local v0, "containerId":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerId(I)I

    move-result v0

    .line 748
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
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_32

    .line 753
    :goto_2e
    if-gez v0, :cond_e

    .line 754
    const/4 v0, 0x0

    goto :goto_e

    .line 749
    :catch_32
    move-exception v1

    .line 750
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

    goto :goto_2e
.end method

.method public getContainerOwnerUid(I)I
    .registers 13
    .param p1, "containerId"    # I

    .prologue
    const/4 v10, -0x1

    .line 1433
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 1435
    .local v4, "ownerUid":I
    if-ne v10, v4, :cond_61

    .line 1436
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v9

    if-nez v9, :cond_18

    .line 1437
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "ContainerService is not yet ready!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1471
    .end local v4    # "ownerUid":I
    .local v5, "ownerUid":I
    :goto_17
    return v5

    .line 1442
    .end local v5    # "ownerUid":I
    .restart local v4    # "ownerUid":I
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1444
    .local v7, "token":J
    :try_start_1c
    iget-object v9, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v9}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v3

    .line 1445
    .local v3, "objs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    if-eqz v3, :cond_5e

    .line 1446
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

    .line 1447
    .local v2, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v9

    if-ne v9, p1, :cond_28

    .line 1448
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v9

    if-eq v9, v10, :cond_5e

    .line 1449
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getStatus(I)I

    move-result v6

    .line 1450
    .local v6, "status":I
    const/16 v9, 0x5d

    if-eq v6, v9, :cond_63

    const/16 v9, 0x5e

    if-eq v6, v9, :cond_63

    .line 1452
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Container owner information was missing from Edm DB - adding now."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v9

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->addContainerToDB(II)Z

    .line 1455
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_5d} :catch_6b
    .catchall {:try_start_1c .. :try_end_5d} :catchall_74

    move-result v4

    .line 1467
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

    .line 1471
    .end local v4    # "ownerUid":I
    .restart local v5    # "ownerUid":I
    goto :goto_17

    .line 1457
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

    .line 1464
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v3    # "objs":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v6    # "status":I
    :catch_6b
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6c
    sget-object v9, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v10, "Handled exception in getContainerOwnerUid()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_74

    goto :goto_5e

    .line 1467
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
    .line 516
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_f

    .line 517
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v4, 0x0

    .line 534
    :cond_e
    :goto_e
    return-object v4

    .line 520
    :cond_f
    const/4 v4, 0x0

    .line 522
    .local v4, "retVal":[Ljava/lang/String;
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getOriginalPackageNames(I)Ljava/util/List;

    move-result-object v3

    .line 523
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_e

    .line 524
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 525
    .local v2, "length":I
    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 526
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_e

    .line 528
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

    .line 531
    .end local v2    # "length":I
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_44
    move-exception v1

    .line 532
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
    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    if-eqz v1, :cond_13

    .line 478
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerType(I)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 484
    :goto_a
    return v1

    .line 480
    :catch_b
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API getContainerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
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
    .line 764
    if-lez p1, :cond_4

    if-nez p2, :cond_5

    .line 781
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p2

    .line 768
    .restart local p2    # "packageName":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_13

    .line 769
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 773
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_44

    .line 776
    :cond_21
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

    .line 778
    move-object v0, p2

    :cond_44
    move-object p2, v0

    .line 781
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
    .line 539
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_f

    .line 540
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v4, 0x0

    .line 557
    :cond_e
    :goto_e
    return-object v4

    .line 543
    :cond_f
    const/4 v4, 0x0

    .line 545
    .local v4, "retVal":[Ljava/lang/String;
    :try_start_10
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerPackages(I)Ljava/util/List;

    move-result-object v3

    .line 546
    .local v3, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_e

    .line 547
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 548
    .local v2, "length":I
    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 549
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    goto :goto_e

    .line 551
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

    .line 554
    .end local v2    # "length":I
    .end local v3    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_44
    move-exception v1

    .line 555
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
    .line 1359
    if-gtz p1, :cond_4

    move-object v1, p2

    .line 1375
    :goto_3
    return-object v1

    .line 1363
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

    .line 1364
    .local v1, "retVal":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_2f

    .line 1365
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1370
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
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

    .line 1372
    :catch_4e
    move-exception v0

    .line 1373
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
    .line 1397
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1398
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v1, -0x1

    .line 1409
    :goto_e
    return v1

    .line 1402
    :cond_f
    const/4 v1, -0x1

    .line 1404
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1405
    :catch_17
    move-exception v0

    .line 1406
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
    .line 1218
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1219
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-wide/16 v1, -0x1

    .line 1229
    :goto_f
    return-wide v1

    .line 1223
    :cond_10
    const-wide/16 v1, -0x1

    .line 1225
    .local v1, "retVal":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMaximumTimeToLock(ILandroid/content/ComponentName;)J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-wide v1

    goto :goto_f

    .line 1226
    :catch_19
    move-exception v0

    .line 1227
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
    .line 1308
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1309
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/4 v1, 0x0

    .line 1319
    :goto_e
    return v1

    .line 1313
    :cond_f
    const/4 v1, 0x0

    .line 1315
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMinPasswordComplexChars(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1316
    :catch_17
    move-exception v0

    .line 1317
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
    .line 489
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_f

    .line 490
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v5, 0x0

    .line 511
    :goto_e
    return-object v5

    .line 494
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 495
    .local v1, "callingUid":I
    const/4 v5, 0x0

    .line 497
    .local v5, "retVal":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_14
    iget-object v7, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v7}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainers()Ljava/util/List;

    move-result-object v6

    .line 498
    .local v6, "retVal2":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 499
    .local v4, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v7

    if-eq v7, v1, :cond_1e

    .line 500
    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_33} :catch_34

    goto :goto_1e

    .line 508
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v6    # "retVal2":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :catch_34
    move-exception v2

    .line 509
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "Failed at EnterpriseContainerPolicy API getOwnContainers "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 503
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "retVal2":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_3d
    if-eqz v6, :cond_54

    :try_start_3f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_54

    .line 504
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-object v5, v0

    goto :goto_e

    .line 506
    :cond_54
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "No containers!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5b} :catch_34

    goto :goto_e
.end method

.method public getPasswordEnabledContainerLockTimeout(I)J
    .registers 7
    .param p1, "containerId"    # I

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1275
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-wide/16 v1, -0x1

    .line 1285
    :goto_f
    return-wide v1

    .line 1279
    :cond_10
    const-wide/16 v1, -0x1

    .line 1281
    .local v1, "retVal":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordEnabledContainerLockTimeout(I)J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-wide v1

    goto :goto_f

    .line 1282
    :catch_19
    move-exception v0

    .line 1283
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
    .line 1149
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1150
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v1, 0x0

    .line 1160
    :goto_e
    return v1

    .line 1154
    :cond_f
    const/4 v1, 0x0

    .line 1156
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordExpires(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1157
    :catch_17
    move-exception v0

    .line 1158
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
    .line 1183
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1184
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v1, 0x0

    .line 1194
    :goto_e
    return v1

    .line 1188
    :cond_f
    const/4 v1, 0x0

    .line 1190
    .local v1, "retVal":I
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordHistory(ILandroid/content/ComponentName;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1191
    :catch_17
    move-exception v0

    .line 1192
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
    .line 1546
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1547
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v1, 0x0

    .line 1559
    :goto_e
    return v1

    .line 1551
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1553
    const/4 v1, 0x0

    .line 1555
    .local v1, "length":I
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordMinimumLength(ILandroid/content/ComponentName;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 1556
    :catch_1a
    move-exception v0

    .line 1557
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
    .line 1510
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1511
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/4 v1, 0x0

    .line 1523
    :goto_e
    return v1

    .line 1515
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1517
    const/4 v1, 0x0

    .line 1519
    .local v1, "quality":I
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getPasswordQuality(ILandroid/content/ComponentName;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 1520
    :catch_1a
    move-exception v0

    .line 1521
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
    .line 845
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 846
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v1, -0x1

    .line 856
    :goto_e
    return v1

    .line 850
    :cond_f
    const/4 v1, 0x0

    .line 852
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

    .line 853
    :catch_1b
    move-exception v0

    .line 854
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
    .line 898
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    if-nez v0, :cond_f

    .line 899
    sget-object v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ContainerService is not yet ready!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v8, 0x0

    .line 917
    :goto_e
    return v8

    .line 903
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    move-result v6

    .line 905
    .local v6, "adminUid":I
    if-nez p2, :cond_1d

    .line 906
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL apk file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_1d
    const/4 v8, 0x0

    .line 911
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

    .line 914
    :catch_2e
    move-exception v7

    .line 915
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
    .line 1476
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1477
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v1, 0x1

    .line 1489
    :goto_e
    return v1

    .line 1481
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1483
    const/4 v1, 0x1

    .line 1485
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->isActivePasswordSufficient(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 1486
    :catch_1a
    move-exception v0

    .line 1487
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
    .line 1413
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1414
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "ContainerService is not yet ready!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v1, 0x1

    .line 1428
    :goto_e
    return v1

    .line 1418
    :cond_f
    const/4 v1, 0x1

    .line 1419
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1421
    .local v2, "uid":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lcom/sec/knox/container/IEnterpriseContainerService;->getAllowCamera(ILandroid/content/ComponentName;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1f
    .catchall {:try_start_14 .. :try_end_1a} :catchall_28

    move-result v1

    .line 1425
    :goto_1b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    .line 1422
    :catch_1f
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/Exception;
    :try_start_20
    sget-object v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed at EnterpriseContainerPolicy API getAllowCamera()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_1b

    .line 1425
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
    .line 1737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1739
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 1742
    .local v2, "retVal":Z
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerSettings"

    const-string v5, "allowContactInfoToNonKnox"

    invoke-virtual {v3, v0, p1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    move-result v2

    .line 1751
    :goto_f
    return v2

    .line 1746
    :catch_10
    move-exception v1

    .line 1747
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
    .line 129
    iget-boolean v0, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mKnoxMode:Z

    return v0
.end method

.method public isPasswordVisibilityEnabled(I)Z
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1343
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v1, 0x0

    .line 1353
    :goto_e
    return v1

    .line 1347
    :cond_f
    const/4 v1, 0x0

    .line 1349
    .local v1, "retVal":Z
    :try_start_10
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->isPasswordVisisbilityEnabled(I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result v1

    goto :goto_e

    .line 1350
    :catch_17
    move-exception v0

    .line 1351
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
    .line 861
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 862
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v1, 0x0

    .line 874
    :goto_e
    return v1

    .line 866
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 868
    const/4 v1, 0x0

    .line 870
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->lockContainer(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 871
    :catch_1a
    move-exception v0

    .line 872
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
    .line 1605
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1610
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 10
    .param p1, "uid"    # I

    .prologue
    .line 1619
    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_5

    .line 1649
    :cond_4
    :goto_4
    return-void

    .line 1624
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1625
    .local v1, "containerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2c

    .line 1626
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

    .line 1630
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_3a

    .line 1631
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1635
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

    .line 1636
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1638
    :try_start_59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1639
    .local v0, "containerId":I
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v6, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v5, v0, v6}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v4

    .line 1641
    .local v4, "retVal":Z
    if-eqz v4, :cond_75

    .line 1642
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v4

    .line 1644
    :cond_75
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContainerService.removeContainer("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_97} :catch_9a

    .line 1636
    .end local v0    # "containerId":I
    .end local v4    # "retVal":Z
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 1645
    :catch_9a
    move-exception v2

    .line 1646
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_97
.end method

.method public removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "statusCallback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_f

    .line 452
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v2, 0x0

    .line 471
    :goto_e
    return v2

    .line 456
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    .line 458
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 460
    .local v2, "retVal":Z
    :try_start_14
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v3, p1, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->removeContainer(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    move-result v2

    .line 462
    if-eqz v2, :cond_2d

    .line 463
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removeContainer: Request sent to ContainerService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->removeContainerFromDB(I)Z

    move-result v2

    goto :goto_e

    .line 466
    :cond_2d
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "removeContainer: Request failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_34} :catch_35

    goto :goto_e

    .line 468
    :catch_35
    move-exception v1

    .line 469
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
    .line 705
    const/4 v3, 0x0

    .line 706
    .local v3, "pkgNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 707
    .local v5, "retVal":Z
    const/4 v4, 0x0

    .line 708
    .local v4, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v7

    if-nez v7, :cond_12

    .line 709
    sget-object v7, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v8, "ContainerService is not yet ready!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 735
    .end local v5    # "retVal":Z
    .local v6, "retVal":I
    :goto_11
    return v6

    .line 712
    .end local v6    # "retVal":I
    .restart local v5    # "retVal":Z
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 713
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->containerPackageListFromVpnDatabase(I)[Ljava/lang/String;

    move-result-object v3

    .line 714
    if-eqz v3, :cond_8a

    .line 715
    array-length v2, v3

    .line 716
    .local v2, "packageListSize":I
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

    .line 717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    if-ge v1, v2, :cond_a5

    .line 718
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

    .line 719
    aget-object v7, v3, v1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v0

    .line 720
    .local v0, "checkIfApplicationHasSystemUID":Z
    if-eqz v0, :cond_74

    .line 717
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 723
    :cond_74
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v7

    aget-object v8, v3, v1

    invoke-interface {v7, p1, v8}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v4

    .line 724
    if-eqz v4, :cond_88

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v7

    if-eqz v7, :cond_88

    .line 725
    const/4 v5, 0x0

    goto :goto_71

    .line 728
    :cond_88
    const/4 v5, 0x1

    goto :goto_71

    .line 732
    .end local v0    # "checkIfApplicationHasSystemUID":Z
    .end local v1    # "i":I
    .end local v2    # "packageListSize":I
    :cond_8a
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

    .line 733
    .restart local v6    # "retVal":I
    goto/16 :goto_11

    .end local v6    # "retVal":I
    .restart local v1    # "i":I
    .restart local v2    # "packageListSize":I
    :cond_a5
    move v6, v5

    .line 735
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
    .line 588
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    if-nez v3, :cond_f

    .line 589
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "VpnService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .line 607
    :cond_e
    :goto_e
    return v1

    .line 592
    :cond_f
    const/4 v1, 0x1

    .line 593
    .local v1, "retVal":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceVpnPermission(I)I

    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "transformedName":Ljava/lang/String;
    if-eqz v2, :cond_2b

    .line 596
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getVpnPolicy()Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v0

    .line 598
    .local v0, "respData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v3

    if-eqz v3, :cond_e

    .line 599
    const/4 v1, 0x0

    goto :goto_e

    .line 602
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

    .line 604
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public resetPassword(I)Z
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1583
    const/4 v1, 0x0

    .line 1584
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1585
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1597
    .end local v1    # "success":Z
    .local v2, "success":I
    :goto_f
    return v2

    .line 1589
    .end local v2    # "success":I
    .restart local v1    # "success":Z
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 1592
    :try_start_13
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->adminPasswordReset(I)Z

    move-result v1

    .line 1593
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

    .line 1597
    .restart local v2    # "success":I
    goto :goto_f

    .line 1594
    .end local v2    # "success":I
    :catch_33
    move-exception v0

    .line 1595
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

    .line 1381
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1382
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_e
    return v1

    .line 1387
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMaximumFailedPasswordsForDisable(ILandroid/content/ComponentName;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_16

    .line 1388
    const/4 v1, 0x1

    goto :goto_e

    .line 1389
    :catch_16
    move-exception v0

    .line 1390
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

    .line 1200
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1201
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_e
    return v1

    .line 1205
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1208
    :try_start_12
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMaximumTimeToLock(ILandroid/content/ComponentName;J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    .line 1209
    const/4 v1, 0x1

    goto :goto_e

    .line 1210
    :catch_19
    move-exception v0

    .line 1211
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
    .line 1291
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1292
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :goto_d
    return-void

    .line 1296
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1299
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setMinPasswordComplexChars(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1300
    :catch_17
    move-exception v0

    .line 1301
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseContainerPolicy API setMinPasswordComplexChars "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setPasswordEnabledContainerLockTimeout(IJ)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1242
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v5

    if-nez v5, :cond_f

    .line 1243
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "ContainerService is not yet ready!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :goto_e
    return v4

    .line 1247
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1249
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    move-result v0

    .line 1250
    .local v0, "callingUid":I
    const/4 v3, 0x0

    .line 1251
    .local v3, "retVal":Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1252
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "passwordEnabledContainerLockTimeout"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1253
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CONTAINER"

    invoke-virtual {v5, v0, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 1256
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v5, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordEnabledContainerLockTimeout(IJ)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_34

    .line 1257
    const/4 v4, 0x1

    goto :goto_e

    .line 1258
    :catch_34
    move-exception v2

    .line 1259
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed at EnterpriseContainerPolicy API setPasswordEnabledContainerLockTimeout "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    .line 1132
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1133
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_d
    return-void

    .line 1137
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1140
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordExpires(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1141
    :catch_17
    move-exception v0

    .line 1142
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
    .line 1166
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1167
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_d
    return-void

    .line 1171
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1174
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordHistory(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1175
    :catch_17
    move-exception v0

    .line 1176
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
    .line 1529
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1530
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :goto_d
    return-void

    .line 1534
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1537
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordMinimumLength(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1538
    :catch_17
    move-exception v0

    .line 1539
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
    .line 1494
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1495
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_d
    return-void

    .line 1499
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1502
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordQuality(ILandroid/content/ComponentName;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1503
    :catch_17
    move-exception v0

    .line 1504
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
    .line 1325
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1326
    sget-object v1, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ContainerService is not yet ready!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :goto_d
    return-void

    .line 1330
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforcePasswordPermission(I)I

    .line 1333
    :try_start_11
    iget-object v1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v1, p1, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->setPasswordVisibilityEnabled(IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_d

    .line 1334
    :catch_17
    move-exception v0

    .line 1335
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
    .line 390
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerSubscriber:Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 391
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
    .line 962
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 963
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v1, 0x0

    .line 975
    :goto_e
    return v1

    .line 967
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 969
    const/4 v1, 0x0

    .line 971
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/sec/knox/container/IEnterpriseContainerService;->startApp(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 972
    :catch_1a
    move-exception v0

    .line 973
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
    .line 943
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 944
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v1, 0x0

    .line 956
    :goto_e
    return v1

    .line 948
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 950
    const/4 v1, 0x0

    .line 952
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->stopApp(ILjava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 953
    :catch_1a
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at EnterpriseContainerPolicy API stopApp "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1615
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
    .line 923
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_f

    .line 924
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v2, 0x0

    .line 938
    :goto_e
    return v2

    .line 928
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    move-result v0

    .line 930
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 932
    .local v2, "retVal":Z
    :try_start_14
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2}, Lcom/sec/knox/container/IEnterpriseContainerService;->getContainerisedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 933
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    new-instance v4, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;

    invoke-direct {v4, p0, v0, p1, p3}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$ContainerServiceCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;IILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    invoke-interface {v3, p1, p2, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->uninstallPackages(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_26

    move-result v2

    goto :goto_e

    .line 935
    :catch_26
    move-exception v1

    .line 936
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
    .line 879
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v2

    if-nez v2, :cond_f

    .line 880
    sget-object v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ContainerService is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v1, 0x0

    .line 892
    :goto_e
    return v1

    .line 884
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceEnterpriseContainerPermission(I)I

    .line 886
    const/4 v1, 0x0

    .line 888
    .local v1, "retVal":Z
    :try_start_13
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v2, p1}, Lcom/sec/knox/container/IEnterpriseContainerService;->unlockContainer(I)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_e

    .line 889
    :catch_1a
    move-exception v0

    .line 890
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
    .line 786
    invoke-direct {p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->getService()Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v3

    if-nez v3, :cond_f

    .line 787
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "ContainerService is not yet ready!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v2, -0x1

    .line 808
    :goto_e
    return v2

    .line 791
    :cond_f
    const/4 v2, 0x0

    .line 793
    .local v2, "retVal":I
    :try_start_10
    new-instance v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;-><init>(Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;I)V

    .line 794
    .local v0, "cb":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    iget-object v3, p0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->mContainerService:Lcom/sec/knox/container/IEnterpriseContainerService;

    invoke-interface {v3, p1, p2, v0}, Lcom/sec/knox/container/IEnterpriseContainerService;->verifyPassword(ILjava/lang/String;Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)V

    .line 795
    monitor-enter v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_2f

    .line 796
    :goto_1b
    :try_start_1b
    iget-boolean v3, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mFinished:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_2c

    if-nez v3, :cond_38

    .line 798
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_2c

    goto :goto_1b

    .line 799
    :catch_23
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_24
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at ContainerService API verifyPassword "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 804
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

    .line 805
    .end local v0    # "cb":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    :catch_2f
    move-exception v1

    .line 806
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at EnterpriseContainerPolicy API verifyPassword "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 803
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cb":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;
    :cond_38
    :try_start_38
    iget v2, v0, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy$PasswordCallback;->mResult:I

    .line 804
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
    .line 981
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->enforceAppPermission(I)I

    .line 983
    const/16 v16, 0x0

    .line 984
    .local v16, "retVal":Z
    const/4 v13, 0x0

    .line 985
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

    .line 990
    .local v8, "destFile":Ljava/lang/String;
    :try_start_39
    monitor-enter p0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_f8
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3a} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3a} :catch_120
    .catchall {:try_start_39 .. :try_end_3a} :catchall_134

    .line 991
    if-nez p5, :cond_94

    .line 992
    :try_start_3c
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

    .line 993
    .local v4, "command":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v7, "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 995
    .local v6, "commandArray":[Ljava/lang/String;
    move-object v3, v6

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_61
    if-ge v11, v12, :cond_6b

    aget-object v5, v3, v11

    .line 996
    .local v5, "commandArg":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    add-int/lit8 v11, v11, 0x1

    goto :goto_61

    .line 999
    .end local v5    # "commandArg":Ljava/lang/String;
    :cond_6b
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

    .line 1001
    .local v15, "process":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->waitFor()I

    .line 1003
    const-wide/16 v17, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 1008
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "command":Ljava/lang/String;
    .end local v6    # "commandArray":[Ljava/lang/String;
    .end local v7    # "commandStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "process":Ljava/lang/Process;
    :cond_94
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v10, "f":Ljava/io/File;
    if-eqz p4, :cond_d5

    .line 1010
    new-instance v14, Ljava/io/FileOutputStream;

    move/from16 v0, p5

    invoke-direct {v14, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a2
    .catchall {:try_start_3c .. :try_end_a2} :catchall_f5

    .line 1011
    .end local v13    # "out":Ljava/io/OutputStream;
    .local v14, "out":Ljava/io/OutputStream;
    :try_start_a2
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1012
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
    :try_end_ca
    .catchall {:try_start_a2 .. :try_end_ca} :catchall_140

    move-object v13, v14

    .line 1020
    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    :cond_cb
    :goto_cb
    const/16 v16, 0x1

    .line 1021
    :try_start_cd
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_f5

    .line 1030
    if-eqz v13, :cond_d4

    .line 1032
    :try_start_d0
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_13e

    .line 1035
    .end local v10    # "f":Ljava/io/File;
    :goto_d3
    const/4 v13, 0x0

    .line 1039
    :cond_d4
    return v16

    .line 1014
    .restart local v10    # "f":Ljava/io/File;
    :cond_d5
    if-nez p5, :cond_cb

    .line 1015
    :try_start_d7
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1016
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

    goto :goto_cb

    .line 1021
    .end local v10    # "f":Ljava/io/File;
    :catchall_f5
    move-exception v17

    :goto_f6
    monitor-exit p0
    :try_end_f7
    .catchall {:try_start_d7 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v17
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_f8} :catch_f8
    .catch Ljava/lang/InterruptedException; {:try_start_f7 .. :try_end_f8} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_f8} :catch_120
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_134

    .line 1023
    :catch_f8
    move-exception v9

    .line 1024
    .local v9, "e":Ljava/io/IOException;
    :try_start_f9
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "IOException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_f9 .. :try_end_104} :catchall_134

    .line 1030
    if-eqz v13, :cond_d4

    .line 1032
    :try_start_106
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_d3

    .line 1033
    :catch_10a
    move-exception v17

    goto :goto_d3

    .line 1025
    .end local v9    # "e":Ljava/io/IOException;
    :catch_10c
    move-exception v9

    .line 1026
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_10d
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "InterruptedException createsystemfile command failed "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_118
    .catchall {:try_start_10d .. :try_end_118} :catchall_134

    .line 1030
    if-eqz v13, :cond_d4

    .line 1032
    :try_start_11a
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11d} :catch_11e

    goto :goto_d3

    .line 1033
    :catch_11e
    move-exception v17

    goto :goto_d3

    .line 1027
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catch_120
    move-exception v9

    .line 1028
    .local v9, "e":Ljava/lang/Exception;
    :try_start_121
    sget-object v17, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->TAG:Ljava/lang/String;

    const-string v18, "Failed at EnterpriseContainerPolicy API writeData "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_134

    .line 1030
    if-eqz v13, :cond_d4

    .line 1032
    :try_start_12e
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_d3

    .line 1033
    :catch_132
    move-exception v17

    goto :goto_d3

    .line 1030
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_134
    move-exception v17

    if-eqz v13, :cond_13b

    .line 1032
    :try_start_137
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13a} :catch_13c

    .line 1035
    :goto_13a
    const/4 v13, 0x0

    .line 1030
    :cond_13b
    throw v17

    .line 1033
    :catch_13c
    move-exception v18

    goto :goto_13a

    .restart local v10    # "f":Ljava/io/File;
    :catch_13e
    move-exception v17

    goto :goto_d3

    .line 1021
    .end local v13    # "out":Ljava/io/OutputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    :catchall_140
    move-exception v17

    move-object v13, v14

    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    goto :goto_f6
.end method
