.class public final Lcom/android/server/wifi/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiService$16;,
        Lcom/android/server/wifi/WifiService$Multicaster;,
        Lcom/android/server/wifi/WifiService$DeathRecipient;,
        Lcom/android/server/wifi/WifiService$LockList;,
        Lcom/android/server/wifi/WifiService$WifiLock;,
        Lcom/android/server/wifi/WifiService$EncryptTool;,
        Lcom/android/server/wifi/WifiService$TdlsTask;,
        Lcom/android/server/wifi/WifiService$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiService$BatchedScanRequest;,
        Lcom/android/server/wifi/WifiService$ApInfo;,
        Lcom/android/server/wifi/WifiService$WifiProfile;,
        Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiService$ClientHandler;,
        Lcom/android/server/wifi/WifiService$HS20_ConType;
    }
.end annotation


# static fields
.field private static final CHECK_IMEI:I = 0xa

.field private static final DBG:Z

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x10803be

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x10803bf

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field private static defaultTimeoutValue:I

.field private static filePathDefaultAp:Ljava/io/File;

.field private static filePathGeneralinfo:Ljava/io/File;

.field private static mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static final mConfigPriorAp:Ljava/lang/String;

.field private static mFilePath:Ljava/io/File;

.field private static mFirstScanAddProfile:Z

.field private static mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static mMatchedNetworkName:Ljava/lang/String;

.field private static mMatchedPrevNetworkName:Ljava/lang/String;

.field private static mRemoveWifiProfile:Z

.field private static mWifiProfileLoaded:Z


# instance fields
.field private final PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

.field private final PATH_WIFIPROFILE:Ljava/lang/String;

.field private final PATH_WIFIPROFILE_NAME:Ljava/lang/String;

.field private allowWifi:Z

.field private allowWifiAp:Z

.field private isBootCompleted:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mBatchedScanSupported:Z

.field private final mBatchedScanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$BatchedScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBcSmsReceived:Z

.field private mBlockScanFromOthers:Z

.field private mChameleonEnabled:Z

.field private mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mDomRoamMaxUser:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGsmMaxUser:I

.field private mHotspotTestMode:Z

.field private mHs20Noti:Landroid/app/Notification;

.field private mIntRoamMaxUser:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field final mLocks:Lcom/android/server/wifi/WifiService$LockList;

.field private mMaxUser:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private mNotificationHS20Enabled:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestWifiOn:Z

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mSendDhcpRelease:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSsid:Ljava/lang/String;

.field private mTetheredData:I

.field public mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiEnabled:Z

.field private mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

.field final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    .line 184
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Wifi_ConfigPriorAP"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    .line 229
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;

    .line 233
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    .line 235
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    .line 236
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    .line 237
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    .line 238
    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    .line 524
    const-string v0, "600"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 537
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 163
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBcSmsReceived:Z

    .line 164
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBlockScanFromOthers:Z

    .line 166
    new-instance v3, Lcom/android/server/wifi/WifiService$LockList;

    invoke-direct {v3, p0, v9}, Lcom/android/server/wifi/WifiService$LockList;-><init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    .line 176
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    .line 199
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    .line 201
    iput-object v9, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 208
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 212
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 213
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    .line 216
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    .line 226
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    .line 230
    const-string v3, "/data/misc/wifi"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE:Ljava/lang/String;

    .line 231
    const-string v3, "default_ap.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE_NAME:Ljava/lang/String;

    .line 232
    const-string v3, "generalinfo_nw.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

    .line 240
    new-instance v3, Landroid/net/NetworkInfo;

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v3, v7, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 251
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mRequestWifiOn:Z

    .line 515
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mChameleonEnabled:Z

    .line 516
    iput v6, p0, Lcom/android/server/wifi/WifiService;->mTetheredData:I

    .line 517
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    .line 518
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mMaxUser:I

    .line 519
    iput v7, p0, Lcom/android/server/wifi/WifiService;->mGsmMaxUser:I

    .line 520
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mDomRoamMaxUser:I

    .line 521
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mIntRoamMaxUser:I

    .line 532
    iput-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1829
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    .line 3075
    new-instance v3, Lcom/android/server/wifi/WifiService$13;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$13;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4254
    new-instance v3, Lcom/android/server/wifi/WifiService$15;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$15;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 538
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    .line 542
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 548
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 549
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    .line 551
    const-string/jumbo v3, "wifi.interface"

    const-string/jumbo v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 553
    new-instance v3, Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 554
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 555
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 556
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    .line 558
    new-instance v3, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 559
    new-instance v3, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 560
    new-instance v3, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 568
    new-instance v3, Lcom/android/server/wifi/WifiService$WifiProfile;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$WifiProfile;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

    .line 571
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 572
    .local v2, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 573
    new-instance v3, Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$ClientHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    .line 574
    new-instance v3, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    .line 575
    new-instance v3, Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 576
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiController;->start()V

    .line 578
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    .line 581
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForScanModeChange()V

    .line 585
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 589
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$1;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 600
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 601
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v3, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 609
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v3, "device_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    .line 616
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$2;-><init>(Lcom/android/server/wifi/WifiService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    const-string v3, "Private"

    sget-object v4, Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 690
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$3;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 756
    :cond_1a4
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$4;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 795
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$5;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$5;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 838
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$6;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$6;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 882
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$7;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$7;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 976
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$10;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$10;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.COEX_INFO"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 997
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$11;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$11;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1048
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$12;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$12;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForBroadcasts()V

    .line 1086
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiService;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/ScanResult;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$1500()Ljava/io/File;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/io/File;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/io/File;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 155
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 155
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 155
    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    return p0
.end method

.method static synthetic access$2300()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$2302([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiService$ApInfo;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$2400()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$2402([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1
    .param p0, "x0"    # [Lcom/android/server/wifi/WifiService$ApInfo;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->mConfigPriorAp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiService;Landroid/os/IBinder;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiService;)Landroid/net/wifi/PppoeStateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/WifiService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/WifiService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z
    .registers 8
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;

    .prologue
    .line 3952
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$3400(Lcom/android/server/wifi/WifiService$LockList;Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3956
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3958
    .local v1, "ident":J
    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3959
    iget v3, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_58

    .line 3971
    :goto_2d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_41
    .catchall {:try_start_25 .. :try_end_35} :catchall_4b

    .line 3972
    const/4 v3, 0x1

    .line 3976
    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    return v3

    .line 3961
    :pswitch_3a
    :try_start_3a
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    goto :goto_2d

    .line 3973
    :catch_41
    move-exception v0

    .line 3974
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_36

    .line 3964
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_44
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4a} :catch_41
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    goto :goto_2d

    .line 3976
    :catchall_4b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3968
    :pswitch_50
    :try_start_50
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_56} :catch_41
    .catchall {:try_start_50 .. :try_end_56} :catchall_4b

    goto :goto_2d

    .line 3959
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_50
        :pswitch_44
    .end packed-switch
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .registers 4

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .registers 4

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    return-void
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .registers 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1227
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1228
    const/4 v0, 0x1

    .line 1234
    :goto_b
    return v0

    .line 1229
    :cond_c
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1230
    const/4 v0, 0x2

    goto :goto_b

    .line 1231
    :cond_18
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1232
    const/4 v0, 0x3

    goto :goto_b

    .line 1234
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .registers 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1218
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v2

    .line 1224
    :cond_d
    :goto_d
    return v0

    .line 1220
    :cond_e
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    move v0, v3

    .line 1222
    goto :goto_d

    .line 1224
    :cond_20
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_d
.end method

.method private handleSecurityPolicy()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3168
    const/4 v1, 0x0

    .line 3170
    .local v1, "userId":I
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_91
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_9b

    .line 3177
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 3178
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_a5

    .line 3182
    :goto_1e
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")     allowWifiAp ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v3, :cond_6e

    .line 3184
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6e

    .line 3185
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 3186
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3187
    .local v2, "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3188
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3191
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_6e
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v3, :cond_90

    .line 3192
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_90

    .line 3193
    const/4 v3, 0x0

    invoke-virtual {p0, v6, v3}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3194
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3195
    .restart local v2    # "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3196
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3199
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_90
    return-void

    .line 3171
    :catch_91
    move-exception v0

    .line 3172
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 3173
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_9b
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "WifiService"

    const-string v4, "Failed getting userId using ActivityManagerNative"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 3179
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_a5
    move-exception v3

    goto/16 :goto_1e
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 4291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4292
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 4293
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 4294
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 4293
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 4296
    :cond_2a
    return-object v0
.end method

.method private isHotspotTestMode()Z
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1182
    const/4 v6, 0x0

    .line 1183
    .local v6, "isTestMode":Z
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_47

    .line 1184
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 1185
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1186
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1189
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_3e
    .catchall {:try_start_c .. :try_end_16} :catchall_4f

    .line 1190
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1191
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1192
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_16

    const-string v9, "ATT_HOTSPOT"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1193
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_37} :catch_6b
    .catchall {:try_start_16 .. :try_end_37} :catchall_68

    move-result v9

    if-ne v9, v7, :cond_3c

    move v6, v7

    :goto_3b
    goto :goto_16

    :cond_3c
    move v6, v8

    goto :goto_3b

    .line 1196
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3e
    move-exception v4

    .line 1197
    .local v4, "e":Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4f

    .line 1200
    if-eqz v1, :cond_47

    .line 1201
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5b

    .line 1207
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_47
    :goto_47
    if-nez v6, :cond_4d

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v9, :cond_4e

    :cond_4d
    move v8, v7

    :cond_4e
    return v8

    .line 1199
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catchall_4f
    move-exception v7

    .line 1200
    :goto_50
    if-eqz v1, :cond_55

    .line 1201
    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 1199
    :cond_55
    :goto_55
    throw v7

    .line 1202
    :catch_56
    move-exception v4

    .line 1203
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1202
    :catch_5b
    move-exception v4

    .line 1203
    .end local v1    # "buf":Ljava/io/BufferedReader;
    :goto_5c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 1200
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_60
    if-eqz v2, :cond_47

    .line 1201
    :try_start_62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_47

    .line 1202
    :catch_66
    move-exception v4

    goto :goto_5c

    .line 1199
    :catchall_68
    move-exception v7

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_50

    .line 1196
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_6b
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3f
.end method

.method private isIMEIWritten()Z
    .registers 5

    .prologue
    .line 1171
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1173
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 1175
    const/4 v2, 0x1

    .line 1178
    :goto_11
    return v2

    .line 1177
    :cond_12
    const-string v2, "WifiService"

    const-string v3, "Fail to get IMEI"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private isSecuredAp(I)Z
    .registers 9
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4233
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 4234
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3f

    .line 4235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4236
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_c

    .line 4237
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 4251
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    return v3

    .line 4240
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_25
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    .line 4244
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_24

    move v3, v4

    .line 4247
    goto :goto_24

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3f
    move v3, v4

    .line 4251
    goto :goto_24
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .registers 4
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3932
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    .line 3939
    :goto_5
    return-void

    .line 3936
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 3932
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .registers 4
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3942
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    .line 3949
    :goto_5
    return-void

    .line 3946
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 3942
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 3202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3203
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3204
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3205
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3206
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3207
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3208
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3210
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3212
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3214
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3219
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3220
    return-void
.end method

.method private registerForScanModeChange()V
    .registers 5

    .prologue
    .line 3153
    new-instance v0, Lcom/android/server/wifi/WifiService$14;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiService$14;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Handler;)V

    .line 3161
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3164
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 4017
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$3700(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;

    move-result-object v3

    .line 4019
    .local v3, "wifiLock":Lcom/android/server/wifi/WifiService$WifiLock;
    sget-boolean v4, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v4, :cond_22

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    :cond_22
    if-eqz v3, :cond_3f

    const/4 v0, 0x1

    .line 4023
    .local v0, "hadLock":Z
    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4025
    .local v1, "ident":J
    if-eqz v0, :cond_3b

    .line 4026
    :try_start_2b
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4027
    iget v4, v3, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_5e

    .line 4038
    :goto_33
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3b} :catch_48
    .catchall {:try_start_2b .. :try_end_3b} :catchall_51

    .line 4042
    :cond_3b
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4045
    return v0

    .line 4021
    .end local v0    # "hadLock":Z
    .end local v1    # "ident":J
    :cond_3f
    const/4 v0, 0x0

    goto :goto_25

    .line 4029
    .restart local v0    # "hadLock":Z
    .restart local v1    # "ident":J
    :pswitch_41
    :try_start_41
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    goto :goto_33

    .line 4040
    :catch_48
    move-exception v4

    goto :goto_3b

    .line 4032
    :pswitch_4a
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_48
    .catchall {:try_start_41 .. :try_end_50} :catchall_51

    goto :goto_33

    .line 4042
    :catchall_51
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4035
    :pswitch_56
    :try_start_56
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5c} :catch_48
    .catchall {:try_start_56 .. :try_end_5c} :catchall_51

    goto :goto_33

    .line 4027
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_56
        :pswitch_4a
    .end packed-switch
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1211
    .local v0, "length":I
    if-le v0, v2, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1e

    .line 1213
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1215
    .end local p1    # "string":Ljava/lang/String;
    :cond_1e
    return-object p1
.end method

.method private removeMulticasterLocked(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    .line 4151
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 4153
    .local v2, "removed":Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v2, :cond_d

    .line 4154
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 4156
    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a

    .line 4157
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 4160
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4162
    .local v0, "ident":J
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_2c
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 4165
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4167
    return-void

    .line 4165
    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4163
    :catch_2c
    move-exception v3

    goto :goto_23
.end method

.method private resolveBatchedScannersLocked()V
    .registers 21

    .prologue
    .line 1912
    new-instance v14, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v14}, Landroid/net/wifi/BatchedScanSettings;-><init>()V

    .line 1913
    .local v14, "setting":Landroid/net/wifi/BatchedScanSettings;
    const/4 v12, 0x0

    .line 1914
    .local v12, "responsibleWorkSource":Landroid/os/WorkSource;
    const/4 v11, 0x0

    .line 1915
    .local v11, "responsibleUid":I
    const-wide/16 v9, 0x0

    .line 1917
    .local v9, "responsibleCsph":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_23

    .line 1918
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/net/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    .line 1987
    :goto_22
    return-void

    .line 1921
    :cond_23
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2b
    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_149

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 1922
    .local v8, "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v13, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 1929
    .local v13, "s":Landroid/net/wifi/BatchedScanSettings;
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_45

    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_110

    .line 1931
    :cond_45
    const/16 v1, 0x14

    .line 1939
    .local v1, "currentChannelCount":I
    :cond_47
    :goto_47
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_130

    .line 1940
    const/16 v4, 0x1e

    .line 1944
    .local v4, "currentScanInterval":I
    :goto_52
    mul-int/lit16 v15, v1, 0xe10

    div-int/2addr v15, v4

    int-to-double v2, v15

    .line 1946
    .local v2, "currentCsph":D
    cmpl-double v15, v2, v9

    if-lez v15, :cond_5f

    .line 1947
    iget v11, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    .line 1948
    iget-object v12, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 1949
    move-wide v9, v2

    .line 1952
    :cond_5f
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_76

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_76

    .line 1954
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 1956
    :cond_76
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_96

    iget v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_92

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_96

    .line 1959
    :cond_92
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 1961
    :cond_96
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_ad

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_ad

    .line 1963
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 1965
    :cond_ad
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_cd

    iget v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_c9

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_cd

    .line 1968
    :cond_c9
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 1970
    :cond_cd
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_134

    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_134

    .line 1971
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_e5

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_2b

    .line 1972
    :cond_e5
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v15, :cond_f0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 1973
    :cond_f0
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_f6
    :goto_f6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1974
    .local v5, "i":Ljava/lang/String;
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f6

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    .line 1933
    .end local v1    # "currentChannelCount":I
    .end local v2    # "currentCsph":D
    .end local v4    # "currentScanInterval":I
    .end local v5    # "i":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_110
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1935
    .restart local v1    # "currentChannelCount":I
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const-string v16, "A"

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_122

    add-int/lit8 v1, v1, 0x8

    .line 1936
    :cond_122
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const-string v16, "B"

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_47

    .line 1942
    :cond_130
    iget v4, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .restart local v4    # "currentScanInterval":I
    goto/16 :goto_52

    .line 1978
    .restart local v2    # "currentCsph":D
    :cond_134
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_140

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_2b

    .line 1979
    :cond_140
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    goto/16 :goto_2b

    .line 1984
    .end local v1    # "currentChannelCount":I
    .end local v2    # "currentCsph":D
    .end local v4    # "currentScanInterval":I
    .end local v8    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    .end local v13    # "s":Landroid/net/wifi/BatchedScanSettings;
    :cond_149
    invoke-virtual {v14}, Landroid/net/wifi/BatchedScanSettings;->constrain()V

    .line 1985
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    double-to-int v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    goto/16 :goto_22
.end method

.method private declared-synchronized setWifiEnabled(ZI)Z
    .registers 16
    .param p1, "enable"    # Z
    .param p2, "cmd"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const v12, 0x2600d

    const/4 v7, 0x0

    .line 2084
    monitor-enter p0

    :try_start_7
    sget-boolean v10, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v10, :cond_12

    .line 2085
    const-string v10, "WifiService"

    const-string v11, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_55

    .line 2088
    :cond_12
    if-eqz p1, :cond_61

    .line 2089
    const/4 v5, 0x0

    .line 2091
    .local v5, "userId":I
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v10

    iget v5, v10, Landroid/content/pm/UserInfo;->id:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_4c
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_1f} :catch_58
    .catchall {:try_start_15 .. :try_end_1f} :catchall_55

    .line 2098
    :goto_1f
    :try_start_1f
    iget-object v10, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v5}, Landroid/app/admin/IDevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_10f
    .catchall {:try_start_1f .. :try_end_28} :catchall_55

    .line 2101
    :goto_28
    :try_start_28
    iget-boolean p1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 2102
    iget-boolean v10, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v10, :cond_61

    .line 2103
    const-string v8, "WifiService"

    const-string v9, "Wi-Fi is not allowed (Policy)a"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2105
    .local v6, "wifiToastIntent":Landroid/content/Intent;
    const-string v8, "info_type"

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2106
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_55

    .line 2187
    .end local v5    # "userId":I
    .end local v6    # "wifiToastIntent":Landroid/content/Intent;
    :goto_4a
    monitor-exit p0

    return v7

    .line 2092
    .restart local v5    # "userId":I
    :catch_4c
    move-exception v0

    .line 2093
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4d
    const-string v10, "WifiService"

    const-string v11, "Failed getting userId using ActivityManagerNative"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_55

    goto :goto_1f

    .line 2084
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "userId":I
    :catchall_55
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2094
    .restart local v5    # "userId":I
    :catch_58
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_59
    const-string v10, "WifiService"

    const-string v11, "Failed getting userId using ActivityManagerNative"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 2123
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v5    # "userId":I
    :cond_61
    if-eqz p1, :cond_94

    .line 2124
    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne p2, v12, :cond_90

    move v10, v9

    :goto_68
    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiStateMachine;->canEnabledFirmwareType(I)I

    move-result v1

    .line 2125
    .local v1, "enabledFirmwareType":I
    if-ltz v1, :cond_94

    .line 2126
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2127
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "req_type"

    if-ne p2, v12, :cond_92

    move v8, v9

    :goto_7a
    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2128
    const-string v8, "extra_type"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2129
    const/high16 v8, 0x4000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2130
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_4a

    .end local v1    # "enabledFirmwareType":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_90
    move v10, v7

    .line 2124
    goto :goto_68

    .restart local v1    # "enabledFirmwareType":I
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_92
    move v8, v7

    .line 2127
    goto :goto_7a

    .line 2137
    .end local v1    # "enabledFirmwareType":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_94
    if-nez p1, :cond_a9

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    if-eqz v9, :cond_a9

    .line 2138
    const-string v9, "WifiService"

    const-string v10, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x200a1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2142
    :cond_a9
    if-eqz p1, :cond_ae

    .line 2143
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    .line 2150
    :cond_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b1
    .catchall {:try_start_59 .. :try_end_b1} :catchall_55

    move-result-wide v2

    .line 2152
    .local v2, "ident":J
    :try_start_b2
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_f2

    move-result v9

    if-nez v9, :cond_bf

    .line 2176
    :try_start_ba
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_55

    move v7, v8

    .line 2154
    goto :goto_4a

    .line 2156
    :cond_bf
    if-eqz p1, :cond_c1

    .line 2165
    :cond_c1
    if-eqz p1, :cond_f7

    if-eq p2, v12, :cond_f7

    .line 2166
    :try_start_c5
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine;->isUsbTethered()Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 2167
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v8, "req_type"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2169
    const-string v8, "extra_type"

    const/4 v9, 0x4

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    const/high16 v8, 0x14000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2171
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x20130

    invoke-virtual {v8, v9, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_ed
    .catchall {:try_start_c5 .. :try_end_ed} :catchall_f2

    .line 2176
    :try_start_ed
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4a

    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_f2
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_f7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2179
    if-ne p2, v12, :cond_109

    .line 2180
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-eqz p1, :cond_101

    move v7, v8

    :cond_101
    invoke-virtual {v9, p2, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 2184
    :goto_104
    if-nez p1, :cond_106

    :cond_106
    move v7, v8

    .line 2187
    goto/16 :goto_4a

    .line 2182
    :cond_109
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v7, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_10e
    .catchall {:try_start_ed .. :try_end_10e} :catchall_55

    goto :goto_104

    .line 2099
    .end local v2    # "ident":J
    .restart local v5    # "userId":I
    :catch_10f
    move-exception v10

    goto/16 :goto_28
.end method

.method private stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    .registers 9
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    .line 1894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1895
    .local v0, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiService$BatchedScanRequest;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    monitor-enter v4

    .line 1896
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 1897
    .local v2, "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz p1, :cond_2a

    iget-object v3, v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {p1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1898
    :cond_2a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    if-eqz p1, :cond_e

    .line 1902
    .end local v2    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 1903
    .restart local v2    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1908
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw v3

    .line 1905
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_51

    .line 1906
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->resolveBatchedScannersLocked()V

    .line 1908
    :cond_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_45

    .line 1909
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 4111
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 4113
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 4114
    :try_start_6
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    .line 4115
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiService$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiService$Multicaster;-><init>(Lcom/android/server/wifi/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4120
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 4121
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2d

    .line 4123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4124
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4126
    .local v0, "ident":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_35
    .catchall {:try_start_24 .. :try_end_29} :catchall_30

    .line 4129
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4131
    return-void

    .line 4121
    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 4129
    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catchall_30
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4127
    :catch_35
    move-exception v3

    goto :goto_29
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "lockMode"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3908
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    const/4 v1, 0x1

    if-eq p2, v1, :cond_48

    const/4 v1, 0x2

    if-eq p2, v1, :cond_48

    const/4 v1, 0x3

    if-eq p2, v1, :cond_48

    .line 3912
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    sget-boolean v1, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v1, :cond_46

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3914
    :cond_46
    const/4 v1, 0x0

    .line 3927
    :goto_47
    return v1

    .line 3916
    :cond_48
    if-eqz p4, :cond_51

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_51

    .line 3917
    const/4 p4, 0x0

    .line 3919
    :cond_51
    if-eqz p4, :cond_5e

    .line 3920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 3922
    :cond_5e
    if-nez p4, :cond_69

    .line 3923
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 3925
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_69
    new-instance v0, Lcom/android/server/wifi/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$WifiLock;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 3926
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v2

    .line 3927
    :try_start_76
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_47

    .line 3928
    :catchall_7c
    move-exception v1

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 2474
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2475
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v1, v2, :cond_d

    .line 2476
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 2478
    :cond_d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2486
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_20

    .line 2487
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 2494
    :goto_1f
    return v0

    .line 2489
    :cond_20
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2493
    :cond_28
    const-string v1, "WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2786
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2788
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 2789
    return-void
.end method

.method public callSECApi(Landroid/os/Message;)I
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3287
    if-nez p1, :cond_7

    move v7, v8

    .line 3698
    :cond_6
    :goto_6
    :pswitch_6
    return v7

    .line 3290
    :cond_7
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_3b6

    :pswitch_c
    move v7, v8

    .line 3698
    goto :goto_6

    .line 3292
    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_6

    .line 3295
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3296
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto :goto_6

    .line 3298
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3299
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto :goto_6

    .line 3302
    :pswitch_26
    :try_start_26
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2d

    move-result v7

    goto :goto_6

    .line 3303
    :catch_2d
    move-exception v2

    .line 3304
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v7, v8

    .line 3305
    goto :goto_6

    .line 3309
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_33
    :try_start_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3310
    .local v0, "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v8, "mac"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_42} :catch_44

    move-result v7

    goto :goto_6

    .line 3311
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_44
    move-exception v2

    .line 3312
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 3317
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_49
    :try_start_49
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4e} :catch_50

    move-result v7

    goto :goto_6

    .line 3318
    :catch_50
    move-exception v2

    .line 3319
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 3324
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_55
    :try_start_55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3325
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v8, "macaddrAcl"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->setMacaddrAcl(I)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_64} :catch_66

    move-result v7

    goto :goto_6

    .line 3326
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_66
    move-exception v2

    .line 3327
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 3331
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_6b
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v8

    if-ne v8, v6, :cond_7b

    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->getSpMode()I

    move-result v8

    if-eq v8, v6, :cond_6

    .line 3333
    :cond_7b
    :try_start_7b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3334
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v8, "maxClient"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_8a} :catch_8d

    move-result v7

    goto/16 :goto_6

    .line 3335
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_8d
    move-exception v2

    .line 3336
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 3342
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_93
    :try_start_93
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3343
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v6, "wps_start"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 3344
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->startWpsPbc()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a5} :catch_a7

    goto/16 :goto_6

    .line 3348
    .end local v5    # "type":Ljava/lang/String;
    :catch_a7
    move-exception v2

    .line 3349
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v8

    .line 3350
    goto/16 :goto_6

    .line 3345
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_ae
    :try_start_ae
    const-string/jumbo v6, "wps_cancel"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3346
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->cancelWps()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_bc} :catch_a7

    goto/16 :goto_6

    .line 3356
    .end local v5    # "type":Ljava/lang/String;
    :pswitch_be
    :try_start_be
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "att_hotspot_test"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_f0

    .line 3357
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 3360
    :goto_cf
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHotspotTestMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_be .. :try_end_e9} :catch_f4

    .line 3365
    :goto_e9
    iget-boolean v8, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v8, :cond_103

    :goto_ed
    move v7, v6

    goto/16 :goto_6

    .line 3359
    :cond_f0
    const/4 v8, 0x0

    :try_start_f1
    iput-boolean v8, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z
    :try_end_f3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f1 .. :try_end_f3} :catch_f4

    goto :goto_cf

    .line 3361
    :catch_f4
    move-exception v4

    .line 3362
    .local v4, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 3363
    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "att_hotspot_test"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e9

    .end local v4    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_103
    move v6, v7

    .line 3365
    goto :goto_ed

    .line 3377
    :pswitch_105
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3378
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    .line 3383
    :pswitch_10f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3384
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_6

    .line 3390
    :pswitch_119
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3391
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3396
    :pswitch_124
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3397
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    :pswitch_12f
    move v7, v8

    .line 3403
    goto/16 :goto_6

    :pswitch_132
    move v7, v8

    .line 3420
    goto/16 :goto_6

    :pswitch_135
    move v7, v8

    .line 3432
    goto/16 :goto_6

    .line 3442
    :pswitch_138
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3443
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3446
    :pswitch_143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3447
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3451
    :pswitch_14e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3452
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3453
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "netId"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiStateMachine;->unlockMobNetwork(I)V

    goto/16 :goto_6

    .line 3458
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_162
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3459
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3463
    :pswitch_16d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3465
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v8, "enable"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_191

    .line 3466
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_183

    .line 3467
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 3468
    :cond_183
    const-string v6, "WifiService"

    const-string v8, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    :goto_18a
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    .line 3470
    :cond_191
    const-string v6, "WifiService"

    const-string v8, "Start scan, start assoc"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18a

    .line 3478
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3479
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "mode"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiStateMachine;->setRvfMode(I)V

    goto/16 :goto_6

    .line 3483
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1aa
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v7

    goto/16 :goto_6

    .line 3487
    :pswitch_1b2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3488
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "mode"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiStateMachine;->setSpMode(I)V

    goto/16 :goto_6

    .line 3492
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1c3
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->getSpMode()I

    move-result v7

    goto/16 :goto_6

    .line 3495
    :pswitch_1cb
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3499
    :pswitch_1d3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3500
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "channel"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->startPartialScan([I)I

    move-result v7

    goto/16 :goto_6

    .line 3503
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1e5
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3508
    :pswitch_1ed
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3513
    :pswitch_1f5
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3517
    :pswitch_1fd
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3518
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3520
    :pswitch_208
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3526
    :pswitch_210
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3527
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3554
    :pswitch_21b
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callSECApi - id : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3557
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v6, :cond_246

    .line 3558
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v6, v7, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3560
    :cond_246
    const-string v6, "WifiService"

    const-string v7, "mWifiStateMachineChannel is not initialized"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 3561
    goto/16 :goto_6

    .line 3570
    :pswitch_250
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callSECApi - id : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3573
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v6, :cond_27b

    .line 3574
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v6, v7, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3576
    :cond_27b
    const-string v6, "WifiService"

    const-string v7, "mWifiStateMachineChannel is not initialized"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 3577
    goto/16 :goto_6

    .line 3587
    :pswitch_285
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callSECApi - id : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3590
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v6, :cond_2b0

    .line 3591
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v6, v7, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3593
    :cond_2b0
    const-string v6, "WifiService"

    const-string v7, "mWifiStateMachineChannel is not initialized"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 3594
    goto/16 :goto_6

    .line 3602
    :pswitch_2ba
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v7

    goto/16 :goto_6

    .line 3610
    :pswitch_2c2
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    const-string v8, "mode"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v7

    goto/16 :goto_6

    .line 3617
    :pswitch_2d4
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3619
    const-string v6, "persist.service.wifi_band"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_6

    .line 3621
    :pswitch_2df
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3623
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3624
    .local v1, "band":I
    if-ltz v1, :cond_2e9

    const/4 v6, 0x2

    if-le v1, v6, :cond_2ec

    :cond_2e9
    move v7, v8

    .line 3625
    goto/16 :goto_6

    .line 3628
    :cond_2ec
    const-string v6, "persist.service.wifi_band"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3634
    .end local v1    # "band":I
    :pswitch_306
    const-string v6, "WifiService"

    const-string v7, "SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL called"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 3648
    goto/16 :goto_6

    .line 3652
    :pswitch_310
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3653
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3658
    :pswitch_31b
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3662
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3666
    :pswitch_326
    :try_start_326
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3667
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string/jumbo v7, "txPower"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->setTxPower(I)I
    :try_end_336
    .catch Landroid/os/RemoteException; {:try_start_326 .. :try_end_336} :catch_339

    move-result v7

    goto/16 :goto_6

    .line 3668
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_339
    move-exception v2

    .line 3669
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v7, v8

    .line 3671
    goto/16 :goto_6

    .line 3674
    .end local v2    # "e":Landroid/os/RemoteException;
    :pswitch_340
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v8, 0x26016

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v8, v7, v7, v9}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    .line 3677
    :pswitch_350
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_364

    .line 3678
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    :cond_364
    move v7, v8

    .line 3680
    goto/16 :goto_6

    .line 3682
    :pswitch_367
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3683
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    .line 3684
    const-string v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callSECApi: SEC_COMMAND_ID_CMCC_WLAN_ENABLE_WARN. setWifiEnabled: true pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    goto/16 :goto_6

    .line 3690
    :pswitch_39c
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v7

    goto/16 :goto_6

    .line 3693
    :pswitch_3a4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3694
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v6, "keep_connection"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3695
    .local v3, "keepConnection":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiStateMachine;->sendUserSelection(Z)V

    goto/16 :goto_6

    .line 3290
    nop

    :pswitch_data_3b6
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_c
        :pswitch_26
        :pswitch_33
        :pswitch_49
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_6b
        :pswitch_1c
        :pswitch_105
        :pswitch_119
        :pswitch_162
        :pswitch_124
        :pswitch_12f
        :pswitch_132
        :pswitch_135
        :pswitch_c
        :pswitch_143
        :pswitch_10f
        :pswitch_16d
        :pswitch_199
        :pswitch_1aa
        :pswitch_14e
        :pswitch_2d4
        :pswitch_2df
        :pswitch_1cb
        :pswitch_c
        :pswitch_1b2
        :pswitch_1c3
        :pswitch_1d3
        :pswitch_1e5
        :pswitch_c
        :pswitch_c
        :pswitch_306
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1ed
        :pswitch_1f5
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1fd
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_310
        :pswitch_31b
        :pswitch_208
        :pswitch_210
        :pswitch_c
        :pswitch_210
        :pswitch_210
        :pswitch_c
        :pswitch_c
        :pswitch_367
        :pswitch_350
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_c
        :pswitch_21b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_21b
        :pswitch_21b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_21b
        :pswitch_21b
        :pswitch_21b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_21b
        :pswitch_21b
        :pswitch_250
        :pswitch_250
        :pswitch_285
        :pswitch_285
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_2ba
        :pswitch_2c2
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_93
        :pswitch_be
        :pswitch_6
        :pswitch_c
        :pswitch_55
        :pswitch_326
        :pswitch_c
        :pswitch_340
        :pswitch_c
        :pswitch_c
        :pswitch_39c
        :pswitch_3a4
    .end packed-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 3702
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_e2

    .line 3792
    :cond_6
    :goto_6
    return-object v1

    .line 3704
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 3705
    const-string v1, ""

    goto :goto_6

    .line 3711
    :sswitch_d
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECStringApi - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3714
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_37

    .line 3715
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 3717
    :cond_37
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3725
    :sswitch_3f
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_53

    .line 3728
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 3730
    :cond_53
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3734
    :sswitch_5b
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_GAS_RESP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3737
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_72

    .line 3738
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 3740
    :cond_72
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3748
    :sswitch_7a
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_BSS_INFO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_8f

    .line 3751
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 3753
    :cond_8f
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3761
    :sswitch_98
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3763
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    .line 3765
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_6

    .line 3770
    const/4 v3, 0x0

    .line 3771
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_ce

    .line 3772
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 3778
    const/4 v1, 0x0

    .line 3779
    .local v1, "encryptData":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 3780
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3782
    .local v2, "key":Ljava/lang/String;
    :try_start_c8
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiService$EncryptTool;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_d7

    move-result-object v1

    goto/16 :goto_6

    .line 3774
    .end local v1    # "encryptData":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_ce
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3783
    .restart local v1    # "encryptData":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    :catch_d7
    move-exception v0

    .line 3784
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiService"

    const-string v5, "Encryption failure"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3702
    nop

    :sswitch_data_e2
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_3f
        0x27 -> :sswitch_98
        0x41 -> :sswitch_5b
        0x44 -> :sswitch_7a
        0x6c -> :sswitch_d
        0xa0 -> :sswitch_d
    .end sparse-switch
.end method

.method public captivePortalCheckComplete()V
    .registers 2

    .prologue
    .line 2764
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 2765
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckComplete()V

    .line 2766
    return-void
.end method

.method public checkAndStartWifi()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1104
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v1, :cond_6

    .line 1132
    :goto_5
    return-void

    .line 1107
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 1108
    .local v0, "wifiEnabled":Z
    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_49

    const-string v1, "enabled"

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-eqz v0, :cond_2d

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 1117
    :cond_2d
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiIbssToggleEnabled()I

    move-result v1

    if-ne v1, v4, :cond_40

    .line 1118
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiIbssToggled(Z)V

    .line 1119
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiSettingsStore;->setOrRecoveryScanMode(Z)V

    .line 1124
    :cond_40
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_5

    .line 1108
    :cond_49
    const-string v1, "disabled"

    goto :goto_1d
.end method

.method public checkAndStartWifiAp(I)V
    .registers 10
    .param p1, "checkIMEI"    # I

    .prologue
    const/4 v7, 0x1

    .line 1136
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v4, :cond_6

    .line 1168
    :goto_5
    return-void

    .line 1138
    :cond_6
    if-lez p1, :cond_29

    .line 1139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, p1, :cond_29

    .line 1140
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->isIMEIWritten()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1141
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMEI is written, i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    .end local v1    # "i":I
    :cond_29
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1153
    .local v2, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1154
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1156
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v3

    .line 1157
    .local v3, "wifiState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_4e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4e

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1160
    :cond_4e
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 1162
    const-wide/16 v4, 0x258

    :try_start_56
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_6d

    .line 1167
    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_5

    .line 1145
    .end local v2    # "mCm":Landroid/net/ConnectivityManager;
    .end local v3    # "wifiState":I
    .restart local v1    # "i":I
    :cond_60
    const-wide/16 v4, 0x1f4

    :try_start_62
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_68

    .line 1139
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1146
    :catch_68
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_65

    .line 1163
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .restart local v2    # "mCm":Landroid/net/ConnectivityManager;
    .restart local v3    # "wifiState":I
    :catch_6d
    move-exception v0

    .line 1164
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_59
.end method

.method public checkWarningPopup()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 4305
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wlan_permission_available"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public clearBlacklist()V
    .registers 2

    .prologue
    .line 2796
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2798
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 2799
    return-void
.end method

.method public disableNetwork(I)Z
    .registers 6
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2539
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2540
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNetwork: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3a

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_3a

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_42

    .line 2542
    :cond_3a
    const-string v1, "WifiService"

    const-string v2, "invalid netId was used"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :goto_41
    return v0

    .line 2545
    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_4f

    .line 2546
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_41

    .line 2548
    :cond_4f
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public disconnect()V
    .registers 4

    .prologue
    .line 2433
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2434
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 2436
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3224
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_34

    .line 3226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3283
    :goto_33
    return-void

    .line 3231
    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stay-awake conditions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "stay_on_while_plugged_in"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMulticastEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMulticastDisabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HS20Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "wifi_hotspot20_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3243
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3244
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3245
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3247
    const-string v6, "Latest scan results:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 3249
    .local v4, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_132

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_132

    .line 3250
    const-string v6, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_132

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 3252
    .local v3, "r":Landroid/net/wifi/ScanResult;
    const-string v7, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v6, v8, v10

    const/4 v6, 0x1

    iget v9, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v9, 0x4

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_12f

    const-string v6, ""

    :goto_129
    aput-object v6, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_f6

    :cond_12f
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_129

    .line 3260
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Landroid/net/wifi/ScanResult;
    :cond_132
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks acquired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks released: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3268
    const-string v6, "Locks held:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3269
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v6, p2}, Lcom/android/server/wifi/WifiService$LockList;->access$2800(Lcom/android/server/wifi/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 3271
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3272
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 3273
    .local v5, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multicasters held("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1d5
    if-ltz v0, :cond_206

    .line 3275
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 3276
    .local v2, "m":Lcom/android/server/wifi/WifiService$Multicaster;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d5

    .line 3279
    .end local v2    # "m":Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_206
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3280
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3281
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3282
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_33
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 2522
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2523
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 2524
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 2528
    :goto_f
    return v0

    .line 2527
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "remoteAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2876
    new-instance v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiService$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiService;)V

    .line 2877
    .local v0, "params":Lcom/android/server/wifi/WifiService$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 2878
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->enable:Z

    .line 2879
    new-instance v1, Lcom/android/server/wifi/WifiService$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiService$TdlsTask;-><init>(Lcom/android/server/wifi/WifiService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiService$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2880
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2884
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 2885
    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 3900
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 3905
    :goto_6
    return-void

    .line 3903
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1866
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v5, :cond_d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    :goto_c
    return-object v5

    .line 1867
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1868
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1869
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1871
    .local v1, "ident":J
    :try_start_19
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2c

    .line 1873
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_38

    .line 1882
    :goto_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 1875
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1876
    .local v0, "currentUser":I
    if-eq v4, v0, :cond_3d

    .line 1877
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    goto :goto_28

    .line 1882
    .end local v0    # "currentUser":I
    :catchall_38
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1879
    .restart local v0    # "currentUser":I
    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetBatchedScanResultsList()Ljava/util/List;
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_38

    move-result-object v5

    goto :goto_28
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2908
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2909
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2459
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2460
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 2461
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 2464
    :goto_f
    return-object v0

    .line 2463
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;
    .registers 2

    .prologue
    .line 3031
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3032
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 2558
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2563
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3017
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3018
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 13

    .prologue
    .line 2702
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2703
    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v2

    .line 2704
    .local v2, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_f

    const/4 v7, 0x0

    .line 2745
    :goto_e
    return-object v7

    .line 2706
    :cond_f
    new-instance v7, Landroid/net/DhcpInfo;

    invoke-direct {v7}, Landroid/net/DhcpInfo;-><init>()V

    .line 2707
    .local v7, "info":Landroid/net/DhcpInfo;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 2708
    .local v8, "la":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 2709
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v11, v0, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1e

    .line 2710
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->ipAddress:I

    .line 2714
    .end local v8    # "la":Landroid/net/LinkAddress;
    :cond_3a
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_44
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    .line 2715
    .local v9, "r":Landroid/net/RouteInfo;
    invoke-virtual {v9}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 2716
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    .line 2717
    .local v5, "gateway":Ljava/net/InetAddress;
    instance-of v11, v5, Ljava/net/Inet4Address;

    if-eqz v11, :cond_44

    .line 2718
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "gateway":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->gateway:I

    goto :goto_44

    .line 2720
    :cond_67
    invoke-virtual {v9}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v11

    if-nez v11, :cond_44

    .line 2721
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    .line 2722
    .local v1, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_44

    .line 2723
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->netmask:I

    goto :goto_44

    .line 2728
    .end local v1    # "dest":Landroid/net/LinkAddress;
    .end local v9    # "r":Landroid/net/RouteInfo;
    :cond_84
    const/4 v4, 0x0

    .line 2729
    .local v4, "dnsFound":I
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2730
    .local v3, "dns":Ljava/net/InetAddress;
    instance-of v11, v3, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8f

    .line 2731
    if-nez v4, :cond_c2

    .line 2732
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3    # "dns":Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns1:I

    .line 2736
    :goto_a9
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    if-le v4, v11, :cond_8f

    .line 2739
    :cond_ae
    iget-object v10, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 2740
    .local v10, "serverAddress":Ljava/net/InetAddress;
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_bc

    .line 2741
    check-cast v10, Ljava/net/Inet4Address;

    .end local v10    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v10}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->serverAddress:I

    .line 2743
    :cond_bc
    iget v11, v2, Landroid/net/DhcpResults;->leaseDuration:I

    iput v11, v7, Landroid/net/DhcpInfo;->leaseDuration:I

    goto/16 :goto_e

    .line 2734
    .restart local v3    # "dns":Ljava/net/InetAddress;
    :cond_c2
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3    # "dns":Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_a9
.end method

.method public getFrequencyBand()I
    .registers 2

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2685
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .registers 2

    .prologue
    .line 2981
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2982
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 3037
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3038
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .registers 3

    .prologue
    .line 3057
    const-string v0, "pppoe"

    const-string/jumbo v1, "wifiservice: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/PppoeStateMachine;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPartialScanResults([I)Ljava/util/List;
    .registers 3
    .param p1, "channels"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2593
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2594
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncGetPartialScanResultsList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoamBand()I
    .registers 2

    .prologue
    .line 2999
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3000
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .registers 2

    .prologue
    .line 2945
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2946
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    .prologue
    .line 2963
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2964
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .registers 2

    .prologue
    .line 2927
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2928
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getS69BssInfo(Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;
    .registers 4
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1351
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1352
    const-string v0, "WifiService"

    const-string v1, "getS69BssInfo service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->getS69BssInfo(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)Landroid/net/wifi/S69BssInfo;

    move-result-object v0

    return-object v0
.end method

.method public getS69PartMsg(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1331
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1332
    const-string v0, "WifiService"

    const-string v1, "WiFiService get_s69_part_msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1335
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->sets69_part_msg(Lcom/android/internal/util/AsyncChannel;II)Ljava/lang/String;

    move-result-object v0

    .line 1340
    :goto_1a
    return-object v0

    .line 1337
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1338
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_26
    const-string v0, ""

    goto :goto_1a
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2572
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2573
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2574
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2575
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2577
    .local v1, "ident":J
    :try_start_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_22

    .line 2579
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_2e

    .line 2588
    :goto_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2585
    return-object v5

    .line 2581
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2582
    .local v0, "currentUser":I
    if-eq v4, v0, :cond_33

    .line 2583
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    goto :goto_1e

    .line 2588
    .end local v0    # "currentUser":I
    :catchall_2e
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2585
    .restart local v0    # "currentUser":I
    :cond_33
    :try_start_33
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_2e

    move-result-object v5

    goto :goto_1e
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .registers 3
    .param p1, "netID"    # I

    .prologue
    .line 3026
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3027
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedChannels()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2604
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2605
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2606
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2608
    .local v1, "ident":J
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2609
    .local v0, "currentUser":I
    if-eq v3, v0, :cond_1a

    .line 2610
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    .line 2615
    :goto_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2612
    return-object v4

    :cond_1a
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetSupportedWifiChannels()Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    move-result-object v4

    goto :goto_16

    .line 2615
    .end local v0    # "currentUser":I
    :catchall_21
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfigTxPower()I
    .registers 2

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfigTxPower()I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .prologue
    .line 2357
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2358
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .registers 2

    .prologue
    .line 2348
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2349
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2385
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 2388
    :goto_6
    return-object v1

    .line 2386
    :catch_7
    move-exception v0

    .line 2387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2388
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApTimeOut()I
    .registers 5

    .prologue
    .line 2414
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_time_out_value"

    sget v3, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2415
    .local v0, "sec":I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    return v0
.end method

.method public getWifiEnabledState()I
    .registers 2

    .prologue
    .line 2229
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2230
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiIBSSEnabledState()I
    .registers 2

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2236
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiIBSSState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 2892
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2893
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2894
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 2899
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2900
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2901
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .registers 3

    .prologue
    .line 4098
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 4100
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 4102
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 4103
    monitor-exit v1

    .line 4108
    :goto_f
    return-void

    .line 4105
    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 4107
    monitor-exit v1

    goto :goto_f

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isBatchedScanSupported()Z
    .registers 2

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    return v0
.end method

.method public isDualBandSupported()Z
    .registers 2

    .prologue
    .line 2692
    const/4 v0, 0x1

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 4170
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 4172
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 4173
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 4174
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .registers 2

    .prologue
    .line 2425
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2426
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .registers 3

    .prologue
    .line 1241
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1242
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 1243
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1246
    :goto_f
    return v0

    .line 1245
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public pollBatchedScan()V
    .registers 2

    .prologue
    .line 1836
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1837
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v0, :cond_8

    .line 1839
    :goto_7
    return-void

    .line 1838
    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->requestBatchedScanPoll()V

    goto :goto_7
.end method

.method public reassociate()V
    .registers 2

    .prologue
    .line 2450
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2451
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 2452
    return-void
.end method

.method public reconnect()V
    .registers 2

    .prologue
    .line 2442
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2443
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 2444
    return-void
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 4134
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 4136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4137
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 4138
    :try_start_a
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    .line 4139
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 4140
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_30

    .line 4141
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 4142
    .local v1, "m":Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    .line 4143
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    .line 4140
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 4146
    .end local v1    # "m":Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_30
    monitor-exit v5

    .line 4147
    return-void

    .line 4146
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 4008
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4009
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v1

    .line 4010
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 4011
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public removeNetwork(I)Z
    .registers 4
    .param p1, "netId"    # I

    .prologue
    .line 2505
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2506
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 2507
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 2510
    :goto_f
    return v0

    .line 2509
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .registers 8
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x0

    .line 1846
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1847
    if-eqz p3, :cond_c

    .line 1848
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceWorkSourcePermission()V

    .line 1851
    invoke-virtual {p3}, Landroid/os/WorkSource;->clearNames()V

    .line 1853
    :cond_c
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v3, :cond_11

    .line 1861
    :goto_10
    return v2

    .line 1854
    :cond_11
    new-instance v1, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v1, p1}, Landroid/net/wifi/BatchedScanSettings;-><init>(Landroid/net/wifi/BatchedScanSettings;)V

    .line 1855
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .local v1, "requested":Landroid/net/wifi/BatchedScanSettings;
    invoke-virtual {v1}, Landroid/net/wifi/BatchedScanSettings;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_10

    .line 1856
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :cond_1e
    new-instance v0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wifi/WifiService$BatchedScanRequest;-><init>(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1857
    .local v0, "r":Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    monitor-enter v3

    .line 1858
    :try_start_26
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1859
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->resolveBatchedScannersLocked()V

    .line 1860
    monitor-exit v3

    .line 1861
    const/4 v2, 0x1

    move-object p1, v1

    .end local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_10

    .line 1860
    .end local p1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    .restart local v1    # "requested":Landroid/net/wifi/BatchedScanSettings;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public saveConfiguration()Z
    .registers 4

    .prologue
    .line 2626
    const/4 v0, 0x1

    .line 2627
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2628
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_11

    .line 2629
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 2632
    :goto_10
    return v1

    .line 2631
    :cond_11
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public sendS69LocationServiceRequest(Ljava/lang/String;)I
    .registers 4
    .param p1, "location_request"    # Ljava/lang/String;

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1306
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1307
    const-string v0, "WifiService"

    const-string v1, "WiFiService ccx_send_location_service_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1310
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->setccx_send_location_service_request(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    move-result v0

    .line 1315
    :goto_1a
    return v0

    .line 1312
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1313
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 2646
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2651
    .local v0, "token":J
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 2653
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2655
    return-void

    .line 2653
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 3
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 3008
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3009
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .registers 8
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2667
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2677
    :goto_9
    return-void

    .line 2669
    :cond_a
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2673
    .local v0, "token":J
    :try_start_30
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    .line 2675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFullRoamScanPeriod(I)Z
    .registers 3
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 2972
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2973
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setIsFmcNetwork(Z)Z
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3067
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 3068
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    if-eqz v1, :cond_1d

    .line 3069
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    .line 3071
    :cond_1d
    return v0
.end method

.method public setRoamBand(I)Z
    .registers 3
    .param p1, "roamBand"    # I

    .prologue
    .line 2990
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2991
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .registers 3
    .param p1, "roamDelta"    # I

    .prologue
    .line 2936
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2937
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 3
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 2954
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2955
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .registers 3
    .param p1, "roamTrigger"    # I

    .prologue
    .line 2918
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2919
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setS69DisableLocationService()I
    .registers 3

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1281
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1282
    const-string v0, "WifiService"

    const-string v1, "WiFiService ccx_disable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1285
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncccx_disable_location_service(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 1290
    :goto_1a
    return v0

    .line 1287
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1288
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setS69EnableLocationService()I
    .registers 3

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1256
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1257
    const-string v0, "WifiService"

    const-string v1, "WiFiService ccx_enable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1260
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncccx_enable_location_service(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 1265
    :goto_1a
    return v0

    .line 1262
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1263
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setWifiApConfigTxPower(I)V
    .registers 3
    .param p1, "txPowerMode"    # I

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfigTxPower(I)V

    .line 2401
    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2366
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2369
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2381
    :cond_f
    :goto_f
    return-void

    .line 2374
    :cond_10
    if-eqz p1, :cond_f

    .line 2376
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2377
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_f

    .line 2379
    :cond_1e
    const-string v0, "WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 12
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2246
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2248
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2255
    :cond_c
    if-nez p2, :cond_e

    .line 2263
    :cond_e
    if-eqz p2, :cond_10

    .line 2277
    :cond_10
    if-eqz p2, :cond_27

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_27

    .line 2337
    :goto_1e
    return-void

    .line 2251
    :cond_1f
    const-string v5, "WifiService"

    const-string v6, "Invalid WifiConfiguration"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 2282
    :cond_27
    if-eqz p2, :cond_5d

    .line 2283
    const/4 v2, 0x0

    .line 2284
    .local v2, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 2285
    if-eqz v2, :cond_5d

    .line 2286
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 2287
    .local v0, "authType":I
    if-nez v0, :cond_5d

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 2288
    const-string v5, "WifiService"

    const-string v6, "Starting an Open HOTSPOT is NOT allowed."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2290
    .local v4, "wifiToastIntent":Landroid/content/Intent;
    const-string v5, "info_type"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2291
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1e

    .line 2297
    .end local v0    # "authType":I
    .end local v2    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "wifiToastIntent":Landroid/content/Intent;
    :cond_5d
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 2298
    const/4 p1, 0x0

    .line 2303
    :cond_6a
    if-eqz p2, :cond_b4

    .line 2304
    const/4 v3, 0x0

    .line 2306
    .local v3, "userId":I
    :try_start_6d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v3, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_77} :catch_a2
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_77} :catch_ab

    .line 2313
    :goto_77
    :try_start_77
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v7, 0x0

    invoke-interface {v5, v7, v3}, Landroid/app/admin/IDevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_c7

    .line 2316
    :goto_80
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v5, :cond_b4

    .line 2317
    const-string v5, "WifiService"

    const-string v6, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2319
    .restart local v4    # "wifiToastIntent":Landroid/content/Intent;
    const-string v5, "info_type"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2320
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x20130

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1e

    .line 2307
    .end local v4    # "wifiToastIntent":Landroid/content/Intent;
    :catch_a2
    move-exception v1

    .line 2308
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "WifiService"

    const-string v7, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 2309
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_ab
    move-exception v1

    .line 2310
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "WifiService"

    const-string v7, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 2336
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "userId":I
    :cond_b4
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v8, 0x2600a

    if-eqz p2, :cond_c5

    const/4 v5, 0x1

    :goto_bc
    invoke-virtual {v7, v8, v5, v6, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1e

    :cond_c5
    move v5, v6

    goto :goto_bc

    .line 2314
    .restart local v3    # "userId":I
    :catch_c7
    move-exception v5

    goto :goto_80
.end method

.method public setWifiApTimeOut(I)V
    .registers 6
    .param p1, "sec"    # I

    .prologue
    .line 2407
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_time_out_value"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2408
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2410
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2411
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2412
    return-void
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 2060
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2061
    const-string v0, "WifiService"

    const-string v1, "Wi-Fi state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_57

    .line 2062
    const/4 v0, 0x0

    .line 2079
    :goto_16
    monitor-exit p0

    return v0

    .line 2076
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2077
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const v0, 0x26008

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_57

    move-result v0

    goto :goto_16

    .line 2060
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiIBSSEnabled(Z)Z
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    .line 2027
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2028
    const-string v2, "WifiService"

    const-string v3, "Wi-Fi state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_68

    .line 2029
    const/4 v2, 0x0

    .line 2048
    :goto_16
    monitor-exit p0

    return v2

    .line 2033
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2037
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiIBSSEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_52
    .catchall {:try_start_18 .. :try_end_52} :catchall_68

    move-result-wide v0

    .line 2043
    .local v0, "ident":J
    :try_start_53
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiIbssToggled(Z)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_63

    .line 2045
    :try_start_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2048
    const v2, 0x2600d

    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z

    move-result v2

    goto :goto_16

    .line 2045
    :catchall_63
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_68

    .line 2027
    .end local v0    # "ident":J
    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V
    .registers 13
    .param p1, "type"    # Lcom/android/server/wifi/WifiService$HS20_ConType;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4179
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showHS20WifiNotification   is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 4181
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-eq p1, v5, :cond_f0

    .line 4182
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-nez v5, :cond_58

    .line 4183
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 4184
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 4185
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 4186
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 4187
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 4191
    :cond_58
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4192
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 4193
    .local v4, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4194
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 4196
    .local v0, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_be

    .line 4197
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x10803be

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 4201
    :goto_6f
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v5, :cond_c6

    .line 4202
    const v5, 0x10406b2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4206
    :goto_88
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4207
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v5, :cond_dd

    .line 4208
    const v5, 0x10406b0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4212
    :goto_9f
    if-eqz v4, :cond_ae

    if-eqz v1, :cond_ae

    .line 4213
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4215
    :cond_ae
    :try_start_ae
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_e5

    .line 4216
    const v5, 0x10803be

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ba
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_ba} :catch_ee

    .line 4220
    :goto_ba
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    .line 4229
    .end local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "title":Ljava/lang/String;
    :goto_bd
    return-void

    .line 4199
    .restart local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v3    # "r":Landroid/content/res/Resources;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_be
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x10803bf

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_6f

    .line 4204
    :cond_c6
    const v5, 0x10406b3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_88

    .line 4210
    :cond_dd
    const v5, 0x10406b1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9f

    .line 4218
    :cond_e5
    const v5, 0x10803bf

    :try_start_e8
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ed
    .catch Ljava/lang/IllegalStateException; {:try_start_e8 .. :try_end_ed} :catch_ee

    goto :goto_ba

    .line 4219
    :catch_ee
    move-exception v5

    goto :goto_ba

    .line 4222
    .end local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "title":Ljava/lang/String;
    :cond_f0
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-eqz v5, :cond_105

    if-eqz v2, :cond_105

    .line 4223
    const v5, 0x10803be

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4224
    const v5, 0x10803bf

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4225
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 4227
    :cond_105
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    goto :goto_bd
.end method

.method public shutdown()Z
    .registers 2

    .prologue
    .line 2192
    const/4 v0, 0x1

    return v0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70001

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3045
    return-void
.end method

.method public startScan(Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1770
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_32

    .line 1771
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startScan by pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_32
    if-eqz p1, :cond_3a

    .line 1776
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceWorkSourcePermission()V

    .line 1779
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    .line 1797
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(ILandroid/os/WorkSource;)V

    .line 1799
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    if-eqz v0, :cond_4c

    .line 1800
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->scanStarted()V

    .line 1802
    :cond_4c
    return-void
.end method

.method public startWifi()V
    .registers 3

    .prologue
    .line 2753
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 2759
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 2760
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 2761
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .registers 4
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 1888
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1889
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v0, :cond_8

    .line 1891
    :goto_7
    return-void

    .line 1890
    :cond_8
    invoke-static {}, Lcom/android/server/wifi/WifiService;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    goto :goto_7
.end method

.method public stopPPPOE()V
    .registers 4

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70004

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3050
    return-void
.end method

.method public stopWifi()V
    .registers 3

    .prologue
    .line 2773
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 2778
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 2779
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3982
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3983
    .local v3, "pid":I
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_11

    .line 3984
    const/4 p2, 0x0

    .line 3986
    :cond_11
    if-eqz p2, :cond_16

    .line 3987
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 3989
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3991
    .local v0, "ident":J
    :try_start_1a
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v7
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_30
    .catchall {:try_start_1a .. :try_end_1d} :catchall_58

    .line 3992
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$3500(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 3993
    .local v2, "index":I
    if-gez v2, :cond_35

    .line 3994
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4000
    .end local v2    # "index":I
    :catchall_2d
    move-exception v6

    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v6
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_30} :catch_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_58

    .line 4001
    :catch_30
    move-exception v6

    .line 4003
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4005
    return-void

    .line 3996
    .restart local v2    # "index":I
    :cond_35
    :try_start_35
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # getter for: Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService$LockList;->access$3600(Lcom/android/server/wifi/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiService$WifiLock;

    .line 3997
    .local v5, "wl":Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3998
    if-eqz p2, :cond_52

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_4b
    iput-object v6, v5, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 3999
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 4000
    monitor-exit v7

    goto :goto_31

    .line 3998
    :cond_52
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_2d

    goto :goto_4b

    .line 4003
    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiService$WifiLock;
    :catchall_58
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
