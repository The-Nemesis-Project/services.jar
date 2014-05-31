.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION:Ljava/lang/String; = "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

.field private static final ACTIVATE_DEVICE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

.field private static final EXCLUDED_ADMINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LICENSE_EXPIRATION_GRACE_PERIOD:J = 0x9a7ec800L

.field private static final MIN_PERSONA_ID:I = 0x64

.field private static final MY_PID:I

.field private static final PROXY_ADMIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_DIR:Ljava/lang/String; = "/data/app/selfUpdateApks"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/app/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final SILENT_ACTIVATION_PERMISION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field public static final UMC_PACKAGENAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mCurrentUserId:I

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;

.field private static mServicesAdded:Z


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirstInitializedPolicyServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLMS:Lcom/android/server/enterprise/log/LogManagerService;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 232
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.esdk.elm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    .line 244
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    .line 253
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    .line 258
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    .line 266
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;
    .param p3, "dpm"    # Landroid/app/admin/IDevicePolicyManager;

    .prologue
    const/4 v8, 0x1

    .line 1543
    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;-><init>()V

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    .line 264
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    .line 383
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1544
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 1545
    new-instance v4, Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {v4, p1, p0}, Lcom/android/server/enterprise/log/LogManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    .line 1546
    const-string v4, "log_manager_service"

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1547
    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 1548
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    .line 1549
    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1550
    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    .line 1551
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    .line 1552
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5, v6, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1553
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    sput-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 1554
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    .line 1556
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1557
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    const-string v4, "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1560
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1563
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1566
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isFirmwareChanged()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1567
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "handleUpgrade: Checking Upgrade..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    .line 1569
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 1572
    :cond_9c
    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-direct {v2, v4, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    .line 1573
    .local v2, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "enterprise_license_policy"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1574
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "enterprise_license_policy"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v5, "enterprise_license_policy"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    .line 1578
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "application_policy"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1579
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "application_policy"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v5, "application_policy"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1585
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v2, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 1586
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v5, "wifi_policy"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1587
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v5, "wifi_policy"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string/jumbo v5, "wifi_policy"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    .line 1591
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "phone_restriction_policy"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1592
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "phone_restriction_policy"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v5, "phone_restriction_policy"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    .line 1596
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "remoteinjection"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1597
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "remoteinjection"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v5, "remoteinjection"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 1601
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_163

    .line 1602
    new-instance v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;-><init>(Landroid/content/Context;)V

    .line 1603
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "mum_container_policy"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1604
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "mum_container_policy"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    :cond_163
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v5, "mum_container_policy"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v2, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .end local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;-><init>(Landroid/content/Context;)V

    .line 1611
    .restart local v2    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v5, "knox_timakeystore_policy"

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1612
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v5, "knox_timakeystore_policy"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v4

    if-eqz v4, :cond_189

    .line 1615
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    .line 1616
    :cond_189
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices()V

    return-void
.end method

.method static synthetic access$1200()Landroid/os/ConditionVariable;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V

    return-void
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 209
    sput p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleLicenseExpiryCheckNotification()V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V

    return-void
.end method

.method static synthetic access$900()Landroid/content/ComponentName;
    .registers 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$902(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 1
    .param p0, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 209
    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .registers 20
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .prologue
    .line 666
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 667
    .local v12, "userHandle":I
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Activating admin on user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v2

    .line 670
    .local v2, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v2, :cond_41

    .line 671
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad admin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 674
    :cond_41
    const-string v13, "restriction_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 675
    .local v9, "restrictionService":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v9, :cond_5d

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkAdminActivationEnabled(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5d

    .line 676
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Admin cannot be activated"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 679
    :cond_5d
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v13

    if-eqz v13, :cond_72

    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_72

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 683
    :cond_72
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    .line 684
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 685
    .local v11, "uid":I
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 686
    .local v3, "compName":Landroid/content/ComponentName;
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin uid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Component name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    monitor-enter p0

    .line 688
    :try_start_a6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_159

    move-result-wide v6

    .line 689
    .local v6, "ident":J
    const/4 v10, 0x1

    .line 691
    .local v10, "ret":Z
    if-nez p2, :cond_d5

    :try_start_ad
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v13

    if-eqz v13, :cond_d5

    .line 692
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Admin is already added"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c1} :catch_c1
    .catchall {:try_start_ad .. :try_end_c1} :catchall_154

    .line 720
    :catch_c1
    move-exception v4

    .line 721
    .local v4, "e":Ljava/lang/Exception;
    :try_start_c2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_154

    .line 725
    :try_start_c5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_c8
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v11, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 730
    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_c5 .. :try_end_d4} :catchall_159

    .line 731
    return-void

    .line 695
    :cond_d5
    if-nez p2, :cond_11a

    .line 696
    :try_start_d7
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding admin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to lists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v11, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v10

    .line 704
    :cond_11a
    if-nez v10, :cond_15c

    .line 705
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing admin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from lists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Unable to activate admin"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_154} :catch_c1
    .catchall {:try_start_d7 .. :try_end_154} :catchall_154

    .line 725
    :catchall_154
    move-exception v13

    :try_start_155
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 730
    .end local v6    # "ident":J
    .end local v10    # "ret":Z
    :catchall_159
    move-exception v13

    monitor-exit p0
    :try_end_15b
    .catchall {:try_start_155 .. :try_end_15b} :catchall_159

    throw v13

    .line 711
    .restart local v6    # "ident":J
    .restart local v10    # "ret":Z
    :cond_15c
    :try_start_15c
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_166
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 712
    .local v8, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v13, v11}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_166

    .line 717
    .end local v8    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_17c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v13, v0, v1, v12}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 718
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "Admin added to DPM!"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_191} :catch_c1
    .catchall {:try_start_15c .. :try_end_191} :catchall_154

    .line 725
    :try_start_191
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_194
    .catchall {:try_start_191 .. :try_end_194} :catchall_159

    goto/16 :goto_c8
.end method

.method private addServices()V
    .registers 15

    .prologue
    .line 1619
    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "Adding Services..."

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    :try_start_7
    new-instance v7, Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 1623
    .local v7, "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "device_info"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1624
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "device_info"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1626
    new-instance v7, Lcom/android/server/enterprise/license/LicenseLogService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    .line 1627
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "license_log_service"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1628
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "license_log_service"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    new-instance v7, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    .line 1632
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "auditlog"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1633
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "auditlog"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    new-instance v7, Lcom/android/server/enterprise/seandroid/SEAndroidService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/seandroid/SEAndroidService;-><init>(Landroid/content/Context;)V

    .line 1636
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "seandroid_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1637
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "seandroid_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string v11, "edm_proxy"

    new-instance v12, Lcom/android/server/enterprise/EDMProxyService;

    invoke-direct {v12}, Lcom/android/server/enterprise/EDMProxyService;-><init>()V

    invoke-static {v11, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1646
    new-instance v7, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 1647
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "eas_account_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1648
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "eas_account_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    new-instance v7, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 1651
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "email_account_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1652
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "email_account_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    new-instance v7, Lcom/android/server/enterprise/location/LocationPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    .line 1655
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "location_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1656
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "location_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    new-instance v7, Lcom/android/server/enterprise/general/MiscPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    .line 1659
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "misc_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1660
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "misc_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    new-instance v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    .line 1663
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1664
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    new-instance v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 1667
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "enterprise_vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1668
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    const-string v11, "application_policy"

    invoke-static {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1671
    .local v1, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string/jumbo v11, "vpn_policy"

    invoke-static {v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 1672
    .local v10, "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    new-instance v7, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11, v1, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/vpn/VpnInfoPolicy;)V

    .line 1673
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "restriction_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1674
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "restriction_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v7, Lcom/android/server/enterprise/security/PasswordPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    .line 1677
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "password_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1678
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "password_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    new-instance v7, Lcom/android/server/enterprise/security/SecurityPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    .line 1681
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "security_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1682
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "security_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    new-instance v7, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    .line 1685
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "roaming_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1686
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "roaming_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1688
    new-instance v7, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    .line 1689
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "bluetooth_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1690
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "bluetooth_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    new-instance v7, Lcom/android/server/enterprise/email/EmailPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    .line 1694
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "email_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1695
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "email_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    new-instance v7, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V

    .line 1699
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "firewall_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1700
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "firewall_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    const-string v11, "1"

    const-string v12, "ro.config.knox"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1704
    .local v6, "knoxvpnV1Enabled":Z
    const-string/jumbo v11, "v30"

    const-string v12, "ro.config.knox"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1705
    .local v5, "knoxVpnV2Enabled":Z
    if-eqz v6, :cond_46a

    .line 1706
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV1;-><init>(Landroid/content/Context;)V

    .line 1707
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "enterprise_premium_vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1708
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_premium_vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    :cond_1e1
    :goto_1e1
    if-eqz v6, :cond_4a5

    .line 1718
    new-instance v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;-><init>(Landroid/content/Context;)V

    .line 1719
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "generic_vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1720
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "generic_vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    :cond_1fa
    :goto_1fa
    new-instance v7, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V

    .line 1730
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "enterprise_sso_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1731
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_sso_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    new-instance v7, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/sso/EnterpriseUserSpaceSSOPolicy;-><init>(Landroid/content/Context;)V

    .line 1734
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "enterprise_user_space_sso_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1735
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_user_space_sso_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v11}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;-><init>(Landroid/content/Context;)V

    .line 1739
    .local v2, "containerPolicy":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    invoke-virtual {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->setSubscriber(Lcom/android/server/enterprise/EnterpriseContainerSubscriber;)V

    .line 1740
    const-string v11, "enterprise_container_policy"

    invoke-static {v11, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1741
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_container_policy"

    invoke-interface {v11, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v9

    .line 1744
    .local v9, "versionInfo":Landroid/os/Bundle;
    const-string v11, "2.0"

    const-string/jumbo v12, "version"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_268

    .line 1745
    new-instance v7, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;-><init>(Landroid/content/Context;)V

    .line 1746
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "mum_container_rcp_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1747
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "mum_container_rcp_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    :cond_268
    new-instance v7, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;-><init>(Landroid/content/Context;)V

    .line 1752
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "enterprise_isl_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1753
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_isl_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    new-instance v7, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    .line 1757
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "certificate_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1758
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "certificate_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    new-instance v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    .line 1762
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "apn_settings_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1763
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "apn_settings_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    new-instance v7, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 1766
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "browser_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1767
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "browser_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    new-instance v7, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    .line 1773
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "date_time_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1774
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "date_time_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    new-instance v7, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 1777
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "kioskmode"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1778
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "kioskmode"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    new-instance v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    .line 1781
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "apppermission_control_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1782
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "apppermission_control_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    new-instance v7, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 1786
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "ldap_account_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1787
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "ldap_account_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    new-instance v7, Lcom/android/server/enterprise/lso/LSOService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    .line 1790
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v12

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1791
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    new-instance v7, Lcom/android/server/enterprise/geofencing/GeofenceService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    .line 1794
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "geofencing"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1795
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "geofencing"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    new-instance v7, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    .line 1798
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "device_account_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1799
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "device_account_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    new-instance v7, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;-><init>(Landroid/content/Context;)V

    .line 1802
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "dualsim_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1803
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "dualsim_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v7, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V

    .line 1808
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "smartcard_email_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1809
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "smartcard_email_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    new-instance v7, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V

    .line 1812
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "smartcard_vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1813
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "smartcard_vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    new-instance v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V

    .line 1816
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "smartcard_browser_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1817
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "smartcard_browser_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    new-instance v7, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V

    .line 1820
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "smartcard_lockscreen_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1821
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "smartcard_lockscreen_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    new-instance v7, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;-><init>(Landroid/content/Context;)V

    .line 1824
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string/jumbo v12, "smartcard_access_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1825
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string/jumbo v12, "smartcard_access_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    new-instance v7, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    .line 1829
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "bluetooth_secure_mode_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1830
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "bluetooth_secure_mode_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    new-instance v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;-><init>(Landroid/content/Context;)V

    .line 1834
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "knox_ccm_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1835
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "knox_ccm_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_42c
    const/4 v11, 0x3

    if-gt v4, v11, :cond_4c0

    .line 1840
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sec.clipboard"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1841
    .local v8, "sn":Ljava/lang/String;
    new-instance v11, Lcom/android/server/ClipboardService;

    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1843
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sec.clipboardEx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1839
    add-int/lit8 v4, v4, 0x1

    goto :goto_42c

    .line 1709
    .end local v2    # "containerPolicy":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .end local v4    # "i":I
    .end local v8    # "sn":Ljava/lang/String;
    .end local v9    # "versionInfo":Landroid/os/Bundle;
    :cond_46a
    if-eqz v5, :cond_1e1

    .line 1710
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;-><init>(Landroid/content/Context;)V

    .line 1711
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "enterprise_premium_vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1712
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "enterprise_premium_vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_483
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_483} :catch_485

    goto/16 :goto_1e1

    .line 1859
    .end local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v5    # "knoxVpnV2Enabled":Z
    .end local v6    # "knoxvpnV1Enabled":Z
    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .end local v10    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :catch_485
    move-exception v3

    .line 1860
    .local v3, "e":Ljava/lang/Throwable;
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure creating Policy services"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1864
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_4a1
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    .line 1865
    return-void

    .line 1721
    .restart local v1    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .restart local v5    # "knoxVpnV2Enabled":Z
    .restart local v6    # "knoxvpnV1Enabled":Z
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    .restart local v10    # "vpnService":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    :cond_4a5
    if-eqz v5, :cond_1fa

    .line 1722
    :try_start_4a7
    new-instance v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;-><init>(Landroid/content/Context;)V

    .line 1723
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "knox_vpn_policy"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1724
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "knox_vpn_policy"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1fa

    .line 1849
    .restart local v2    # "containerPolicy":Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;
    .restart local v4    # "i":I
    .restart local v9    # "versionInfo":Landroid/os/Bundle;
    :cond_4c0
    new-instance v7, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    .line 1850
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "multi_user_manager_service"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1851
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "multi_user_manager_service"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    new-instance v7, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .end local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 1855
    .restart local v7    # "policyService":Lcom/android/server/enterprise/EnterpriseServiceCallback;
    const-string v12, "knoxcustom"

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object v11, v0

    invoke-static {v12, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1856
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v12, "knoxcustom"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4ee
    .catch Ljava/lang/Throwable; {:try_start_4a7 .. :try_end_4ee} :catch_485

    goto :goto_4a1
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1494
    .local v3, "ident":J
    :try_start_4
    const-string v9, "enterprise_license_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 1495
    .local v8, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v8, :cond_44

    .line 1496
    invoke-virtual {v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    .line 1497
    .local v7, "list":[Landroid/app/enterprise/license/LicenseInfo;
    move-object v0, v7

    .local v0, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v6, :cond_44

    aget-object v5, v0, v2

    .line 1498
    .local v5, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v5}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_2b
    .catchall {:try_start_4 .. :try_end_20} :catchall_49

    move-result v9

    if-eqz v9, :cond_28

    .line 1499
    const/4 v9, 0x1

    .line 1506
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v5    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :goto_27
    return v9

    .line 1497
    .restart local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v2    # "i$":I
    .restart local v5    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "len$":I
    .restart local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1503
    .end local v0    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v2    # "i$":I
    .end local v5    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v6    # "len$":I
    .end local v7    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v8    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_2b
    move-exception v1

    .line 1504
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_49

    .line 1506
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1509
    const/4 v9, 0x0

    goto :goto_27

    .line 1506
    :catchall_49
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private checkContainerOwnerShip(Landroid/app/enterprise/ContextInfo;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/16 v5, 0x64

    .line 560
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 562
    .local v3, "userId":I
    if-ge v3, v5, :cond_f

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-ge v4, v5, :cond_f

    .line 578
    :cond_e
    return-void

    .line 566
    :cond_f
    move v0, v3

    .line 568
    .local v0, "containerId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v4, v5, :cond_16

    .line 569
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 572
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 573
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 575
    .local v1, "ownerUid":I
    if-eq v1, v2, :cond_e

    .line 576
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin doesn\'t own container uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ContextInfo.uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x1

    .line 1930
    const-string v1, "DmAppInfo"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1969
    :cond_9
    :goto_9
    return v0

    .line 1933
    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1935
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "microphone_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1937
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1939
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1941
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_wap_push_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1944
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_data_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1946
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_auto_sync_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1952
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_bc

    .line 1953
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1955
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1958
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_debugging_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1961
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1964
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_capture_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1969
    :cond_bc
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method private checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;

    .prologue
    .line 2878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2880
    .local v6, "uid":I
    const/4 v7, -0x1

    .line 2882
    .local v7, "umcuid":I
    :try_start_5
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.enterprise.knox.cloudmdm.smdms"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_3a

    move-result v7

    .line 2887
    :goto_15
    if-eq v7, v6, :cond_41

    .line 2889
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caller UID != UMC UID. UMC UId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but caller is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2883
    :catch_3a
    move-exception v1

    .line 2884
    .local v1, "e":Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_15

    .line 2894
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_41
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "permissions"

    aput-object v10, v0, v9

    .line 2897
    .local v0, "columns":[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2898
    .local v4, "selectionValues":Landroid/content/ContentValues;
    const-string v9, "proxyUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2899
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "PROXY_ADMIN_INFO"

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 2900
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v5, ""

    .line 2901
    .local v5, "serializedPerms":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_76

    .line 2902
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string v10, "permissions"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2904
    :cond_76
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 2905
    const/4 v9, 0x0

    .line 2912
    :goto_7d
    return v9

    .line 2906
    :cond_7e
    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2907
    .local v3, "perms":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2908
    .local v2, "grantedPermissions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 2909
    const/4 v9, 0x1

    goto :goto_7d

    .line 2912
    :cond_95
    const/4 v9, 0x0

    goto :goto_7d
.end method

.method private compareSystemSignature([Landroid/content/pm/Signature;)Z
    .registers 13
    .param p1, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1428
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    const-string v8, "android"

    const/16 v9, 0x40

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1429
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_17

    .line 1430
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Could not Read package info"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :cond_17
    if-eqz v3, :cond_4c

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4c

    if-eqz p1, :cond_4c

    .line 1433
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1434
    .local v4, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_28
    if-ge v1, v2, :cond_32

    aget-object v6, v0, v1

    .line 1435
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 1437
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_32
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1438
    .local v5, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v2, :cond_44

    aget-object v6, v0, v1

    .line 1439
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1438
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1442
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_44
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 1443
    const/4 v7, 0x1

    .line 1448
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    .end local v5    # "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :goto_4b
    return v7

    :cond_4c
    const/4 v7, 0x0

    goto :goto_4b
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 2553
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating context as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    const/4 v0, 0x0

    .line 2556
    .local v0, "contextAsUser":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2558
    .local v2, "token":J
    :try_start_1d
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_25} :catch_2a
    .catchall {:try_start_1d .. :try_end_25} :catchall_52

    move-result-object v0

    .line 2563
    :goto_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    return-object v0

    .line 2560
    :catch_2a
    move-exception v1

    .line 2561
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2b
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be found! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_52

    goto :goto_26

    .line 2563
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerUid"    # I

    .prologue
    .line 2799
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2800
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v10, 0x9

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "proxyUid"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string v11, "proxyType"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "componentName"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string v11, "proxyComponentName"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "label"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "icon"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "description"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "permissions"

    aput-object v11, v1, v10

    .line 2807
    .local v1, "columns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "PROXY_ADMIN_INFO"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 2811
    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2812
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "proxyUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2813
    .local v7, "proxyUid":I
    const-string v10, "adminUid"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2814
    .local v8, "uid":I
    const-string v10, "componentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2815
    .local v0, "adminName":Ljava/lang/String;
    const-string v10, "proxyComponentName"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2816
    .local v6, "proxyName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    if-ne v8, p2, :cond_44

    .line 2818
    :try_start_7c
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 2820
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_8a} :catch_8b

    goto :goto_44

    .line 2821
    :catch_8b
    move-exception v3

    .line 2822
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "EnterpriseDeviceManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deactivateAdminForUser:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 2826
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyName":Ljava/lang/String;
    .end local v7    # "proxyUid":I
    .end local v8    # "uid":I
    :cond_a9
    return-void
.end method

.method private enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .param p3, "userPolicy"    # Z
    .param p4, "checkActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x64

    .line 463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 464
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 466
    .local v5, "pid":I
    if-nez p1, :cond_11

    .line 468
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 472
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_11
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 475
    .local v2, "contextUid":I
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "caller":Ljava/lang/String;
    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_27

    sget v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v5, v7, :cond_31

    :cond_27
    if-eqz v1, :cond_3d

    const-string v7, "android.uid.system:1000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 478
    :cond_31
    if-eqz p3, :cond_3c

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v7, v10, :cond_3c

    .line 479
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 556
    :cond_3c
    :goto_3c
    return-object p1

    .line 484
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_3d
    if-eqz p4, :cond_66

    .line 485
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 487
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_66

    .line 488
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 492
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_66
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v7, v6, :cond_b7

    .line 495
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v7

    if-eq v6, v7, :cond_b7

    .line 497
    if-eqz p2, :cond_92

    :try_start_76
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkProxyAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_92

    .line 499
    if-eqz p3, :cond_3c

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v7, v10, :cond_3c

    .line 500
    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v7, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_88} :catch_8a

    move-object p1, v7

    goto :goto_3c

    .line 504
    :catch_8a
    move-exception v3

    .line 505
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "could not check calling permission"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_92
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ContextInfo UID voilation info is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but caller is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 514
    :cond_b7
    if-eqz p3, :cond_bc

    .line 515
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkContainerOwnerShip(Landroid/app/enterprise/ContextInfo;)V

    .line 518
    :cond_bc
    const/4 v4, 0x0

    .line 521
    .local v4, "permissionGranted":Z
    if-eqz p2, :cond_c9

    :try_start_bf
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_c9

    .line 523
    or-int/lit8 v4, v4, 0x1

    .line 525
    .end local v4    # "permissionGranted":Z
    :cond_c9
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is permission granted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_e1} :catch_fc

    .line 540
    :goto_e1
    if-nez v4, :cond_105

    .line 541
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin  does not have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 535
    :catch_fc
    move-exception v3

    .line 537
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "could not check calling permission"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1

    .line 550
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_105
    if-eqz p3, :cond_112

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lt v7, v10, :cond_112

    .line 551
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    goto/16 :goto_3c

    .line 554
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_112
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "enforceActiveAdminDualPermission >>>"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c
.end method

.method private extractLicenseExpiryTime(Ljava/lang/String;)J
    .registers 6
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 2384
    invoke-static {p1}, Lcom/android/server/enterprise/PayloadVerifier;->extractLicense(Ljava/lang/String;)[B

    move-result-object v0

    .line 2385
    .local v0, "lic":[B
    array-length v2, v0

    if-lez v2, :cond_19

    .line 2386
    new-instance v1, Lcom/android/server/enterprise/LicenseXmlReader;

    invoke-direct {v1}, Lcom/android/server/enterprise/LicenseXmlReader;-><init>()V

    .line 2387
    .local v1, "lxr":Lcom/android/server/enterprise/LicenseXmlReader;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/LicenseXmlReader;->readXmlData(Ljava/io/InputStream;)V

    .line 2388
    invoke-virtual {v1}, Lcom/android/server/enterprise/LicenseXmlReader;->getExpiryTime()J

    move-result-wide v2

    .line 2391
    .end local v1    # "lxr":Lcom/android/server/enterprise/LicenseXmlReader;
    :goto_18
    return-wide v2

    :cond_19
    const-wide/16 v2, 0x0

    goto :goto_18
.end method

.method private findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 15
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 842
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v5, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 845
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v5, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 847
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_69

    .line 850
    :cond_24
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 851
    .local v4, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 852
    .local v3, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 854
    :try_start_42
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_4d

    .line 873
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :goto_49
    return-object v8

    .line 855
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_4a
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v10

    .line 857
    goto :goto_49

    .line 858
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4d
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v8, v10

    .line 860
    goto :goto_49

    .line 864
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_50
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 867
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_69
    :try_start_69
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v11, v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_77} :catch_79
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_77} :catch_7c

    move-object v8, v9

    goto :goto_49

    .line 868
    :catch_79
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v8, v10

    .line 870
    goto :goto_49

    .line 871
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v8, v10

    .line 873
    goto :goto_49
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 7
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 611
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 612
    .local v0, "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    .end local v0    # "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 621
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 622
    .local v0, "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_6

    .line 624
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Admin found on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v0    # "auxAdm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_4c
    return-object v0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method private getAdminNameForUserId(I)Landroid/content/ComponentName;
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 3027
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 3029
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3030
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3031
    .local v0, "uid":J
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 3034
    .end local v0    # "uid":J
    :goto_1e
    return-object v3

    :cond_1f
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public static getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 581
    if-nez p0, :cond_b

    .line 582
    new-instance p0, Landroid/app/enterprise/ContextInfo;

    .end local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 585
    .restart local p0    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 586
    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mCurrentUserId:I

    .line 593
    :goto_15
    return v0

    .line 589
    :cond_16
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1f

    .line 590
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    goto :goto_15

    .line 593
    :cond_1f
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_15
.end method

.method public static getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 598
    if-nez p0, :cond_7

    .line 599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 607
    :goto_6
    return v0

    .line 602
    :cond_7
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_16

    .line 604
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    iget v1, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    goto :goto_6

    .line 607
    :cond_16
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    goto :goto_6
.end method

.method static getContainerId(I)I
    .registers 2
    .param p0, "appUid"    # I

    .prologue
    .line 2461
    invoke-static {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .registers 1

    .prologue
    .line 1537
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method

.method private getLicenseExpirationLocked(Landroid/content/ComponentName;)J
    .registers 13
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    const-wide/16 v7, 0x0

    .line 2360
    if-eqz p1, :cond_f

    .line 2361
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v1

    .line 2362
    .local v1, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v7

    .line 2380
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_e
    :goto_e
    return-wide v7

    .line 2365
    :cond_f
    const-wide/16 v5, 0x0

    .line 2366
    .local v5, "timeout":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2367
    .local v3, "now":J
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2368
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-ge v2, v0, :cond_4a

    .line 2369
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2371
    .restart local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-gez v9, :cond_31

    .line 2368
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2375
    :cond_31
    cmp-long v9, v5, v7

    if-eqz v9, :cond_45

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_2e

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v9

    cmp-long v9, v5, v9

    if-lez v9, :cond_2e

    .line 2377
    :cond_45
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v5

    goto :goto_2e

    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_4a
    move-wide v7, v5

    .line 2380
    goto :goto_e
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "policyService"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .registers 8
    .param p0, "edmStorageProvider"    # Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .param p1, "proxyUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 3008
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v0, v5

    .line 3011
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3012
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v3, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3013
    const-string v3, "PROXY_ADMIN_INFO"

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 3016
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 3017
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "adminUid"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3020
    .end local p1    # "proxyUid":I
    :cond_32
    return p1
.end method

.method private handleDowngrade()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1513
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const/4 v1, 0x0

    .line 1515
    .local v1, "edmDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "enterprise.db"

    .line 1517
    .local v2, "edmDBPath":Ljava/lang/String;
    :try_start_b
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_43

    move-result-object v1

    .line 1524
    :goto_13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 1525
    .local v3, "oldVersion":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1527
    const/4 v4, 0x7

    if-le v3, v4, :cond_42

    .line 1528
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1531
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1532
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 1534
    :cond_42
    return-void

    .line 1519
    .end local v3    # "oldVersion":I
    :catch_43
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private handleLicenseExpiryCheckNotification()V
    .registers 11

    .prologue
    .line 2320
    monitor-enter p0

    .line 2321
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2322
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2323
    .local v0, "N":I
    if-gtz v0, :cond_f

    .line 2324
    monitor-exit p0

    .line 2342
    :goto_e
    return-void

    .line 2326
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_54

    .line 2327
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2328
    .local v1, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_51

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_51

    .line 2330
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.sec.ENTERPRISE_LICENSE_EXPIRING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2332
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "licenseExpirationTime"

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2334
    const/4 v6, 0x0

    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendAdminNotificationLocked(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    .line 2335
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_51

    .line 2336
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->revokeMdmPermissions(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    .line 2326
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 2340
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_54
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V

    .line 2341
    monitor-exit p0

    goto :goto_e

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "now":J
    :catchall_59
    move-exception v6

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v6
.end method

.method private initServices()V
    .registers 5

    .prologue
    .line 1868
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1871
    .local v1, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1872
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_a

    .line 1875
    .end local v1    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_2c
    return-void
.end method

.method private isFirmwareChanged()Z
    .registers 5

    .prologue
    .line 2221
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2222
    .local v0, "swVer":Ljava/lang/String;
    const-string v2, "ro.build.fingerprint"

    const-string/jumbo v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2223
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x0

    .line 2224
    :cond_1b
    if-eqz v0, :cond_25

    if-eqz v1, :cond_2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2225
    :cond_25
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PlatformSoftwareVersion"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2226
    const/4 v2, 0x1

    .line 2228
    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private isMdmAdminPresent()Z
    .registers 11

    .prologue
    const/4 v7, 0x1

    .line 2466
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2467
    .local v5, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2468
    .local v4, "storedUid":I
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2469
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_b

    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2473
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2474
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2494
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "storedUid":I
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_45
    return v6

    .line 2478
    .restart local v0    # "compName":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "storedUid":I
    .restart local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_46
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2481
    .local v3, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 2482
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2483
    goto :goto_45

    .line 2486
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v3    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "storedUid":I
    :cond_5f
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Not Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_66} :catch_68

    .line 2487
    const/4 v6, 0x0

    goto :goto_45

    .line 2489
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_68
    move-exception v1

    .line 2490
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMdmAdminPresent EX"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 2494
    goto :goto_45
.end method

.method private isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2974
    const-string v4, "apppermission_control_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 2976
    .local v1, "policy":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2978
    .local v2, "token":J
    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v1, v4, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getApplicationGrantedPermissions(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2980
    .local v0, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_23
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    move-result v4

    if-eqz v4, :cond_24

    .line 2981
    const/4 v4, 0x1

    .line 2986
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    .end local v0    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1d
    return v4

    .line 2986
    :catchall_1e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2983
    :catch_23
    move-exception v4

    .line 2986
    :cond_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2988
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 1915
    const/4 v1, 0x0

    .line 1916
    .local v1, "exists":Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 1918
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 1919
    const/4 v1, 0x1

    .line 1925
    :cond_2c
    :goto_2c
    return v1

    .line 1920
    :catch_2d
    move-exception v0

    .line 1921
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1922
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTableExists EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private loadActiveAdmins()V
    .registers 27

    .prologue
    .line 882
    monitor-enter p0

    .line 883
    :try_start_1
    const-string v22, "EnterpriseDeviceManagerService"

    const-string v23, "loadActiveAdmins"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v19

    .line 885
    .local v19, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_207

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 886
    .local v16, "storedUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_e9

    move-result-object v7

    .line 887
    .local v7, "compName":Landroid/content/ComponentName;
    if-eqz v7, :cond_16

    .line 892
    :try_start_36
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 893
    .local v5, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_1d4

    .line 894
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    .line 895
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 896
    .local v8, "currentUid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_73} :catch_ca
    .catchall {:try_start_36 .. :try_end_73} :catchall_e9

    .line 898
    move/from16 v0, v16

    if-ne v8, v0, :cond_ec

    .line 900
    :try_start_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_16

    .line 901
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 903
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_c2} :catch_c4
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_c2} :catch_ca
    .catchall {:try_start_77 .. :try_end_c2} :catchall_e9

    goto/16 :goto_16

    .line 907
    :catch_c4
    move-exception v10

    .line 908
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_c5
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c8
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_c8} :catch_ca
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_e9

    goto/16 :goto_16

    .line 944
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v8    # "currentUid":I
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_ca
    move-exception v10

    .line 945
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_cb
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception occured while loading active admins "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1000
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "storedUid":I
    .end local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_e9
    move-exception v22

    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_cb .. :try_end_eb} :catchall_e9

    throw v22

    .line 911
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v7    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "currentUid":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "storedUid":I
    .restart local v19    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_ec
    :try_start_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "ADMIN_INFO"

    const-string v24, "adminUid"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_18b

    .line 914
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", updated with new currentUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", old storedUid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/RuntimeException; {:try_start_ec .. :try_end_13a} :catch_ca
    .catchall {:try_start_ec .. :try_end_13a} :catchall_e9

    .line 918
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v7, v1}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v22

    if-nez v22, :cond_16

    .line 920
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 921
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_183} :catch_185
    .catch Ljava/lang/RuntimeException; {:try_start_13a .. :try_end_183} :catch_ca
    .catchall {:try_start_13a .. :try_end_183} :catchall_e9

    goto/16 :goto_16

    .line 925
    :catch_185
    move-exception v10

    .line 926
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_186
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_16

    .line 929
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_18b
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 930
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 932
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed updating uid, removed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 938
    .end local v8    # "currentUid":I
    :cond_1d4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 940
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Admin loaded null, removed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", uid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_205
    .catch Ljava/lang/RuntimeException; {:try_start_186 .. :try_end_205} :catch_ca
    .catchall {:try_start_186 .. :try_end_205} :catchall_e9

    goto/16 :goto_16

    .line 950
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v7    # "compName":Landroid/content/ComponentName;
    .end local v16    # "storedUid":I
    :cond_207
    :try_start_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "user"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 951
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 952
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_21e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3b9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 953
    .local v17, "uf":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;
    :try_end_237
    .catchall {:try_start_207 .. :try_end_237} :catchall_e9

    move-result-object v11

    .line 955
    .local v11, "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    const/4 v9, 0x0

    .line 957
    .local v9, "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;
    :try_end_248
    .catch Landroid/os/RemoteException; {:try_start_239 .. :try_end_248} :catch_2f5
    .catchall {:try_start_239 .. :try_end_248} :catchall_e9

    move-result-object v9

    .line 962
    :goto_249
    if-eqz v9, :cond_21e

    .line 963
    if-eqz v11, :cond_253

    :try_start_24d
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_314

    .line 964
    :cond_253
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding all admins from DPM for user : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_275
    :goto_275
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_21e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 966
    .local v6, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 967
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_275

    .line 968
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding missing admin to EDM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 970
    .local v18, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_275

    .line 958
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "uid":I
    :catch_2f5
    move-exception v10

    .line 959
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to get active admins from dpm "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_249

    .line 977
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_314
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_318
    :goto_318
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_21e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 978
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 979
    .local v12, "found":Z
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_329
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_342

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 980
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_329

    .line 981
    const/4 v12, 0x1

    .line 985
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_342
    if-nez v12, :cond_318

    .line 986
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v5

    .line 987
    .restart local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v5, :cond_318

    .line 988
    const-string v22, "EnterpriseDeviceManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding missing admin to EDM : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    .line 990
    .restart local v18    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto/16 :goto_318

    .line 1000
    .end local v5    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v9    # "dpmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v11    # "edmActiveAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v12    # "found":Z
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "uf":Landroid/content/pm/UserInfo;
    .end local v18    # "uid":I
    :cond_3b9
    monitor-exit p0
    :try_end_3ba
    .catchall {:try_start_24d .. :try_end_3ba} :catchall_e9

    .line 1001
    return-void
.end method

.method private migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "newContainerId"    # I
    .param p3, "newContainerAdminUid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3049
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating ECPP Database data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EcppMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EcppMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/EcppMigrationManager;->migrateEcppDB(Landroid/content/ComponentName;IJ)Z

    move-result v0

    return v0
.end method

.method private migrateEnterpriseDatabase(IZ)J
    .registers 5
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3065
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "Migrating Enterprise data on Device after FOTA update"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateEnterpriseDB(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private migrateFromV1()V
    .registers 25

    .prologue
    .line 2093
    const/4 v11, 0x0

    .line 2095
    .local v11, "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Check for migration from 1.0"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    invoke-virtual/range {v20 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2099
    .local v17, "migrationChecked":Ljava/lang/String;
    if-eqz v17, :cond_30

    const-string/jumbo v20, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_30

    .line 2100
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Migration from 1.0 already done"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_8e
    .catchall {:try_start_1 .. :try_end_2a} :catchall_287

    .line 2187
    if-eqz v11, :cond_2f

    .line 2188
    :goto_2c
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2192
    .end local v17    # "migrationChecked":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-void

    .line 2104
    .restart local v17    # "migrationChecked":Ljava/lang/String;
    :cond_30
    :try_start_30
    const-string v12, "dmappmgr.db"
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_8e
    .catchall {:try_start_30 .. :try_end_32} :catchall_287

    .line 2106
    .local v12, "dmappmgrDBPath":Ljava/lang/String;
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_45} :catch_72
    .catchall {:try_start_32 .. :try_end_45} :catchall_287

    move-result-object v11

    .line 2112
    :goto_46
    :try_start_46
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v20

    if-nez v20, :cond_c7

    .line 2113
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "No need to migrate"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2115
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string/jumbo v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2187
    if-eqz v11, :cond_2f

    goto :goto_2c

    .line 2108
    :catch_72
    move-exception v13

    .line 2109
    .local v13, "e":Ljava/lang/Exception;
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "create or open dmappmgr EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_8d} :catch_8e
    .catchall {:try_start_46 .. :try_end_8d} :catchall_287

    goto :goto_46

    .line 2180
    .end local v12    # "dmappmgrDBPath":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "migrationChecked":Ljava/lang/String;
    :catch_8e
    move-exception v13

    .line 2181
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_8f
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Migration v1 to v2.1 EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_b2
    .catchall {:try_start_8f .. :try_end_b2} :catchall_287

    .line 2187
    if-eqz v11, :cond_b7

    .line 2188
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_b4
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2191
    :cond_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string/jumbo v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2f

    .line 2120
    .restart local v12    # "dmappmgrDBPath":Ljava/lang/String;
    .restart local v17    # "migrationChecked":Ljava/lang/String;
    :cond_c7
    :try_start_c7
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "migrateFromV1"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 2127
    .local v8, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_188

    const/4 v10, 0x0

    .line 2128
    .local v10, "count":I
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v5

    .line 2129
    .local v5, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2130
    .local v6, "activeEdmAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_f9
    move/from16 v0, v16

    if-ge v0, v10, :cond_18e

    .line 2131
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 2132
    .local v18, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    .local v9, "cn":Landroid/content/ComponentName;
    if-eqz v5, :cond_184

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_184

    .line 2135
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    new-instance v14, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2137
    .local v14, "edai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_184

    .line 2138
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_184

    .line 2139
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Enterprise Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    .end local v14    # "edai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_184
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_f9

    .line 2127
    .end local v5    # "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6    # "activeEdmAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v10    # "count":I
    .end local v16    # "i":I
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_188
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    goto/16 :goto_e8

    .line 2146
    .restart local v5    # "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v6    # "activeEdmAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .restart local v10    # "count":I
    .restart local v16    # "i":I
    :cond_18e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_1af

    .line 2147
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string/jumbo v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2187
    if-eqz v11, :cond_2f

    goto/16 :goto_2c

    .line 2150
    :cond_1af
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1d6

    .line 2152
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v21, "MDM1.0To2.1MigrationChecked"

    const-string/jumbo v22, "true"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setDatabaseUpgradeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2187
    if-eqz v11, :cond_2f

    goto/16 :goto_2c

    .line 2155
    :cond_1d6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_25e

    .line 2157
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2158
    .local v7, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    .line 2159
    .local v19, "uid":I
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Start migration for : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_247} :catch_8e
    .catchall {:try_start_c7 .. :try_end_247} :catchall_287

    .line 2171
    :try_start_247
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1Setting(I)Z

    .line 2172
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z

    .line 2173
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_25e} :catch_262
    .catchall {:try_start_247 .. :try_end_25e} :catchall_287

    .line 2187
    .end local v7    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v19    # "uid":I
    :cond_25e
    :goto_25e
    if-eqz v11, :cond_b7

    goto/16 :goto_b4

    .line 2174
    .restart local v7    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v19    # "uid":I
    :catch_262
    move-exception v15

    .line 2175
    .local v15, "ex":Ljava/lang/Exception;
    :try_start_263
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Setting Migration EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_286
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_286} :catch_8e
    .catchall {:try_start_263 .. :try_end_286} :catchall_287

    goto :goto_25e

    .line 2187
    .end local v5    # "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v6    # "activeEdmAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v7    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v8    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "count":I
    .end local v12    # "dmappmgrDBPath":Ljava/lang/String;
    .end local v15    # "ex":Ljava/lang/Exception;
    .end local v16    # "i":I
    .end local v17    # "migrationChecked":Ljava/lang/String;
    .end local v19    # "uid":I
    :catchall_287
    move-exception v20

    if-eqz v11, :cond_28d

    .line 2188
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2187
    :cond_28d
    throw v20
.end method

.method private migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .registers 19
    .param p1, "dmappmgrDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uid"    # I

    .prologue
    .line 2058
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2059
    const-string v2, "DmAppInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2060
    .local v9, "c":Landroid/database/Cursor;
    :goto_11
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 2061
    const-string v1, "pkgname"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2062
    .local v13, "pkgname":Ljava/lang/String;
    const-string v1, "installcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2063
    .local v12, "installCount":I
    const-string/jumbo v1, "uninstallcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2064
    .local v15, "uninstallCount":I
    const-string v1, "controlstate"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2066
    .local v14, "state":I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2067
    .local v11, "cv":Landroid/content/ContentValues;
    const-string v1, "packageName"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v1, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v1, "applicationInstallationCount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2070
    const-string v1, "applicationUninstallationCount"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2071
    const/4 v10, 0x0

    .line 2072
    .local v10, "controlState":I
    const/4 v1, 0x1

    and-int/lit8 v2, v14, 0x1

    if-ne v1, v2, :cond_6d

    .line 2073
    or-int/lit8 v10, v10, 0x2

    .line 2075
    :cond_6d
    const/4 v1, 0x4

    and-int/lit8 v2, v14, 0x4

    if-ne v1, v2, :cond_74

    .line 2076
    or-int/lit8 v10, v10, 0x1

    .line 2078
    :cond_74
    const/4 v1, 0x2

    and-int/lit8 v2, v14, 0x2

    if-ne v1, v2, :cond_7b

    .line 2079
    or-int/lit8 v10, v10, 0x4

    .line 2081
    :cond_7b
    const-string v1, "controlState"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_11

    .line 2084
    .end local v10    # "controlState":I
    .end local v11    # "cv":Landroid/content/ContentValues;
    .end local v12    # "installCount":I
    .end local v13    # "pkgname":Ljava/lang/String;
    .end local v14    # "state":I
    .end local v15    # "uninstallCount":I
    :cond_8e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2085
    const-string v1, "DROP TABLE DmAppInfo;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2086
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2087
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2089
    const/4 v1, 0x1

    return v1
.end method

.method private migrateFromV1Setting(I)Z
    .registers 10
    .param p1, "uid"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1980
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "camera_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1981
    .local v0, "value":I
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cameraEnabled"

    if-ne v0, v2, :cond_1bc

    move v1, v2

    :goto_19
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1983
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "microphone_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1984
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "microphoneEnabled"

    if-ne v0, v2, :cond_1bf

    move v1, v2

    :goto_31
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1986
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1987
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    if-ne v0, v2, :cond_1c2

    move v1, v2

    :goto_4a
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1989
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1990
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    if-ne v0, v2, :cond_1c5

    move v1, v2

    :goto_62
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1992
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_wap_push_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1994
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingPushEnabled"

    if-ne v0, v2, :cond_1c8

    move v1, v2

    :goto_7a
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1996
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_data_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1997
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingDataEnabled"

    if-ne v0, v2, :cond_1cb

    move v1, v2

    :goto_92
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1999
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_auto_sync_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2001
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingSyncEnabled"

    if-ne v0, v2, :cond_1ce

    move v1, v2

    :goto_aa
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2006
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_12f

    .line 2007
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "usb_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2008
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "usbTetheringEnabled"

    if-ne v0, v2, :cond_1d1

    move v1, v2

    :goto_c8
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2011
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2012
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "wifiTetheringEnabled"

    if-ne v0, v2, :cond_1d4

    move v1, v2

    :goto_e2
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2015
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "usb_debugging_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2017
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "usbDebuggingEnabled"

    if-ne v0, v2, :cond_1d7

    move v1, v2

    :goto_fc
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2020
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2022
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    if-ne v0, v2, :cond_1da

    move v1, v2

    :goto_114
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2025
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_capture_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2027
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "screenCaptureEnabled"

    if-ne v0, v2, :cond_12c

    move v3, v2

    :cond_12c
    invoke-virtual {v1, p1, v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2035
    :cond_12f
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "camera_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2036
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "microphone_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2037
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2038
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2039
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_wap_push_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2040
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_data_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2041
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_auto_sync_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2045
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_1bb

    .line 2046
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "usb_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2047
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2048
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "usb_debugging_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2049
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2050
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_capture_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2053
    :cond_1bb
    return v2

    :cond_1bc
    move v1, v3

    .line 1981
    goto/16 :goto_19

    :cond_1bf
    move v1, v3

    .line 1984
    goto/16 :goto_31

    :cond_1c2
    move v1, v3

    .line 1987
    goto/16 :goto_4a

    :cond_1c5
    move v1, v3

    .line 1990
    goto/16 :goto_62

    :cond_1c8
    move v1, v3

    .line 1994
    goto/16 :goto_7a

    :cond_1cb
    move v1, v3

    .line 1997
    goto/16 :goto_92

    :cond_1ce
    move v1, v3

    .line 2001
    goto/16 :goto_aa

    :cond_1d1
    move v1, v3

    .line 2008
    goto/16 :goto_c8

    :cond_1d4
    move v1, v3

    .line 2012
    goto/16 :goto_e2

    :cond_1d7
    move v1, v3

    .line 2017
    goto/16 :goto_fc

    :cond_1da
    move v1, v3

    .line 2022
    goto/16 :goto_114
.end method

.method private removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 739
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :try_start_22
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_27} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_27} :catch_4d

    .line 748
    :goto_27
    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "Admin removed from DPM!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    return-void

    .line 743
    :catch_2f
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to remove action admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 745
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_4d
    move-exception v0

    .line 746
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to remove action admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    .registers 18
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 759
    monitor-enter p0

    .line 760
    :try_start_1
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "removeActiveAdminDelayed - adminReceiver: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", userId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v1

    .line 763
    .local v1, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v1, :cond_2f

    .line 764
    monitor-exit p0

    .line 838
    :goto_2e
    return-void

    .line 766
    :cond_2f
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 767
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 768
    .local v2, "callingUid":I
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", calling uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    if-eq v11, v2, :cond_68

    .line 773
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.BIND_DEVICE_ADMIN"

    const-string v14, "Only system or itself can remove an EDM admin"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_68
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v3

    .line 780
    .local v3, "canRemove":Z
    if-nez v3, :cond_93

    .line 781
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " cannot be removed!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    monitor-exit p0

    goto :goto_2e

    .line 837
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v2    # "callingUid":I
    .end local v3    # "canRemove":Z
    .end local v11    # "uid":I
    :catchall_90
    move-exception v12

    monitor-exit p0
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_90

    throw v12

    .line 786
    .restart local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v2    # "callingUid":I
    .restart local v3    # "canRemove":Z
    .restart local v11    # "uid":I
    :cond_93
    :try_start_93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 789
    .local v7, "ident":J
    sget-object v12, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_90

    .line 791
    .local v9, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_ad
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v12, v11}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b6} :catch_b7
    .catchall {:try_start_ad .. :try_end_b6} :catchall_90

    goto :goto_a1

    .line 793
    :catch_b7
    move-exception v5

    .line 794
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b8
    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "removeActiveAdminDelayed Ex1:"

    invoke-static {v12, v13, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a1

    .line 800
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_c0
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v12

    if-nez v12, :cond_d3

    .line 801
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_b8 .. :try_end_d3} :catchall_90

    .line 805
    :cond_d3
    :try_start_d3
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 806
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    .line 810
    const-string v12, "restriction_policy"

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 811
    .local v10, "restriction":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v10, :cond_fc

    .line 812
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v4, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 813
    .local v4, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {v10, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    .line 814
    const/4 v12, 0x0

    invoke-virtual {v10, v4, v12}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_fc} :catch_125
    .catchall {:try_start_d3 .. :try_end_fc} :catchall_90

    .line 823
    .end local v4    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .end local v10    # "restriction":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :cond_fc
    :goto_fc
    :try_start_fc
    sget-object v12, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_106
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;
    :try_end_112
    .catchall {:try_start_fc .. :try_end_112} :catchall_90

    .line 825
    .restart local v9    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :try_start_112
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v12, v11}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11b} :catch_11c
    .catchall {:try_start_112 .. :try_end_11b} :catchall_90

    goto :goto_106

    .line 827
    :catch_11c
    move-exception v5

    .line 828
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_11d
    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "removeActiveAdminDelayed Ex2:"

    invoke-static {v12, v13, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_106

    .line 818
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :catch_125
    move-exception v5

    .line 819
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "FATAL: Admin failed to remove lets try during next boot up"

    invoke-static {v12, v13, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_fc

    .line 832
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12e
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V

    .line 833
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForOwnerAdmin(Landroid/content/ComponentName;I)V

    .line 835
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v13, "ADMIN_REMOVED"

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 837
    monitor-exit p0
    :try_end_143
    .catchall {:try_start_11d .. :try_end_143} :catchall_90

    goto/16 :goto_2e
.end method

.method private revokeMdmPermissions(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    .registers 6
    .param p1, "admin"    # Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .prologue
    .line 2403
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 2407
    :goto_d
    return-void

    .line 2404
    :catch_e
    move-exception v0

    .line 2405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method private runAdminUpdate()V
    .registers 3

    .prologue
    .line 1285
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1291
    return-void
.end method

.method private declared-synchronized selfUpdate()V
    .registers 14

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_e

    .line 1297
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "selfUpdate in progress"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_2a
    .catchall {:try_start_1 .. :try_end_c} :catchall_36

    .line 1425
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 1301
    :cond_e
    :try_start_e
    const-string v9, "self_update_admin_component"

    const-string v10, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1304
    .local v4, "cNames":Ljava/lang/String;
    if-nez v4, :cond_39

    .line 1305
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "nothing to selfUpdate"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/app/selfUpdateApks"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2a
    .catchall {:try_start_e .. :try_end_29} :catchall_36

    goto :goto_c

    .line 1421
    .end local v4    # "cNames":Ljava/lang/String;
    :catch_2a
    move-exception v7

    .line 1422
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Upgrade Admin Ex: "

    invoke-static {v9, v10, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1423
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_36

    goto :goto_c

    .line 1296
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_36
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1311
    .restart local v4    # "cNames":Ljava/lang/String;
    :cond_39
    :try_start_39
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, "admins":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v5, v1, v9

    .line 1315
    .local v5, "component":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 1318
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1320
    .local v0, "activeComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_c

    .line 1323
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/app/selfUpdateApks/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1326
    .local v6, "destFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1327
    .local v2, "apkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_80

    .line 1328
    :cond_78
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Cannot read or is not a file : /data/app/selfUpdateApks/"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1332
    :cond_80
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_82} :catch_2a
    .catchall {:try_start_39 .. :try_end_82} :catchall_36

    .line 1336
    :try_start_82
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1337
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-direct {p0, v0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_8c} :catch_e7
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_8c} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8c} :catch_2a
    .catchall {:try_start_82 .. :try_end_8c} :catchall_36

    .line 1342
    :goto_8c
    :try_start_8c
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_91} :catch_2a
    .catchall {:try_start_8c .. :try_end_91} :catchall_36

    move-result v9

    if-eqz v9, :cond_a3

    .line 1344
    :try_start_94
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Waiting..."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-wide/16 v9, 0x1388

    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a0} :catch_2a
    .catchall {:try_start_94 .. :try_end_a0} :catchall_36

    goto :goto_8c

    .line 1346
    :catch_a1
    move-exception v9

    goto :goto_8c

    .line 1349
    :cond_a3
    :try_start_a3
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Finished Waiting."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v9, "application_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1357
    .local v3, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Uninstall of old apk"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const/4 v9, -0x1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    .line 1361
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Install of new apk"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1363
    .local v8, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v10, p0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_e3} :catch_2a
    .catchall {:try_start_a3 .. :try_end_e3} :catchall_36

    goto/16 :goto_c

    .line 1339
    .end local v3    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_e5
    move-exception v9

    goto :goto_8c

    .line 1338
    :catch_e7
    move-exception v9

    goto :goto_8c
.end method

.method private sendAdminNotificationLocked(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .registers 12
    .param p1, "admin"    # Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    .line 2346
    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2347
    if-eqz p3, :cond_17

    .line 2348
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v1, p2

    move-object v3, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2353
    :goto_16
    return-void

    .line 2351
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_16
.end method

.method private sendMigrationIntent(Z)V
    .registers 6
    .param p1, "result"    # Z

    .prologue
    .line 1908
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.ENTERPRISE_MIGRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "currentVersion"

    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1911
    const-string v1, "migrationResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1912
    return-void
.end method

.method private setLicenseExpirationAlarmLocked()V
    .registers 20

    .prologue
    .line 2283
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getLicenseExpirationLocked(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 2284
    .local v6, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2285
    .local v8, "now":J
    sub-long v11, v6, v8

    .line 2287
    .local v11, "timeToExpire":J
    const-wide/16 v15, 0x0

    cmp-long v15, v6, v15

    if-nez v15, :cond_4a

    .line 2289
    const-wide/16 v3, 0x0

    .line 2304
    .local v3, "alarmTime":J
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2306
    .local v13, "token":J
    :try_start_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v16, "alarm"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 2307
    .local v5, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const v16, -0x21524111

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v18, 0x48000000

    invoke-static/range {v15 .. v18}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 2310
    .local v10, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v5, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2311
    const-wide/16 v15, 0x0

    cmp-long v15, v3, v15

    if-eqz v15, :cond_46

    .line 2312
    const/4 v15, 0x1

    invoke-virtual {v5, v15, v3, v4, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_67

    .line 2315
    :cond_46
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2317
    return-void

    .line 2290
    .end local v3    # "alarmTime":J
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v10    # "pi":Landroid/app/PendingIntent;
    .end local v13    # "token":J
    :cond_4a
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gtz v15, :cond_56

    .line 2292
    const-wide/32 v15, 0x5265c00

    add-long v3, v8, v15

    .restart local v3    # "alarmTime":J
    goto :goto_15

    .line 2297
    .end local v3    # "alarmTime":J
    :cond_56
    const-wide/32 v15, 0x5265c00

    rem-long v1, v11, v15

    .line 2298
    .local v1, "alarmInterval":J
    const-wide/16 v15, 0x0

    cmp-long v15, v1, v15

    if-nez v15, :cond_64

    .line 2299
    const-wide/32 v1, 0x5265c00

    .line 2301
    :cond_64
    add-long v3, v8, v1

    .restart local v3    # "alarmTime":J
    goto :goto_15

    .line 2315
    .end local v1    # "alarmInterval":J
    .restart local v13    # "token":J
    :catchall_67
    move-exception v15

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method private setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    .registers 4
    .param p1, "admin"    # Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .prologue
    .line 2395
    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2399
    :goto_6
    return-void

    .line 2398
    :cond_7
    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->extractLicenseExpiryTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->setLicenseExpiry(J)V

    goto :goto_6
.end method

.method private verifyActivePermissions(ILjava/lang/String;)Z
    .registers 7
    .param p1, "proxyAdminUid"    # I
    .param p2, "requirePermission"    # Ljava/lang/String;

    .prologue
    .line 2994
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2995
    .local v0, "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2997
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    .line 2999
    .local v1, "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_22

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3000
    const/4 v2, 0x1

    .line 3003
    .end local v1    # "perms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private verifyEnterprisePayload(I)Z
    .registers 16
    .param p1, "uid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1452
    const/4 v4, 0x0

    .line 1453
    .local v4, "payloadVerified":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1455
    .local v2, "ident":J
    :try_start_7
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1457
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_4c

    .line 1458
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin owned by uid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_8c

    .line 1482
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catch_2e
    move-exception v1

    .line 1484
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not retrieve admin info"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_8c

    .line 1486
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v4

    .line 1488
    :goto_4b
    return v8

    .line 1461
    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_2e
    .catchall {:try_start_4c .. :try_end_4f} :catchall_8c

    move-result v10

    if-eqz v10, :cond_56

    .line 1486
    :goto_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4b

    .line 1466
    :cond_56
    :try_start_56
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_91

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_91

    .line 1468
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "License Expired for admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->revokeMdmPermissions(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_8b} :catch_2e
    .catchall {:try_start_56 .. :try_end_8b} :catchall_8c

    goto :goto_52

    .line 1486
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :catchall_8c
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1473
    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_91
    :try_start_91
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    .line 1474
    .local v5, "payloadVerify":I
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Payload Verified : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v5, :cond_d9

    move v10, v9

    :goto_ab
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    if-nez v5, :cond_db

    move v4, v9

    .line 1477
    :goto_b9
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1479
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v7

    .line 1481
    .local v7, "signatureVerified":Z
    if-nez v7, :cond_d3

    if-eqz v4, :cond_d4

    :cond_d3
    move v8, v9

    :cond_d4
    invoke-virtual {v0, v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->setAuthorized(Z)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_d7} :catch_2e
    .catchall {:try_start_91 .. :try_end_d7} :catchall_8c

    goto/16 :goto_47

    .end local v6    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "signatureVerified":Z
    :cond_d9
    move v10, v8

    .line 1474
    goto :goto_ab

    :cond_db
    move v4, v8

    .line 1475
    goto :goto_b9
.end method


# virtual methods
.method public activateAdminForUser(Landroid/content/ComponentName;ZI)V
    .registers 21
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2729
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v14, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Activating proxy admin on user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v3

    .line 2733
    .local v3, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v3, :cond_4b

    .line 2734
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad admin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2737
    :cond_4b
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v13

    if-eqz v13, :cond_60

    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_60

    .line 2738
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 2741
    :cond_60
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    .line 2742
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2743
    .local v12, "uid":I
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 2744
    .local v5, "compName":Landroid/content/ComponentName;
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin uid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Component name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    monitor-enter p0

    .line 2746
    :try_start_94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_147

    move-result-wide v8

    .line 2747
    .local v8, "ident":J
    const/4 v11, 0x1

    .line 2749
    .local v11, "ret":Z
    if-nez p2, :cond_c3

    :try_start_9b
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v13

    if-eqz v13, :cond_c3

    .line 2750
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Admin is already added"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_af} :catch_af
    .catchall {:try_start_9b .. :try_end_af} :catchall_142

    .line 2785
    :catch_af
    move-exception v6

    .line 2786
    .local v6, "e":Ljava/lang/Exception;
    :try_start_b0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_142

    .line 2790
    :try_start_b3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2793
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_b6
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v14, 0x1

    const/4 v15, -0x1

    invoke-virtual {v13, v14, v12, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2795
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_147

    .line 2796
    return-void

    .line 2753
    :cond_c3
    if-nez p2, :cond_108

    .line 2754
    :try_start_c5
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding admin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to lists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v12, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v11

    .line 2762
    :cond_108
    if-nez v11, :cond_14a

    .line 2763
    const-string v13, "EnterpriseDeviceManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removing admin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from lists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Unable to activate admin"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_142} :catch_af
    .catchall {:try_start_c5 .. :try_end_142} :catchall_142

    .line 2790
    :catchall_142
    move-exception v13

    :try_start_143
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 2795
    .end local v8    # "ident":J
    .end local v11    # "ret":Z
    :catchall_147
    move-exception v13

    monitor-exit p0
    :try_end_149
    .catchall {:try_start_143 .. :try_end_149} :catchall_147

    throw v13

    .line 2769
    .restart local v8    # "ident":J
    .restart local v11    # "ret":Z
    :cond_14a
    :try_start_14a
    sget-object v13, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_154
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2770
    .local v10, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v13, v12}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_154

    .line 2775
    .end local v10    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_16a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 2776
    const-string v13, "EnterpriseDeviceManagerService"

    const-string v14, "Admin added to DPM!"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V

    .line 2779
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v13

    if-eqz v13, :cond_19c

    .line 2780
    const-string v13, "application_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2782
    .local v4, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v13, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v13, v12}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v4, v13, v14, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_19c} :catch_af
    .catchall {:try_start_14a .. :try_end_19c} :catchall_142

    .line 2790
    .end local v4    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    :cond_19c
    :try_start_19c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_19f
    .catchall {:try_start_19c .. :try_end_19f} :catchall_147

    goto/16 :goto_b6
.end method

.method public activateDevicePermissions(Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "devicePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2930
    const/4 v11, 0x0

    const-string v12, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS"

    invoke-virtual {p0, v11, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2932
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2934
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 2940
    .local v7, "proxyAdminUid":I
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 2941
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Admin already present and active"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2944
    :cond_23
    const/4 v0, 0x0

    .line 2945
    .local v0, "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .restart local v0    # "adminInfo":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_69

    .line 2946
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2947
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2950
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2951
    .local v6, "permission":Ljava/lang/String;
    invoke-direct {p0, v6, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPermissionGranted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3e

    .line 2963
    .end local v6    # "permission":Ljava/lang/String;
    :goto_50
    return v10

    .line 2956
    :cond_51
    new-instance v5, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    invoke-direct {v5, v11, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 2959
    .local v5, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2960
    .local v8, "token":J
    invoke-virtual {p0, v5, v7, v2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 2961
    invoke-virtual {p0, v2, v10, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 2962
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    const/4 v10, 0x1

    goto :goto_50

    .line 2967
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v8    # "token":J
    :cond_69
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "No active admin"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 11
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v5, 0x0

    .line 2577
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2579
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2580
    const-string v3, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2581
    const-string v3, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2582
    const-string v3, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    const-string v3, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2584
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2585
    .local v1, "serializedPerms":Ljava/lang/String;
    if-eqz v1, :cond_83

    .line 2586
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_50
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 2587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2586
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 2589
    :cond_7e
    const-string v3, "permissions"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    .end local v0    # "i":I
    :cond_83
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a5

    .line 2592
    const-string v3, "label"

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string v3, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2594
    const-string v3, "description"

    invoke-virtual {p1, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :cond_a5
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PROXY_ADMIN_INFO"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 2598
    return-void
.end method

.method public checkServices()V
    .registers 3

    .prologue
    .line 2498
    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    if-nez v0, :cond_13

    .line 2499
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2509
    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2511
    :cond_13
    return-void
.end method

.method public configureContainerAdminForMigration(Z)Z
    .registers 5
    .param p1, "blockAdminConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3112
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configure the MDM admin before and after migration on Device after FOTA update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v1

    if-nez p1, :cond_26

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->blockAdminToReceivePolicy(Z)Z

    move-result v0

    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public deactivateAdminForUser(Landroid/content/ComponentName;I)V
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2857
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 2863
    :goto_b
    return-void

    .line 2860
    :catch_c
    move-exception v0

    .line 2861
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivateAdminForUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public deactivateProxyAdminsForUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v10, 0x0

    .line 2829
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v9, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2831
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "proxyUid"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "proxyType"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "componentName"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "proxyComponentName"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "label"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "icon"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "description"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "permissions"

    aput-object v9, v1, v8

    .line 2837
    .local v1, "columns":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "PROXY_ADMIN_INFO"

    invoke-virtual {v8, v9, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 2841
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2842
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v8, "proxyUid"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2843
    .local v6, "proxyUid":I
    const-string v8, "proxyComponentName"

    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2844
    .local v0, "adminName":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-ne v8, p1, :cond_4b

    .line 2846
    :try_start_6d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 2848
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeProxyAdmin(I)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_77} :catch_78

    goto :goto_4b

    .line 2849
    :catch_78
    move-exception v3

    .line 2850
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deactivateAdminForUser:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 2854
    .end local v0    # "adminName":Ljava/lang/String;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "proxyUid":I
    :cond_96
    return-void
.end method

.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    .line 417
    return-void
.end method

.method public enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 421
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceContainerOwnerShipPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 435
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 437
    .local v1, "userId":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_32

    .line 438
    if-nez p1, :cond_15

    .line 440
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 443
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_15
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 445
    .local v0, "proxyAdminUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyActivePermissions(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 446
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Operation not supported, Device permission not present"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_29
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    .line 450
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 458
    .end local v0    # "proxyAdminUid":I
    :goto_31
    return-object v2

    .line 453
    :cond_32
    if-eqz v1, :cond_53

    .line 454
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation not supported on user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", only allowed on owner."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 458
    :cond_53
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    goto :goto_31
.end method

.method public enforceOwnerOnlySupportedOperation()V
    .registers 5

    .prologue
    .line 2531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2532
    .local v0, "userId":I
    if-eqz v0, :cond_25

    .line 2533
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Operation not supported on user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", only allowed on owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2536
    :cond_25
    return-void
.end method

.method public enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reqPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZZ)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 633
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_17

    .line 634
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 636
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    monitor-enter p0

    .line 1015
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1016
    .local v0, "N":I
    if-gtz v0, :cond_c

    .line 1017
    const/4 v2, 0x0

    monitor-exit p0

    .line 1023
    :goto_b
    return-object v2

    .line 1019
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1020
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 1021
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1023
    :cond_26
    monitor-exit p0

    goto :goto_b

    .line 1024
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_28
    move-exception v3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .registers 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    monitor-enter p0

    .line 1029
    const/16 v3, -0x2710

    if-ne p1, v3, :cond_e

    .line 1030
    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    .line 1038
    :goto_d
    return-object v2

    .line 1032
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 1034
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_19

    .line 1035
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1040
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :catchall_37
    move-exception v3

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw v3

    .line 1038
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_37

    goto :goto_d
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 2270
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 2271
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2274
    .end local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_14
    return-object v0

    .restart local v0    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1098
    const/4 v1, -0x1

    .line 1099
    .local v1, "callingUid":I
    if-nez p2, :cond_f

    .line 1100
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1125
    :cond_8
    :goto_8
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v6

    :cond_e
    :goto_e
    return v6

    .line 1103
    :cond_f
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1104
    .local v5, "userId":I
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v8

    invoke-virtual {v8, p2, v6, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1106
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_55

    .line 1107
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1108
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1109
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1110
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1111
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v8

    if-eq v8, v7, :cond_e

    .line 1117
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_51
    if-ne v1, v9, :cond_8

    move v6, v7

    .line 1118
    goto :goto_e

    .line 1121
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :cond_55
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_8
.end method

.method public getProxyAdmins(I)Ljava/util/List;
    .registers 32
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2633
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v28, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2635
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    const/16 v8, 0x9

    new-array v13, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v28, "adminUid"

    aput-object v28, v13, v8

    const/4 v8, 0x1

    const-string v28, "proxyUid"

    aput-object v28, v13, v8

    const/4 v8, 0x2

    const-string v28, "proxyType"

    aput-object v28, v13, v8

    const/4 v8, 0x3

    const-string v28, "componentName"

    aput-object v28, v13, v8

    const/4 v8, 0x4

    const-string v28, "proxyComponentName"

    aput-object v28, v13, v8

    const/4 v8, 0x5

    const-string v28, "label"

    aput-object v28, v13, v8

    const/4 v8, 0x6

    const-string v28, "icon"

    aput-object v28, v13, v8

    const/4 v8, 0x7

    const-string v28, "description"

    aput-object v28, v13, v8

    const/16 v8, 0x8

    const-string v28, "permissions"

    aput-object v28, v13, v8

    .line 2642
    .local v13, "columns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v28, "PROXY_ADMIN_INFO"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v27

    .line 2646
    .local v27, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_5a
    :goto_5a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    .line 2647
    .local v15, "cv":Landroid/content/ContentValues;
    const-string v8, "proxyUid"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 2648
    .local v23, "proxyUid":I
    const/4 v8, -0x1

    move/from16 v0, p1

    if-eq v8, v0, :cond_7d

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move/from16 v0, p1

    if-ne v8, v0, :cond_5a

    .line 2653
    :cond_7d
    const-string v8, "proxyType"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 2655
    .local v26, "type":I
    const/4 v3, 0x0

    .line 2656
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v8, 0x2

    move/from16 v0, v26

    if-ne v0, v8, :cond_f8

    .line 2657
    const-string v8, "label"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2658
    .local v5, "label":Ljava/lang/String;
    const-string v8, "icon"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 2659
    .local v7, "icon":[B
    const-string v8, "description"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2660
    .local v6, "description":Ljava/lang/String;
    const-string v8, "permissions"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2661
    .local v25, "serializedPerms":Ljava/lang/String;
    const-string v8, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2663
    .local v21, "perms":[Ljava/lang/String;
    const-string v8, "proxyComponentName"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2665
    .local v22, "proxyComponentName":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2666
    .local v12, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2667
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2668
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 2669
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2670
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2671
    move/from16 v0, v23

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2672
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2673
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2674
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2675
    iput-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2677
    new-instance v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 2715
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "description":Ljava/lang/String;
    .end local v7    # "icon":[B
    .end local v21    # "perms":[Ljava/lang/String;
    .end local v22    # "proxyComponentName":Ljava/lang/String;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_ef
    if-eqz v3, :cond_5a

    .line 2716
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    .line 2680
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v25    # "serializedPerms":Ljava/lang/String;
    :cond_f8
    const-string v8, "adminUid"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2681
    .local v9, "adminUid":I
    const-string v8, "componentName"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2682
    .local v14, "componentName":Ljava/lang/String;
    const-string v8, "permissions"

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2683
    .restart local v25    # "serializedPerms":Ljava/lang/String;
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 2685
    .restart local v12    # "cn":Landroid/content/ComponentName;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 2686
    .local v24, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2687
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v28, 0x80

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v18

    .line 2690
    .local v18, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v18, :cond_5a

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5a

    .line 2695
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 2696
    .restart local v4    # "ri":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 2697
    .restart local v10    # "ai":Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2698
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v0, v23

    iput v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2699
    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2700
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2701
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2702
    iput-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2705
    if-nez v25, :cond_17d

    .line 2706
    :try_start_16e
    new-instance v20, Landroid/app/admin/ProxyDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .local v20, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v3, v20

    .end local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_ef

    .line 2708
    :cond_17d
    new-instance v20, Landroid/app/admin/ProxyDeviceAdminInfo;

    const-string v8, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v8}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_190} :catch_194

    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    move-object/from16 v3, v20

    .end local v20    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_ef

    .line 2711
    :catch_194
    move-exception v16

    .line 2712
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ef

    .line 2718
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "adminUid":I
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "componentName":Ljava/lang/String;
    .end local v15    # "cv":Landroid/content/ContentValues;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "proxyUid":I
    .end local v24    # "resolveIntent":Landroid/content/Intent;
    .end local v25    # "serializedPerms":Ljava/lang/String;
    .end local v26    # "type":I
    :cond_19a
    return-object v19
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1045
    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1881
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    if-nez v1, :cond_6

    .line 1889
    :cond_5
    :goto_5
    return v0

    .line 1885
    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1889
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    const/16 v1, 0x1b

    if-ge p2, v1, :cond_b

    .line 646
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v1

    .line 653
    :goto_a
    return v1

    .line 649
    :cond_b
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 650
    .local v0, "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_34

    .line 651
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 653
    :cond_34
    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    goto :goto_a
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1006
    monitor-enter p0

    .line 1007
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 1008
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2198
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdminRemovable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovableInternal(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2208
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAdminRemovableInternal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    .line 2211
    .local v0, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    if-nez v0, :cond_37

    .line 2212
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2214
    :cond_37
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2215
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    .line 2216
    .local v1, "ret":Z
    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAdminRemovableInternal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    return v1
.end method

.method public isMigrationStateNOK()Z
    .registers 6

    .prologue
    .line 3134
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "migrationState"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3135
    .local v1, "migrationState":Ljava/lang/String;
    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current migration state is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    if-eqz v1, :cond_34

    const-string v2, "nok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2c

    move-result v2

    if-eqz v2, :cond_34

    .line 3137
    const/4 v2, 0x1

    .line 3143
    .end local v1    # "migrationState":Ljava/lang/String;
    :goto_2b
    return v2

    .line 3139
    :catch_2c
    move-exception v0

    .line 3140
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseDeviceManagerService"

    const-string v3, "error occured during getting migration state"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_34
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public isUMCAdmin(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2916
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v2

    .line 2917
    .local v2, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 2918
    .local v1, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    invoke-virtual {v1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2920
    const/4 v3, 0x1

    .line 2924
    .end local v1    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public migrateApplicationDisablePolicy(I)Z
    .registers 4
    .param p1, "newContainerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3126
    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "migrate ContainerApplicationPolicy after instalation of 3rd party apps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->migrateApplicationDisablePolicy(I)Z

    move-result v0

    return v0
.end method

.method public migrateEnterpriseContainer(IZ)Z
    .registers 10
    .param p1, "newContainerId"    # I
    .param p2, "isB2B"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3079
    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Migrating Enterprise container data after FOTA update"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    const/4 v3, 0x1

    .line 3082
    .local v3, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminNameForUserId(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 3083
    .local v0, "admin":Landroid/content/ComponentName;
    const-wide/16 v1, -0x1

    .line 3085
    .local v1, "adminUid":J
    const/16 v4, 0x64

    if-lt p1, v4, :cond_1e

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3086
    :cond_1e
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "No proper Admin owned by Container"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3089
    :cond_26
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEnterpriseDatabase(IZ)J

    move-result-wide v1

    .line 3091
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_36

    if-eqz p2, :cond_36

    .line 3092
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateEcppDatabse(Landroid/content/ComponentName;IJ)Z

    move-result v3

    .line 3094
    :cond_36
    if-eqz v3, :cond_42

    .line 3095
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EnterpriseMigrationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseMigrationManager;->getEnterpriseMigrationResult()Z

    move-result v3

    .line 3097
    :cond_42
    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateEnterpriseContainer() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    return v3
.end method

.method public onContainerCreation(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2411
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

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

    .line 2413
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2414
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2415
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    .line 2416
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2418
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 2419
    :catch_4d
    move-exception v1

    .line 2420
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerCreation"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 2424
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_56
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2445
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

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

    .line 2447
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2448
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2449
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    .line 2450
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2452
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 2453
    :catch_4d
    move-exception v1

    .line 2454
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerRemoved"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 2458
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_56
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2428
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

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

    .line 2430
    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2431
    .local v3, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2432
    .local v0, "cb":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    .line 2433
    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    .line 2435
    .local v4, "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    .line 2436
    :catch_4d
    move-exception v1

    .line 2437
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 2441
    .end local v0    # "cb":Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    .end local v4    # "subscriber":Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
    :cond_56
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1895
    monitor-enter p0

    .line 1896
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1898
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_26

    .line 1899
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1900
    const/4 v2, 0x1

    monitor-exit p0

    .line 1903
    :goto_22
    return v2

    .line 1898
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1903
    :cond_26
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_22

    .line 1904
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 736
    return-void
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 752
    const-string v0, "EnterpriseDeviceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from DPM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V

    .line 756
    return-void
.end method

.method public removeProxyAdmin(I)V
    .registers 6
    .param p1, "proxyUid"    # I

    .prologue
    .line 2722
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2724
    .local v0, "selectionValues":Landroid/content/ContentValues;
    const-string v1, "proxyUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2725
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PROXY_ADMIN_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 2726
    return-void
.end method

.method public restoreContainerAdminData(ILjava/lang/String;I)Z
    .registers 12
    .param p1, "creatorUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    .line 3147
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    sget v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->MY_PID:I

    if-eq v5, v6, :cond_10

    .line 3148
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Need to be System Process"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3151
    :cond_10
    const/4 v4, -0x2

    .line 3155
    .local v4, "ret":I
    const/4 v1, 0x0

    .line 3156
    .local v1, "dataDesc":Landroid/os/ParcelFileDescriptor;
    :try_start_12
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3157
    .local v2, "dataFile":Ljava/io/File;
    const/high16 v5, 0x3c000000

    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3160
    const-string v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3163
    .local v0, "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v5, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->backupApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    .line 3164
    if-nez v4, :cond_58

    .line 3165
    const/high16 v5, 0x18000000

    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 3167
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1, p3}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v5, p2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->restoreApplicationData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v4

    .line 3171
    :cond_58
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 3172
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_61} :catch_65

    .line 3179
    .end local v0    # "appPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v2    # "dataFile":Ljava/io/File;
    :cond_61
    :goto_61
    if-nez v4, :cond_83

    const/4 v5, 0x1

    :goto_64
    return v5

    .line 3175
    :catch_65
    move-exception v3

    .line 3176
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreContainerAdminData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/enterprise/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 3179
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_83
    const/4 v5, 0x0

    goto :goto_64
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .registers 16
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x3

    const/4 v10, -0x1

    .line 1203
    monitor-enter p0

    :try_start_4
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "apkFilePath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_15d

    move-result-object v0

    .line 1206
    .local v0, "activeComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_25

    .line 1207
    const/4 v9, -0x2

    .line 1281
    :goto_23
    monitor-exit p0

    return v9

    .line 1210
    :cond_25
    if-nez p1, :cond_37

    .line 1214
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .local v2, "apkFilePath":Ljava/lang/String;
    :cond_27
    :goto_27
    if-eqz v2, :cond_35

    :try_start_29
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_14e
    .catchall {:try_start_29 .. :try_end_32} :catchall_160

    move-result v11

    if-nez v11, :cond_43

    :cond_35
    move-object p1, v2

    .line 1215
    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_23

    .line 1210
    :cond_37
    :try_start_37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_15d

    move-result v11

    if-lez v11, :cond_27

    move-object v2, p1

    goto :goto_27

    .line 1217
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_43
    :try_start_43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v1, "apkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_54

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_6e

    .line 1219
    :cond_54
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read or is not a file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    .line 1220
    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_23

    .line 1224
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_6e
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1226
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v7, :cond_7c

    move-object p1, v2

    .line 1227
    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_23

    .line 1230
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_7c
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    .line 1231
    const/4 v9, -0x4

    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_23

    .line 1236
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_8b
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v9

    if-nez v9, :cond_a7

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a7

    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a7

    .line 1239
    const/4 v9, -0x5

    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_23

    .line 1241
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_a7
    const-string v9, "self_update_admin_component"

    const-string v11, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1243
    .local v3, "cNames":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1245
    .local v8, "storeString":Ljava/lang/String;
    if-nez v3, :cond_10e

    .line 1246
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 1255
    :cond_b6
    :goto_b6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/app/selfUpdateApks/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".apk"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1257
    .local v5, "destFilePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v4, "destFile":Ljava/io/File;
    if-eqz v4, :cond_13c

    .line 1260
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_fa

    .line 1261
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 1262
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1ed

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1268
    :cond_fa
    const-string v9, "self_update_admin_component"

    const-string v11, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v8, v11}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10a

    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_140

    :cond_10a
    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    move v9, v10

    .line 1270
    goto/16 :goto_23

    .line 1249
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "destFilePath":Ljava/lang/String;
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_10e
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Pending"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b6

    .line 1251
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_b6

    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v5    # "destFilePath":Ljava/lang/String;
    :cond_13c
    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    move v9, v10

    .line 1265
    goto/16 :goto_23

    .line 1272
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :cond_140
    const/16 v9, 0x1a4

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v5, v9, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1274
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_14a} :catch_14e
    .catchall {:try_start_43 .. :try_end_14a} :catchall_160

    .line 1281
    const/4 v9, 0x0

    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto/16 :goto_23

    .line 1276
    .end local v1    # "apkFile":Ljava/io/File;
    .end local v3    # "cNames":Ljava/lang/String;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "destFilePath":Ljava/lang/String;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "storeString":Ljava/lang/String;
    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :catch_14e
    move-exception v6

    .line 1277
    .local v6, "e":Ljava/lang/Exception;
    :try_start_14f
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Ex: "

    invoke-static {v9, v11, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1278
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_159
    .catchall {:try_start_14f .. :try_end_159} :catchall_160

    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    move v9, v10

    .line 1279
    goto/16 :goto_23

    .line 1203
    .end local v0    # "activeComponent":Landroid/content/ComponentName;
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_15d
    move-exception v9

    :goto_15e
    monitor-exit p0

    throw v9

    .end local p1    # "apkFilePath":Ljava/lang/String;
    .restart local v0    # "activeComponent":Landroid/content/ComponentName;
    .restart local v2    # "apkFilePath":Ljava/lang/String;
    :catchall_160
    move-exception v9

    move-object p1, v2

    .end local v2    # "apkFilePath":Ljava/lang/String;
    .restart local p1    # "apkFilePath":Ljava/lang/String;
    goto :goto_15e
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 663
    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    .line 2571
    return-void
.end method

.method public setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "removable"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 1055
    const-string v7, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {p0, p1, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1057
    const/4 v1, -0x1

    .line 1058
    .local v1, "callingUid":I
    if-nez p3, :cond_21

    .line 1059
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1081
    :goto_d
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6a

    .line 1082
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Admin is not active"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1062
    :cond_21
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1063
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    invoke-virtual {v7, p3, v5, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1066
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_67

    .line 1067
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Can\'t found packageName"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v4

    .line 1069
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1070
    .local v3, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1071
    invoke-virtual {v3}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1075
    .end local v3    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :cond_64
    if-ne v1, v9, :cond_67

    .line 1088
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v6    # "userId":I
    :goto_66
    return v5

    .line 1079
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "userId":I
    :cond_67
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_d

    .line 1085
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "userId":I
    :cond_6a
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAdminRemovable : callingUid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ADMIN_INFO"

    const-string v9, "canRemove"

    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1088
    .local v5, "result":Z
    goto :goto_66
.end method

.method public setB2BMode(Z)I
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 2527
    const/4 v0, 0x0

    return v0
.end method

.method public setPermissions(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "adminUid"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 2866
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    if-eqz p2, :cond_d

    array-length v2, p2

    if-nez v2, :cond_e

    .line 2875
    :cond_d
    :goto_d
    return-void

    .line 2870
    :cond_e
    const/4 v2, 0x0

    aget-object v1, p2, v2

    .line 2871
    .local v1, "serializedPerms":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12
    array-length v2, p2

    if-ge v0, v2, :cond_31

    .line 2872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2871
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2874
    :cond_31
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PROXY_ADMIN_INFO"

    const-string v4, "permissions"

    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d
.end method

.method public systemReady()V
    .registers 8

    .prologue
    .line 1137
    const-string v4, "EnterpriseDeviceManagerService"

    const-string/jumbo v5, "systemReady"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->initService(Landroid/content/Context;)V

    .line 1141
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->init(Landroid/content/Context;)V

    .line 1143
    new-instance v4, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    .line 1145
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "InternalHandlerThread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1147
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1148
    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    .line 1150
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1()V

    .line 1151
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    .line 1154
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1155
    .local v0, "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z

    goto :goto_40

    .line 1159
    .end local v0    # "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_5a
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1160
    .local v2, "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v4}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_64

    .line 1163
    .end local v2    # "ps":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;>;"
    :cond_7a
    const-string v4, "sec_analytics"

    new-instance v5, Lcom/android/server/analytics/data/collection/DataCollectionService;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/analytics/data/collection/DataCollectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1164
    return-void
.end method

.method public final updateAdminPermissions()V
    .registers 6

    .prologue
    .line 1167
    const-string v3, "EnterpriseDeviceManagerService"

    const-string/jumbo v4, "updateAdminPermissions"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :try_start_8
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1171
    .local v0, "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_12

    .line 1175
    .end local v0    # "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_2c
    move-exception v1

    .line 1176
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_30
    return-void

    .line 1174
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_31
    :try_start_31
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_2c

    goto :goto_30
.end method

.method public updateProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V
    .registers 12
    .param p1, "proxyAdmin"    # Landroid/app/admin/ProxyDeviceAdminInfo;
    .param p2, "proxyUid"    # I
    .param p3, "adminComponentName"    # Landroid/content/ComponentName;
    .param p4, "adminUid"    # I

    .prologue
    const/4 v6, 0x0

    .line 2605
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.enterprise.permission.MDM_PROXY_ADMIN_INTERNAL"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2608
    .local v1, "selectionValues":Landroid/content/ContentValues;
    const-string v4, "proxyUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2610
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2611
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2612
    const-string v4, "componentName"

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    const-string v4, "proxyComponentName"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    const-string v4, "proxyType"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2615
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2616
    .local v2, "serializedPerms":Ljava/lang/String;
    if-eqz v2, :cond_88

    .line 2617
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_55
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_83

    .line 2618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2617
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 2620
    :cond_83
    const-string v4, "permissions"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    .end local v0    # "i":I
    :cond_88
    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_aa

    .line 2623
    const-string v4, "label"

    invoke-virtual {p1, v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    const-string v4, "icon"

    invoke-virtual {p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2625
    const-string v4, "description"

    invoke-virtual {p1, v6}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    :cond_aa
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PROXY_ADMIN_INFO"

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 2629
    return-void
.end method
