.class public final Lcom/android/server/wifi/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiService$15;,
        Lcom/android/server/wifi/WifiService$Multicaster;,
        Lcom/android/server/wifi/WifiService$DeathRecipient;,
        Lcom/android/server/wifi/WifiService$LockList;,
        Lcom/android/server/wifi/WifiService$WifiLock;,
        Lcom/android/server/wifi/WifiService$EncryptTool;,
        Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiService$ClientHandler;,
        Lcom/android/server/wifi/WifiService$HS20_ConType;
    }
.end annotation


# static fields
.field private static final CHECK_IMEI:I = 0xa

.field private static final DBG:Z

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x1080350

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x1080351

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field private static defaultTimeoutValue:I

.field private static filePathGeneralinfo:Ljava/io/File;

.field private static isWifiDelayOnGoing:Z


# instance fields
.field private final PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

.field private final PATH_WIFIPROFILE:Ljava/lang/String;

.field private final PATH_WIFIPROFILE_NAME:Ljava/lang/String;

.field private allowWifi:Z

.field private allowWifiAp:Z

.field private isBootCompleted:Z

.field private isFirstBootMccMnc:Z

.field private isSimCheked:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBcSmsReceived:Z

.field private mBlockScanFromOthers:Z

.field private mChameleonEnabled:Z

.field private mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

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

.field final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private mccmnc:Ljava/lang/String;

.field private simState:Ljava/lang/String;

.field private simState_int:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    .line 207
    sput-boolean v1, Lcom/android/server/wifi/WifiService;->isWifiDelayOnGoing:Z

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    .line 435
    const-string v0, "600"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 448
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 147
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBcSmsReceived:Z

    .line 148
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBlockScanFromOthers:Z

    .line 150
    new-instance v3, Lcom/android/server/wifi/WifiService$LockList;

    invoke-direct {v3, p0, v5}, Lcom/android/server/wifi/WifiService$LockList;-><init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    .line 160
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    .line 178
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    .line 180
    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 187
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 191
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 192
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    .line 195
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    .line 203
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    .line 205
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isSimCheked:Z

    .line 206
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isFirstBootMccMnc:Z

    .line 212
    const-string v3, "/data/misc/wifi"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE:Ljava/lang/String;

    .line 213
    const-string v3, "default_ap.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE_NAME:Ljava/lang/String;

    .line 214
    const-string v3, "generalinfo_nw.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

    .line 216
    new-instance v3, Landroid/net/NetworkInfo;

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v3, v7, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 227
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mRequestWifiOn:Z

    .line 426
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mChameleonEnabled:Z

    .line 427
    iput v6, p0, Lcom/android/server/wifi/WifiService;->mTetheredData:I

    .line 428
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    .line 429
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mMaxUser:I

    .line 430
    iput v7, p0, Lcom/android/server/wifi/WifiService;->mGsmMaxUser:I

    .line 431
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mDomRoamMaxUser:I

    .line 432
    iput v8, p0, Lcom/android/server/wifi/WifiService;->mIntRoamMaxUser:I

    .line 2179
    new-instance v3, Lcom/android/server/wifi/WifiService$12;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$12;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3320
    new-instance v3, Lcom/android/server/wifi/WifiService$14;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$14;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 449
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    .line 453
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 459
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 460
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    .line 462
    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 464
    new-instance v3, Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 465
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 466
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 467
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    .line 469
    new-instance v3, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 470
    new-instance v3, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 471
    new-instance v3, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 479
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 480
    .local v2, "wifiThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 481
    new-instance v3, Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$ClientHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    .line 482
    new-instance v3, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    .line 483
    new-instance v3, Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 484
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiController;->start()V

    .line 486
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForScanModeChange()V

    .line 490
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 494
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$1;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 506
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v3, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 521
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$2;-><init>(Lcom/android/server/wifi/WifiService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 577
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$3;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 629
    sget-object v3, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_196

    .line 630
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$4;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 650
    :cond_196
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$5;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$5;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 694
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$6;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$6;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$9;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$9;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.COEX_INFO"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 812
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$10;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$10;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$11;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$11;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 900
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForBroadcasts()V

    .line 901
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifi/WifiService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    return p1
.end method

.method static synthetic access$1100()Ljava/io/File;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->isFirstBootMccMnc:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->isSimCheked:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->simState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiService;Landroid/os/IBinder;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiService;)Landroid/net/wifi/PppoeStateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiService;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return p1
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z
    .registers 8
    .param p1, "wifiLock"    # Lcom/android/server/wifi/WifiService$WifiLock;

    .prologue
    .line 3018
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

    .line 3020
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$2100(Lcom/android/server/wifi/WifiService$LockList;Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3022
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3024
    .local v1, "ident":J
    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3025
    iget v3, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_58

    .line 3037
    :goto_2d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_41
    .catchall {:try_start_25 .. :try_end_35} :catchall_4b

    .line 3038
    const/4 v3, 0x1

    .line 3042
    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3040
    return v3

    .line 3027
    :pswitch_3a
    :try_start_3a
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    goto :goto_2d

    .line 3039
    :catch_41
    move-exception v0

    .line 3040
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_36

    .line 3030
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_44
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4a} :catch_41
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    goto :goto_2d

    .line 3042
    :catchall_4b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3034
    :pswitch_50
    :try_start_50
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_56} :catch_41
    .catchall {:try_start_50 .. :try_end_56} :catchall_4b

    goto :goto_2d

    .line 3025
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
    .line 1215
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .registers 4

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method private handleSecurityPolicy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2265
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 2266
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    .line 2267
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v1, :cond_61

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_61

    .line 2270
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 2271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v0, "wifiToastIntent":Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2273
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2276
    .end local v0    # "wifiToastIntent":Landroid/content/Intent;
    :cond_61
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v1, :cond_83

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_83

    .line 2278
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2280
    .restart local v0    # "wifiToastIntent":Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2281
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2284
    .end local v0    # "wifiToastIntent":Landroid/content/Intent;
    :cond_83
    return-void
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 3358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3359
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 3360
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 3361
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

    .line 3360
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 3363
    :cond_2a
    return-object v0
.end method

.method private isHotspotTestMode()Z
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1049
    const/4 v6, 0x0

    .line 1050
    .local v6, "isTestMode":Z
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_47

    .line 1051
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 1052
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1053
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1056
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_3e
    .catchall {:try_start_c .. :try_end_16} :catchall_4f

    .line 1057
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1058
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1059
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

    .line 1060
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

    .line 1063
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3e
    move-exception v4

    .line 1064
    .local v4, "e":Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4f

    .line 1067
    if-eqz v1, :cond_47

    .line 1068
    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5b

    .line 1074
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

    .line 1066
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catchall_4f
    move-exception v7

    .line 1067
    :goto_50
    if-eqz v1, :cond_55

    .line 1068
    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 1066
    :cond_55
    :goto_55
    throw v7

    .line 1069
    :catch_56
    move-exception v4

    .line 1070
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .line 1069
    :catch_5b
    move-exception v4

    .line 1070
    .end local v1    # "buf":Ljava/io/BufferedReader;
    :goto_5c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 1067
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_60
    if-eqz v2, :cond_47

    .line 1068
    :try_start_62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_47

    .line 1069
    :catch_66
    move-exception v4

    goto :goto_5c

    .line 1066
    :catchall_68
    move-exception v7

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_50

    .line 1063
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
    .line 1039
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1041
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 1043
    const/4 v2, 0x1

    .line 1046
    :goto_11
    return v2

    .line 1045
    :cond_12
    const-string v2, "WifiService"

    const-string v3, "Fail to get IMEI"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private isSecuredAp(I)Z
    .registers 9
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3299
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3300
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3f

    .line 3301
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

    .line 3302
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_c

    .line 3303
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3317
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    return v3

    .line 3306
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

    .line 3310
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_24

    move v3, v4

    .line 3313
    goto :goto_24

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3f
    move v3, v4

    .line 3317
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
    .line 2998
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    .line 3005
    :goto_5
    return-void

    .line 3002
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 2998
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
    .line 3008
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    .line 3015
    :goto_5
    return-void

    .line 3012
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    .line 3008
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
    .line 2287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2288
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2289
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2290
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2291
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2292
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2293
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2294
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2301
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2302
    return-void
.end method

.method private registerForScanModeChange()V
    .registers 5

    .prologue
    .line 2250
    new-instance v0, Lcom/android/server/wifi/WifiService$13;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiService$13;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Handler;)V

    .line 2258
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2261
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 3083
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$2400(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;

    move-result-object v3

    .line 3085
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

    .line 3087
    :cond_22
    if-eqz v3, :cond_3f

    const/4 v0, 0x1

    .line 3089
    .local v0, "hadLock":Z
    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3091
    .local v1, "ident":J
    if-eqz v0, :cond_3b

    .line 3092
    :try_start_2b
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3093
    iget v4, v3, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_5e

    .line 3104
    :goto_33
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3b} :catch_48
    .catchall {:try_start_2b .. :try_end_3b} :catchall_51

    .line 3108
    :cond_3b
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3111
    return v0

    .line 3087
    .end local v0    # "hadLock":Z
    .end local v1    # "ident":J
    :cond_3f
    const/4 v0, 0x0

    goto :goto_25

    .line 3095
    .restart local v0    # "hadLock":Z
    .restart local v1    # "ident":J
    :pswitch_41
    :try_start_41
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    goto :goto_33

    .line 3106
    :catch_48
    move-exception v4

    goto :goto_3b

    .line 3098
    :pswitch_4a
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_48
    .catchall {:try_start_41 .. :try_end_50} :catchall_51

    goto :goto_33

    .line 3108
    :catchall_51
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3101
    :pswitch_56
    :try_start_56
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5c} :catch_48
    .catchall {:try_start_56 .. :try_end_5c} :catchall_51

    goto :goto_33

    .line 3093
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_56
        :pswitch_4a
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "uid"    # I

    .prologue
    .line 3217
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 3219
    .local v2, "removed":Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v2, :cond_d

    .line 3220
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 3222
    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a

    .line 3223
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 3226
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3228
    .local v0, "ident":J
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_2c
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 3231
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3233
    return-void

    .line 3231
    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3229
    :catch_2c
    move-exception v3

    goto :goto_23
.end method

.method private declared-synchronized setWifiEnabled(ZI)Z
    .registers 15
    .param p1, "enable"    # Z
    .param p2, "cmd"    # I

    .prologue
    .line 1298
    monitor-enter p0

    :try_start_1
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_c

    .line 1299
    const-string v9, "WifiService"

    const-string v10, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_c
    if-eqz p1, :cond_3c

    .line 1303
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 1304
    iget-boolean p1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    .line 1305
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v9, :cond_3c

    .line 1306
    const-string v9, "WifiService"

    const-string v10, "Wi-Fi is not allowed (Policy)a"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    .local v8, "wifiToastIntent":Landroid/content/Intent;
    const-string v9, "info_type"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1309
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x20130

    invoke-virtual {v9, v10, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_e7

    .line 1310
    const/4 v9, 0x0

    .line 1416
    .end local v8    # "wifiToastIntent":Landroid/content/Intent;
    :goto_3a
    monitor-exit p0

    return v9

    .line 1326
    :cond_3c
    if-eqz p1, :cond_76

    .line 1327
    :try_start_3e
    iget-object v10, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v9, 0x2600c

    if-ne p2, v9, :cond_72

    const/4 v9, 0x3

    :goto_46
    invoke-virtual {v10, v9}, Landroid/net/wifi/WifiStateMachine;->canEnabledFirmwareType(I)I

    move-result v1

    .line 1328
    .local v1, "enabledFirmwareType":I
    if-ltz v1, :cond_76

    .line 1329
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "req_type"

    const v9, 0x2600c

    if-ne p2, v9, :cond_74

    const/4 v9, 0x3

    :goto_5b
    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1331
    const-string v9, "extra_type"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1332
    const/high16 v9, 0x8000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1333
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x20130

    invoke-virtual {v9, v10, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1334
    const/4 v9, 0x0

    goto :goto_3a

    .line 1327
    .end local v1    # "enabledFirmwareType":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_72
    const/4 v9, 0x0

    goto :goto_46

    .line 1330
    .restart local v1    # "enabledFirmwareType":I
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_74
    const/4 v9, 0x0

    goto :goto_5b

    .line 1340
    .end local v1    # "enabledFirmwareType":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_76
    if-nez p1, :cond_8b

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    if-eqz v9, :cond_8b

    .line 1341
    const-string v9, "WifiService"

    const-string v10, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x200a1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1348
    :cond_8b
    sget-object v9, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_d5

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->isSimCheked:Z
    :try_end_95
    .catchall {:try_start_3e .. :try_end_95} :catchall_e7

    if-nez v9, :cond_d5

    .line 1349
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_98
    const/4 v9, 0x3

    if-ge v2, v9, :cond_d5

    .line 1351
    :try_start_9b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    .line 1352
    .local v7, "simstate":I
    const-string v9, "gsm.sim.operator.numeric"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1353
    .local v6, "mccmnc":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_cf

    .line 1354
    const-string v9, "WifiService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWifiEnabled getSimState() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mccmnc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_cf} :catch_11c
    .catchall {:try_start_9b .. :try_end_cf} :catchall_e7

    .line 1356
    :cond_cf
    const/4 v9, 0x1

    if-eq v7, v9, :cond_d5

    const/4 v9, 0x6

    if-ne v7, v9, :cond_ea

    .line 1389
    .end local v2    # "i":I
    .end local v6    # "mccmnc":Ljava/lang/String;
    .end local v7    # "simstate":I
    :cond_d5
    :goto_d5
    :try_start_d5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_e7

    move-result-wide v3

    .line 1391
    .local v3, "ident":J
    :try_start_d9
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_de
    .catchall {:try_start_d9 .. :try_end_de} :catchall_138

    move-result v9

    if-nez v9, :cond_121

    .line 1393
    const/4 v9, 0x1

    .line 1405
    :try_start_e2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e7

    goto/16 :goto_3a

    .line 1298
    .end local v3    # "ident":J
    :catchall_e7
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1358
    .restart local v2    # "i":I
    .restart local v6    # "mccmnc":Ljava/lang/String;
    .restart local v7    # "simstate":I
    :cond_ea
    const/4 v9, 0x5

    if-ne v7, v9, :cond_108

    .line 1359
    :try_start_ed
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 1360
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_100

    .line 1361
    const-string v9, "WifiService"

    const-string v10, "setWifiEnabled getSimState() SIM_STATE_READY state . But no mccmnc case"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_100
    :goto_100
    const-wide/16 v9, 0x5dc

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 1349
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 1367
    :cond_108
    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d5

    .line 1368
    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_100

    .line 1369
    const-string v9, "WifiService"

    const-string v10, "setWifiEnabled getSimState() Ing state . But no mccmnc case"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_11b} :catch_11c
    .catchall {:try_start_ed .. :try_end_11b} :catchall_e7

    goto :goto_100

    .line 1376
    .end local v6    # "mccmnc":Ljava/lang/String;
    .end local v7    # "simstate":I
    :catch_11c
    move-exception v0

    .line 1377
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d5

    .line 1395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .restart local v3    # "ident":J
    :cond_121
    if-eqz p1, :cond_123

    .line 1405
    :cond_123
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1408
    const v9, 0x2600c

    if-ne p2, v9, :cond_13f

    .line 1409
    iget-object v10, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-eqz p1, :cond_13d

    const/4 v9, 0x1

    :goto_130
    invoke-virtual {v10, p2, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    .line 1413
    :goto_133
    if-nez p1, :cond_135

    .line 1416
    :cond_135
    const/4 v9, 0x1

    goto/16 :goto_3a

    .line 1405
    :catchall_138
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1409
    :cond_13d
    const/4 v9, 0x0

    goto :goto_130

    .line 1411
    :cond_13f
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v9, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_144
    .catchall {:try_start_11d .. :try_end_144} :catchall_e7

    goto :goto_133
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 3177
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 3179
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 3180
    :try_start_6
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    .line 3181
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiService$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiService$Multicaster;-><init>(Lcom/android/server/wifi/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3186
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 3187
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2d

    .line 3189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3190
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3192
    .local v0, "ident":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_35
    .catchall {:try_start_24 .. :try_end_29} :catchall_30

    .line 3195
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3197
    return-void

    .line 3187
    .end local v0    # "ident":J
    .end local v2    # "uid":I
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 3195
    .restart local v0    # "ident":J
    .restart local v2    # "uid":I
    :catchall_30
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3193
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
    .line 2974
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    const/4 v1, 0x1

    if-eq p2, v1, :cond_48

    const/4 v1, 0x2

    if-eq p2, v1, :cond_48

    const/4 v1, 0x3

    if-eq p2, v1, :cond_48

    .line 2978
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

    .line 2979
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

    .line 2980
    :cond_46
    const/4 v1, 0x0

    .line 2993
    :goto_47
    return v1

    .line 2982
    :cond_48
    if-eqz p4, :cond_51

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_51

    .line 2983
    const/4 p4, 0x0

    .line 2985
    :cond_51
    if-eqz p4, :cond_5e

    .line 2986
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 2988
    :cond_5e
    if-nez p4, :cond_69

    .line 2989
    new-instance p4, Landroid/os/WorkSource;

    .end local p4    # "ws":Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 2991
    .restart local p4    # "ws":Landroid/os/WorkSource;
    :cond_69
    new-instance v0, Lcom/android/server/wifi/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$WifiLock;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2992
    .local v0, "wifiLock":Lcom/android/server/wifi/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v2

    .line 2993
    :try_start_76
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_47

    .line 2994
    :catchall_7c
    move-exception v1

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1684
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1693
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 1694
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1697
    :goto_f
    return v0

    .line 1696
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1989
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1991
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 1992
    return-void
.end method

.method public callSECApi(Landroid/os/Message;)I
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2364
    if-nez p1, :cond_7

    move v6, v7

    .line 2764
    :cond_6
    :goto_6
    :sswitch_6
    return v6

    .line 2367
    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_360

    :goto_c
    move v6, v7

    .line 2764
    goto :goto_6

    .line 2369
    :sswitch_e
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_6

    .line 2372
    :sswitch_12
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2373
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto :goto_6

    .line 2375
    :sswitch_1c
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2376
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto :goto_6

    .line 2379
    :sswitch_26
    :try_start_26
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2d

    move-result v6

    goto :goto_6

    .line 2380
    :catch_2d
    move-exception v2

    .line 2381
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v6, v7

    .line 2382
    goto :goto_6

    .line 2386
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_33
    :try_start_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2387
    .local v0, "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "mac"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_42} :catch_44

    move-result v6

    goto :goto_6

    .line 2388
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_44
    move-exception v2

    .line 2389
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 2394
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_49
    :try_start_49
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4e} :catch_50

    move-result v6

    goto :goto_6

    .line 2395
    :catch_50
    move-exception v2

    .line 2396
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 2401
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_55
    :try_start_55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2402
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "macaddrAcl"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->setMacaddrAcl(I)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_64} :catch_66

    move-result v6

    goto :goto_6

    .line 2403
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_66
    move-exception v2

    .line 2404
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 2408
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_6b
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v7

    if-eq v7, v5, :cond_6

    .line 2410
    :try_start_73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2411
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "maxClient"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_82} :catch_84

    move-result v6

    goto :goto_6

    .line 2412
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_84
    move-exception v2

    .line 2413
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 2419
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_8a
    :try_start_8a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 2420
    .local v4, "type":Ljava/lang/String;
    const-string v5, "wps_start"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 2421
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->startWpsPbc()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9b} :catch_9d

    goto/16 :goto_6

    .line 2425
    .end local v4    # "type":Ljava/lang/String;
    :catch_9d
    move-exception v2

    .line 2426
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 2427
    goto/16 :goto_6

    .line 2422
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_a4
    :try_start_a4
    const-string v5, "wps_cancel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2423
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->cancelWps()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b1} :catch_9d

    goto/16 :goto_6

    .line 2433
    .end local v4    # "type":Ljava/lang/String;
    :sswitch_b3
    :try_start_b3
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "att_hotspot_test"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_e5

    .line 2434
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 2437
    :goto_c4
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHotspotTestMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b3 .. :try_end_de} :catch_e9

    .line 2442
    :goto_de
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v7, :cond_f8

    :goto_e2
    move v6, v5

    goto/16 :goto_6

    .line 2436
    :cond_e5
    const/4 v7, 0x0

    :try_start_e6
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z
    :try_end_e8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e6 .. :try_end_e8} :catch_e9

    goto :goto_c4

    .line 2438
    :catch_e9
    move-exception v3

    .line 2439
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    .line 2440
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "att_hotspot_test"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_de

    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_f8
    move v5, v6

    .line 2442
    goto :goto_e2

    .line 2454
    :sswitch_fa
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2455
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    .line 2460
    :sswitch_104
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2461
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_6

    .line 2467
    :sswitch_10e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2468
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2473
    :sswitch_119
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2474
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_124
    move v6, v7

    .line 2480
    goto/16 :goto_6

    :sswitch_127
    move v6, v7

    .line 2497
    goto/16 :goto_6

    :sswitch_12a
    move v6, v7

    .line 2509
    goto/16 :goto_6

    .line 2519
    :sswitch_12d
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2520
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2523
    :sswitch_138
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2524
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2528
    :sswitch_143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2529
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2530
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "netId"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiStateMachine;->unlockMobNetwork(I)V

    goto/16 :goto_6

    .line 2535
    .end local v0    # "args":Landroid/os/Bundle;
    :sswitch_157
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2536
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2540
    :sswitch_162
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2542
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v7, "enable"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_186

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_178

    .line 2544
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 2545
    :cond_178
    const-string v5, "WifiService"

    const-string v7, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :goto_17f
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    .line 2547
    :cond_186
    const-string v5, "WifiService"

    const-string v7, "Start scan, start assoc"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    .line 2555
    .end local v0    # "args":Landroid/os/Bundle;
    :sswitch_18e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2556
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "mode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiStateMachine;->setRvfMode(I)V

    goto/16 :goto_6

    .line 2560
    .end local v0    # "args":Landroid/os/Bundle;
    :sswitch_19f
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v6

    goto/16 :goto_6

    .line 2563
    :sswitch_1a7
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2567
    :sswitch_1af
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2568
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "channel"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->startPartialScan([I)I

    move-result v6

    goto/16 :goto_6

    .line 2571
    .end local v0    # "args":Landroid/os/Bundle;
    :sswitch_1c1
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2576
    :sswitch_1c9
    :try_start_1c9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2577
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "enable"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->rmcEnable(Z)I
    :try_end_1d8
    .catch Landroid/os/RemoteException; {:try_start_1c9 .. :try_end_1d8} :catch_1db

    move-result v6

    goto/16 :goto_6

    .line 2578
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_1db
    move-exception v2

    .line 2579
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 2584
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_1e1
    :try_start_1e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2585
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "mac"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->rmcSetMac(Ljava/lang/String;)I
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1e1 .. :try_end_1f0} :catch_1f3

    move-result v6

    goto/16 :goto_6

    .line 2586
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_1f3
    move-exception v2

    .line 2587
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 2592
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_1f9
    :try_start_1f9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2593
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "rate"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->rmcSetRate(I)I
    :try_end_208
    .catch Landroid/os/RemoteException; {:try_start_1f9 .. :try_end_208} :catch_20b

    move-result v6

    goto/16 :goto_6

    .line 2594
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_20b
    move-exception v2

    .line 2595
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 2600
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_211
    :try_start_211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2601
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "interval"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->rmcSetInterval(I)I
    :try_end_220
    .catch Landroid/os/RemoteException; {:try_start_211 .. :try_end_220} :catch_223

    move-result v6

    goto/16 :goto_6

    .line 2602
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_223
    move-exception v2

    .line 2603
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    .line 2607
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_229
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2614
    :sswitch_231
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2615
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2646
    :sswitch_23c
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSECApi - id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2649
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_267

    .line 2650
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2652
    :cond_267
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2653
    goto/16 :goto_6

    .line 2662
    :sswitch_271
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSECApi - id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2665
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_29c

    .line 2666
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2668
    :cond_29c
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2669
    goto/16 :goto_6

    .line 2679
    :sswitch_2a6
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSECApi - id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2682
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_2d1

    .line 2683
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2685
    :cond_2d1
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2686
    goto/16 :goto_6

    .line 2694
    :sswitch_2db
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v6

    goto/16 :goto_6

    .line 2702
    :sswitch_2e3
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v7, "mode"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v6

    goto/16 :goto_6

    .line 2709
    :sswitch_2f5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2711
    const-string v5, "persist.service.wifi_band"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_6

    .line 2713
    :sswitch_300
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2715
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2716
    .local v1, "band":I
    if-ltz v1, :cond_30a

    const/4 v5, 0x2

    if-le v1, v5, :cond_30d

    :cond_30a
    move v6, v7

    .line 2717
    goto/16 :goto_6

    .line 2720
    :cond_30d
    const-string v5, "persist.service.wifi_band"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2726
    .end local v1    # "band":I
    :sswitch_327
    const-string v5, "WifiService"

    const-string v6, "SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2740
    goto/16 :goto_6

    .line 2744
    :sswitch_331
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2745
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2750
    :sswitch_33c
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2754
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    .line 2757
    :sswitch_347
    :try_start_347
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2758
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v6, "txPower"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setTxPower(I)I
    :try_end_356
    .catch Landroid/os/RemoteException; {:try_start_347 .. :try_end_356} :catch_359

    move-result v6

    goto/16 :goto_6

    .line 2759
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_359
    move-exception v2

    .line 2760
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_c

    .line 2367
    nop

    :sswitch_data_360
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_12
        0x3 -> :sswitch_26
        0x4 -> :sswitch_33
        0x5 -> :sswitch_49
        0xe -> :sswitch_6b
        0xf -> :sswitch_1c
        0x10 -> :sswitch_fa
        0x11 -> :sswitch_10e
        0x12 -> :sswitch_157
        0x13 -> :sswitch_119
        0x14 -> :sswitch_124
        0x15 -> :sswitch_127
        0x16 -> :sswitch_12a
        0x18 -> :sswitch_138
        0x19 -> :sswitch_104
        0x1a -> :sswitch_162
        0x1b -> :sswitch_18e
        0x1c -> :sswitch_19f
        0x1d -> :sswitch_143
        0x1e -> :sswitch_2f5
        0x1f -> :sswitch_300
        0x20 -> :sswitch_1a7
        0x24 -> :sswitch_1af
        0x25 -> :sswitch_1c1
        0x28 -> :sswitch_327
        0x29 -> :sswitch_12d
        0x2a -> :sswitch_12d
        0x2b -> :sswitch_12d
        0x2c -> :sswitch_12d
        0x2d -> :sswitch_12d
        0x2e -> :sswitch_12d
        0x32 -> :sswitch_1c9
        0x33 -> :sswitch_1e1
        0x34 -> :sswitch_1f9
        0x35 -> :sswitch_211
        0x3d -> :sswitch_331
        0x3e -> :sswitch_33c
        0x3f -> :sswitch_229
        0x40 -> :sswitch_231
        0x42 -> :sswitch_231
        0x43 -> :sswitch_231
        0x64 -> :sswitch_23c
        0x65 -> :sswitch_23c
        0x66 -> :sswitch_23c
        0x67 -> :sswitch_23c
        0x68 -> :sswitch_23c
        0x69 -> :sswitch_23c
        0x6a -> :sswitch_23c
        0x6b -> :sswitch_23c
        0x6d -> :sswitch_23c
        0x82 -> :sswitch_23c
        0x83 -> :sswitch_23c
        0x84 -> :sswitch_23c
        0x85 -> :sswitch_23c
        0x86 -> :sswitch_23c
        0x87 -> :sswitch_23c
        0x88 -> :sswitch_23c
        0x89 -> :sswitch_23c
        0x96 -> :sswitch_23c
        0x97 -> :sswitch_23c
        0xa1 -> :sswitch_23c
        0xa2 -> :sswitch_23c
        0xa3 -> :sswitch_23c
        0xaa -> :sswitch_23c
        0xab -> :sswitch_23c
        0xac -> :sswitch_271
        0xad -> :sswitch_271
        0xae -> :sswitch_2a6
        0xaf -> :sswitch_2a6
        0xb4 -> :sswitch_2db
        0xb5 -> :sswitch_2e3
        0xbe -> :sswitch_8a
        0xbf -> :sswitch_b3
        0xc0 -> :sswitch_6
        0xc2 -> :sswitch_55
        0xc3 -> :sswitch_347
    .end sparse-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 2768
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_e2

    .line 2858
    :cond_6
    :goto_6
    return-object v1

    .line 2770
    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 2771
    const-string v1, ""

    goto :goto_6

    .line 2777
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

    .line 2779
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2780
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_37

    .line 2781
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2783
    :cond_37
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2791
    :sswitch_3f
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_53

    .line 2794
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2796
    :cond_53
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2801
    :sswitch_5b
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_GAS_RESP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2804
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_72

    .line 2805
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2807
    :cond_72
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2814
    :sswitch_7a
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_BSS_INFO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_8f

    .line 2817
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 2819
    :cond_8f
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2827
    :sswitch_98
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2829
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    .line 2831
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_6

    .line 2836
    const/4 v3, 0x0

    .line 2837
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_ce

    .line 2838
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 2844
    const/4 v1, 0x0

    .line 2845
    .local v1, "encryptData":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 2846
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2848
    .local v2, "key":Ljava/lang/String;
    :try_start_c8
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiService$EncryptTool;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_d7

    move-result-object v1

    goto/16 :goto_6

    .line 2840
    .end local v1    # "encryptData":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_ce
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2849
    .restart local v1    # "encryptData":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    :catch_d7
    move-exception v0

    .line 2850
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WifiService"

    const-string v5, "Encryption failure"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2768
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
    .line 1967
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 1968
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckComplete()V

    .line 1969
    return-void
.end method

.method public ccx_disable_location_service()I
    .registers 3

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1121
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1122
    const-string v0, "WifiService"

    const-string v1, "WiFiService ccx_disable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1125
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncccx_disable_location_service(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 1130
    :goto_1a
    return v0

    .line 1127
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1128
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public ccx_enable_location_service()I
    .registers 3

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1096
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1097
    const-string v0, "WifiService"

    const-string v1, "WiFiService ccx_enable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1100
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncccx_enable_location_service(Lcom/android/internal/util/AsyncChannel;)I

    move-result v0

    .line 1105
    :goto_1a
    return v0

    .line 1102
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1103
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public ccx_send_location_service_request(Ljava/lang/String;)I
    .registers 4
    .param p1, "location_request"    # Ljava/lang/String;

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1146
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1147
    const-string v0, "WifiService"

    const-string v1, "WiFiService ccx_send_location_service_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1150
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->setccx_send_location_service_request(Lcom/android/internal/util/AsyncChannel;Ljava/lang/String;)I

    move-result v0

    .line 1155
    :goto_1a
    return v0

    .line 1152
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1153
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_26
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public checkAndStartWifi()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 913
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v3, :cond_6

    .line 1000
    :cond_5
    :goto_5
    return-void

    .line 916
    :cond_6
    sget-object v3, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 917
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_19

    .line 918
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi isSimCheked Before"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_19
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->isSimCheked:Z

    if-eqz v3, :cond_5

    .line 923
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_28

    .line 924
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi isSimCheked After"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_28
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isFirstBootMccMnc:Z

    .line 930
    :cond_2a
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    .line 931
    .local v2, "wifiEnabled":Z
    const-string v4, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiService starting up with Wi-Fi "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_f2

    const-string v3, "enabled"

    :goto_41
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    sget-object v3, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 938
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_55
    const/4 v3, 0x3

    if-ge v1, v3, :cond_d5

    .line 940
    const/4 v3, 0x1

    :try_start_59
    sput-boolean v3, Lcom/android/server/wifi/WifiService;->isWifiDelayOnGoing:Z

    .line 941
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 943
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    .line 944
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_88

    .line 945
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndStartWifi getSimState() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_88
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mccmnc:Ljava/lang/String;

    .line 948
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_ae

    .line 949
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndStartWifi mccmnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mccmnc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_ae
    iget v3, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    if-eq v3, v6, :cond_b7

    iget v3, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_f6

    .line 952
    :cond_b7
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_d5

    .line 953
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndStartWifi getSimState() absent or IO Error= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_d5} :catch_120

    .line 985
    :cond_d5
    :goto_d5
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/wifi/WifiService;->isWifiDelayOnGoing:Z

    .line 986
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_e3

    .line 987
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi isWifiDelayOnGoing final: isWifiDelayOnGoing is false"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .end local v1    # "i":I
    :cond_e3
    if-eqz v2, :cond_e8

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 993
    :cond_e8
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto/16 :goto_5

    .line 931
    :cond_f2
    const-string v3, "disabled"

    goto/16 :goto_41

    .line 956
    .restart local v1    # "i":I
    :cond_f6
    :try_start_f6
    iget v3, p0, Lcom/android/server/wifi/WifiService;->simState_int:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_125

    .line 957
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mccmnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 958
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_110

    .line 959
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi getSimState() SIM_STATE_READY state . But no mccmnc case"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_110
    :goto_110
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_55

    .line 962
    :cond_114
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_d5

    .line 963
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi getSimState() SIM_STATE_READY state . But yes mccmnc case"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_11f} :catch_120

    goto :goto_d5

    .line 979
    :catch_120
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d5

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_125
    :try_start_125
    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mccmnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 969
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_110

    .line 970
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi getSimState() Ing state . But no mccmnc case"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110

    .line 973
    :cond_13b
    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_d5

    .line 974
    const-string v3, "WifiService"

    const-string v4, "checkAndStartWifi getSimState() Ing state . But yes mccmnc case"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_146} :catch_120

    goto :goto_d5
.end method

.method public checkAndStartWifiAp(I)V
    .registers 10
    .param p1, "checkIMEI"    # I

    .prologue
    const/4 v7, 0x1

    .line 1004
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v4, :cond_6

    .line 1036
    :goto_5
    return-void

    .line 1006
    :cond_6
    if-lez p1, :cond_29

    .line 1007
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, p1, :cond_29

    .line 1008
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->isIMEIWritten()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1009
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

    .line 1020
    .end local v1    # "i":I
    :cond_29
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1021
    .local v2, "mCm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1022
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1024
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v3

    .line 1025
    .local v3, "wifiState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_4e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4e

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1028
    :cond_4e
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 1030
    const-wide/16 v4, 0x258

    :try_start_56
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_6d

    .line 1035
    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_5

    .line 1013
    .end local v2    # "mCm":Landroid/net/ConnectivityManager;
    .end local v3    # "wifiState":I
    .restart local v1    # "i":I
    :cond_60
    const-wide/16 v4, 0x1f4

    :try_start_62
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_68

    .line 1007
    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1014
    :catch_68
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_65

    .line 1031
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .restart local v2    # "mCm":Landroid/net/ConnectivityManager;
    .restart local v3    # "wifiState":I
    :catch_6d
    move-exception v0

    .line 1032
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_59
.end method

.method public clearBlacklist()V
    .registers 2

    .prologue
    .line 1999
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2001
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 2002
    return-void
.end method

.method public disableNetwork(I)Z
    .registers 6
    .param p1, "netId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1742
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1743
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

    .line 1744
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3a

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_3a

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_42

    .line 1745
    :cond_3a
    const-string v1, "WifiService"

    const-string v2, "invalid netId was used"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :goto_41
    return v0

    .line 1748
    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_4f

    .line 1749
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_41

    .line 1751
    :cond_4f
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public disconnect()V
    .registers 4

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1644
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

    .line 1645
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1646
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2306
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_34

    .line 2308
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

    .line 2360
    :goto_33
    return-void

    .line 2313
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

    .line 2314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stay-awake conditions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "stay_on_while_plugged_in"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
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

    .line 2318
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

    .line 2319
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2320
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2321
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2322
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2324
    const-string v6, "Latest scan results:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 2326
    .local v4, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_10e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_10e

    .line 2327
    const-string v6, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2328
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 2329
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

    if-nez v6, :cond_10b

    const-string v6, ""

    :goto_105
    aput-object v6, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_d2

    :cond_10b
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_105

    .line 2337
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Landroid/net/wifi/ScanResult;
    :cond_10e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2338
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

    .line 2341
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

    .line 2344
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2345
    const-string v6, "Locks held:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2346
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v6, p2}, Lcom/android/server/wifi/WifiService$LockList;->access$1500(Lcom/android/server/wifi/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 2348
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2349
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 2350
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

    .line 2351
    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1b1
    if-ltz v0, :cond_1e2

    .line 2352
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 2353
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

    .line 2351
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b1

    .line 2356
    .end local v2    # "m":Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_1e2
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2358
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2359
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_33
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1725
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1726
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 1727
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 1731
    :goto_f
    return v0

    .line 1730
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v0, 0x0

    goto :goto_f
.end method

.method enforceWakeSourcePermission(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 2966
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 2971
    :goto_6
    return-void

    .line 2969
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2025
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2026
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
    .line 1669
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1670
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 1671
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 1674
    :goto_f
    return-object v0

    .line 1673
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;
    .registers 2

    .prologue
    .line 2148
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2149
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    .prologue
    .line 1761
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1766
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2134
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2135
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 13

    .prologue
    .line 1905
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1906
    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v2

    .line 1907
    .local v2, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_f

    const/4 v7, 0x0

    .line 1948
    :goto_e
    return-object v7

    .line 1909
    :cond_f
    new-instance v7, Landroid/net/DhcpInfo;

    invoke-direct {v7}, Landroid/net/DhcpInfo;-><init>()V

    .line 1910
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

    .line 1911
    .local v8, "la":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1912
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v11, v0, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1e

    .line 1913
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0    # "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->ipAddress:I

    .line 1917
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

    .line 1918
    .local v9, "r":Landroid/net/RouteInfo;
    invoke-virtual {v9}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 1919
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    .line 1920
    .local v5, "gateway":Ljava/net/InetAddress;
    instance-of v11, v5, Ljava/net/Inet4Address;

    if-eqz v11, :cond_44

    .line 1921
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5    # "gateway":Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->gateway:I

    goto :goto_44

    .line 1923
    :cond_67
    invoke-virtual {v9}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v11

    if-nez v11, :cond_44

    .line 1924
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    .line 1925
    .local v1, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_44

    .line 1926
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->netmask:I

    goto :goto_44

    .line 1931
    .end local v1    # "dest":Landroid/net/LinkAddress;
    .end local v9    # "r":Landroid/net/RouteInfo;
    :cond_84
    const/4 v4, 0x0

    .line 1932
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

    .line 1933
    .local v3, "dns":Ljava/net/InetAddress;
    instance-of v11, v3, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8f

    .line 1934
    if-nez v4, :cond_c2

    .line 1935
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3    # "dns":Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns1:I

    .line 1939
    :goto_a9
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    if-le v4, v11, :cond_8f

    .line 1942
    :cond_ae
    iget-object v10, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 1943
    .local v10, "serverAddress":Ljava/net/InetAddress;
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_bc

    .line 1944
    check-cast v10, Ljava/net/Inet4Address;

    .end local v10    # "serverAddress":Ljava/net/InetAddress;
    invoke-static {v10}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->serverAddress:I

    .line 1946
    :cond_bc
    iget v11, v2, Landroid/net/DhcpResults;->leaseDuration:I

    iput v11, v7, Landroid/net/DhcpInfo;->leaseDuration:I

    goto/16 :goto_e

    .line 1937
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
    .line 1887
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1888
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .registers 2

    .prologue
    .line 2098
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2099
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 2154
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2155
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .registers 3

    .prologue
    .line 2174
    const-string v0, "pppoe"

    const-string v1, "wifiservice: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
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
    .line 1796
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1797
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncGetPartialScanResultsList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoamBand()I
    .registers 2

    .prologue
    .line 2116
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2117
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .registers 2

    .prologue
    .line 2062
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2063
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    .prologue
    .line 2080
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2081
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .registers 2

    .prologue
    .line 2044
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2045
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
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
    .line 1775
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1776
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1777
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1778
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1779
    .local v1, "ident":J
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1f

    .line 1781
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1788
    :goto_1e
    return-object v5

    .line 1784
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1785
    .local v0, "currentUser":I
    if-eq v4, v0, :cond_2e

    .line 1786
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_35

    .line 1791
    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1788
    :cond_2e
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    move-result-object v5

    goto :goto_2a

    .line 1791
    .end local v0    # "currentUser":I
    :catchall_35
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .registers 3
    .param p1, "netID"    # I

    .prologue
    .line 2143
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2144
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
    .line 1807
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1808
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1809
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1811
    .local v1, "ident":J
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1812
    .local v0, "currentUser":I
    if-eq v3, v0, :cond_1a

    .line 1813
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    .line 1818
    :goto_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1815
    return-object v4

    :cond_1a
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetSupportedWifiChannels()Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    move-result-object v4

    goto :goto_16

    .line 1818
    .end local v0    # "currentUser":I
    :catchall_21
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .prologue
    .line 1581
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1582
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .registers 2

    .prologue
    .line 1572
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1573
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1605
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1608
    :goto_6
    return-object v1

    .line 1606
    :catch_7
    move-exception v0

    .line 1607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1608
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApTimeOut()I
    .registers 5

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_time_out_value"

    sget v3, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1625
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

    .line 1626
    return v0
.end method

.method public getWifiEnabledState()I
    .registers 2

    .prologue
    .line 1458
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiIBSSEnabledState()I
    .registers 2

    .prologue
    .line 1464
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1465
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiIBSSState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .registers 3

    .prologue
    .line 2009
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2010
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2011
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 2016
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 2017
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2018
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public get_s69_part_msg(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1171
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    .line 1172
    const-string v0, "WifiService"

    const-string v1, "WiFiService get_s69_part_msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_e
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1b

    .line 1175
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->sets69_part_msg(Lcom/android/internal/util/AsyncChannel;II)Ljava/lang/String;

    move-result-object v0

    .line 1180
    :goto_1a
    return-object v0

    .line 1177
    :cond_1b
    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_26

    .line 1178
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_26
    const-string v0, ""

    goto :goto_1a
.end method

.method public initializeMulticastFiltering()V
    .registers 3

    .prologue
    .line 3164
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 3166
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 3168
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 3169
    monitor-exit v1

    .line 3174
    :goto_f
    return-void

    .line 3171
    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 3173
    monitor-exit v1

    goto :goto_f

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isDualBandSupported()Z
    .registers 2

    .prologue
    .line 1895
    const/4 v0, 0x1

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 3236
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 3238
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 3239
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

    .line 3240
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
    .line 1635
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1636
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .registers 3

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1082
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 1083
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1086
    :goto_f
    return v0

    .line 1085
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public reassociate()V
    .registers 2

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1661
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1662
    return-void
.end method

.method public reconnect()V
    .registers 2

    .prologue
    .line 1652
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1653
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1654
    return-void
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 3200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 3202
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3203
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 3204
    :try_start_a
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    .line 3205
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 3206
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_30

    .line 3207
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 3208
    .local v1, "m":Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    .line 3209
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    .line 3206
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 3212
    .end local v1    # "m":Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_30
    monitor-exit v5

    .line 3213
    return-void

    .line 3212
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
    .line 3074
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v1

    .line 3076
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3077
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
    .line 1708
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1709
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    .line 1710
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1713
    :goto_f
    return v0

    .line 1712
    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public saveConfiguration()Z
    .registers 4

    .prologue
    .line 1829
    const/4 v0, 0x1

    .line 1830
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1831
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_11

    .line 1832
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 1835
    :goto_10
    return v1

    .line 1834
    :cond_11
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1849
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

    .line 1851
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1854
    .local v0, "token":J
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    .line 1856
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1858
    return-void

    .line 1856
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 3
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 2125
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2126
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
    .line 1870
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1880
    :goto_9
    return-void

    .line 1872
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

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1876
    .local v0, "token":J
    :try_start_30
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    .line 1878
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
    .line 2089
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2090
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamBand(I)Z
    .registers 3
    .param p1, "roamBand"    # I

    .prologue
    .line 2107
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2108
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .registers 3
    .param p1, "roamDelta"    # I

    .prologue
    .line 2053
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2054
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 3
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 2071
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2072
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .registers 3
    .param p1, "roamTrigger"    # I

    .prologue
    .line 2035
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 2036
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1593
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1601
    :cond_f
    :goto_f
    return-void

    .line 1598
    :cond_10
    if-eqz p1, :cond_f

    .line 1600
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_f
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 11
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    const v7, 0x20130

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1477
    if-eqz p2, :cond_7

    .line 1488
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1491
    if-eqz p2, :cond_19

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_19

    .line 1561
    :cond_18
    :goto_18
    return-void

    .line 1494
    :cond_19
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v5

    if-nez v5, :cond_26

    .line 1495
    const/4 p1, 0x0

    .line 1500
    :cond_26
    if-eqz p2, :cond_4f

    .line 1501
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    .line 1502
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v5, :cond_4f

    .line 1503
    const-string v3, "WifiService"

    const-string v4, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1505
    .local v2, "wifiToastIntent":Landroid/content/Intent;
    const-string v3, "info_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1506
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_18

    .line 1511
    .end local v2    # "wifiToastIntent":Landroid/content/Intent;
    :cond_4f
    if-eqz p2, :cond_75

    .line 1512
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiStateMachine;->canEnabledFirmwareType(I)I

    move-result v0

    .line 1513
    .local v0, "enabledFirmwareType":I
    if-ltz v0, :cond_75

    .line 1514
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "req_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1516
    const-string v3, "extra_type"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1517
    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1518
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_18

    .line 1523
    .end local v0    # "enabledFirmwareType":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_75
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v6, 0x2600a

    if-eqz p2, :cond_86

    :goto_7c
    invoke-virtual {v5, v6, v3, v4, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1532
    if-eqz p2, :cond_18

    goto :goto_18

    :cond_86
    move v3, v4

    .line 1523
    goto :goto_7c
.end method

.method public setWifiApTimeOut(I)V
    .registers 6
    .param p1, "sec"    # I

    .prologue
    .line 1617
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_time_out_value"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1618
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

    .line 1619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1621
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1622
    return-void
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1270
    const-string v0, "WifiService"

    const-string v1, "Wi-Fi state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_66

    .line 1271
    const/4 v0, 0x0

    .line 1293
    :goto_16
    monitor-exit p0

    return v0

    .line 1285
    :cond_18
    if-nez p1, :cond_27

    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1286
    const-string v0, "WifiService"

    const-string v1, "isScanAlwaysAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_27
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1291
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

    .line 1293
    const v0, 0x26008

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z
    :try_end_64
    .catchall {:try_start_1a .. :try_end_64} :catchall_66

    move-result v0

    goto :goto_16

    .line 1269
    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWifiIBSSEnabled(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    .line 1245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1246
    const-string v0, "WifiService"

    const-string v1, "Wi-Fi state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_57

    .line 1247
    const/4 v0, 0x0

    .line 1257
    :goto_16
    monitor-exit p0

    return v0

    .line 1251
    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1255
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIBSSEnabled: "

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

    .line 1257
    const v0, 0x2600c

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z
    :try_end_55
    .catchall {:try_start_18 .. :try_end_55} :catchall_57

    move-result v0

    goto :goto_16

    .line 1245
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V
    .registers 13
    .param p1, "type"    # Lcom/android/server/wifi/WifiService$HS20_ConType;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3245
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showHS20WifiNotification   is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3247
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-eq p1, v5, :cond_ef

    .line 3248
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-nez v5, :cond_57

    .line 3249
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 3250
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 3251
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 3252
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 3253
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

    .line 3257
    :cond_57
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3258
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 3259
    .local v4, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3260
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3262
    .local v0, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_bd

    .line 3263
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x1080350

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 3267
    :goto_6e
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v5, :cond_c5

    .line 3268
    const v5, 0x104065a

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

    .line 3272
    :goto_87
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3273
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v5, :cond_dc

    .line 3274
    const v5, 0x1040658

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3278
    :goto_9e
    if-eqz v4, :cond_ad

    if-eqz v1, :cond_ad

    .line 3279
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3281
    :cond_ad
    :try_start_ad
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_e4

    .line 3282
    const v5, 0x1080350

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_b9} :catch_ed

    .line 3286
    :goto_b9
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    .line 3295
    .end local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "title":Ljava/lang/String;
    :goto_bc
    return-void

    .line 3265
    .restart local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v3    # "r":Landroid/content/res/Resources;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_bd
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x1080351

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_6e

    .line 3270
    :cond_c5
    const v5, 0x104065b

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

    goto :goto_87

    .line 3276
    :cond_dc
    const v5, 0x1040659

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    .line 3284
    :cond_e4
    const v5, 0x1080351

    :try_start_e7
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ec
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_ec} :catch_ed

    goto :goto_b9

    .line 3285
    :catch_ed
    move-exception v5

    goto :goto_b9

    .line 3288
    .end local v0    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v1    # "message":Ljava/lang/String;
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "title":Ljava/lang/String;
    :cond_ef
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-eqz v5, :cond_104

    if-eqz v2, :cond_104

    .line 3289
    const v5, 0x1080350

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3290
    const v5, 0x1080351

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3291
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 3293
    :cond_104
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    goto :goto_bc
.end method

.method public shutdown()Z
    .registers 2

    .prologue
    .line 1421
    const/4 v0, 0x1

    return v0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .registers 5
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70001

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2162
    return-void
.end method

.method public startScan()V
    .registers 3

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1210
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startScan(I)V

    .line 1212
    return-void
.end method

.method public startWifi()V
    .registers 3

    .prologue
    .line 1956
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 1962
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1964
    return-void
.end method

.method public stopPPPOE()V
    .registers 4

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70004

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2167
    return-void
.end method

.method public stopWifi()V
    .registers 3

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 1981
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1982
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 3047
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3048
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3049
    .local v3, "pid":I
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_11

    .line 3050
    const/4 p2, 0x0

    .line 3052
    :cond_11
    if-eqz p2, :cond_16

    .line 3053
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 3055
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3057
    .local v0, "ident":J
    :try_start_1a
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v7
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_30
    .catchall {:try_start_1a .. :try_end_1d} :catchall_58

    .line 3058
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # invokes: Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$2200(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 3059
    .local v2, "index":I
    if-gez v2, :cond_35

    .line 3060
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3066
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

    .line 3067
    :catch_30
    move-exception v6

    .line 3069
    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3071
    return-void

    .line 3062
    .restart local v2    # "index":I
    :cond_35
    :try_start_35
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    # getter for: Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService$LockList;->access$2300(Lcom/android/server/wifi/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiService$WifiLock;

    .line 3063
    .local v5, "wl":Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3064
    if-eqz p2, :cond_52

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_4b
    iput-object v6, v5, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 3065
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 3066
    monitor-exit v7

    goto :goto_31

    .line 3064
    :cond_52
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_2d

    goto :goto_4b

    .line 3069
    .end local v2    # "index":I
    .end local v5    # "wl":Lcom/android/server/wifi/WifiService$WifiLock;
    :catchall_58
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
