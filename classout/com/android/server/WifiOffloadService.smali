.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REQUEST:Ljava/lang/String; = "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DONT_USE_WIFI_PRESS_TIMER:I = 0x2d0

.field private static final EXTRA_SSID:Ljava/lang/String; = "delete_ssid"

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x64

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I = 0x0

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I = 0x0

.field public static USER_PRESSED_OK:I = 0x0

.field public static USER_PRESSED_TURN_OFF_WIFI:I = 0x0

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:I = 0x3e8

.field static dataUsageObj:Ljava/lang/Object;

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field public DATA_USAGE_THRESHOLD:I

.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklistedApps:[Ljava/lang/String;

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private doOffload:Z

.field private funcCallTimer:I

.field private gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private lastWifiScanTime:J

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDoNotShowOffloadDialogsDelay:J

.field private mDontUseWifiTimerIsRunning:Z

.field public mIsBatteryCharging:Z

.field public mIsServiceReadyForIntelScanMode:Z

.field private mIsTablet:Z

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mNoWifiTimerStartTime:J

.field public mPackageName:Ljava/lang/String;

.field private mSeamlessConnectWhileConnecting:Z

.field private mStartDialogIntent:Landroid/content/Intent;

.field private mWaitForScanResults:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private messageHandler:Landroid/os/Handler;

.field private noKnownNetwork:Z

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;

.field wifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 128
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 129
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 131
    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 168
    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    .line 169
    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    .line 170
    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    .line 171
    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    .line 906
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    .line 907
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 230
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 123
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 141
    iput v6, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 142
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 143
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 144
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 146
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 147
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 150
    iput v4, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 151
    iput v4, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 154
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 160
    const-string v2, "persist.offload.dontuse.time"

    const/16 v3, 0x2d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    .line 162
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 167
    iput v6, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 173
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 175
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsServiceReadyForIntelScanMode:Z

    .line 180
    iput v6, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 184
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 185
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 186
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    .line 191
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 195
    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    .line 200
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 216
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    .line 220
    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    .line 503
    new-instance v2, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    .line 541
    new-instance v2, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v2, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 685
    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    .line 1103
    new-instance v2, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    .line 1118
    new-instance v2, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    .line 1246
    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1311
    new-instance v2, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1349
    new-instance v2, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    .line 2233
    iput v6, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 231
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 233
    const-string v2, "WifiOffloadService is started . . ."

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    const-string/jumbo v2, "wifi.interface"

    const-string/jumbo v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "mInterfaceName":Ljava/lang/String;
    new-instance v2, Landroid/net/wifi/WifiNative;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 261
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 263
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_130

    .line 264
    const-string v2, "WifiOffloadService"

    const-string v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_130
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    .line 269
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    .line 272
    invoke-static {}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$1402(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 95
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 95
    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->startWifiOffloadAPDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiOffloadService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiOffloadService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/WifiOffloadService;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V

    return-void
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1770
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-nez v2, :cond_12

    .line 1771
    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    if-eqz v2, :cond_1c

    .line 1772
    const-string v2, "TABLET blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1773
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    .line 1780
    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_26

    .line 1789
    :cond_1b
    :goto_1b
    return v1

    .line 1775
    :cond_1c
    const-string v2, "Smartphone blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1776
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    goto :goto_12

    .line 1782
    :cond_26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 1783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1784
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1785
    const/4 v1, 0x1

    goto :goto_1b

    .line 1782
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1812
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_b

    .line 1820
    :cond_a
    :goto_a
    return v1

    .line 1814
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 1815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1816
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1817
    const/4 v1, 0x1

    goto :goto_a

    .line 1814
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2097
    const/4 v0, -0x1

    .line 2100
    .local v0, "perm":I
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    move-result v0

    .line 2104
    :goto_9
    if-nez v0, :cond_27

    .line 2105
    const/4 v2, 0x1

    .line 2107
    :goto_c
    return v2

    .line 2101
    :catch_d
    move-exception v1

    .line 2102
    .local v1, "re":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in checkInternetPermission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2107
    .end local v1    # "re":Ljava/lang/Exception;
    :cond_27
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private checkSignalStrength(Ljava/lang/String;)Z
    .registers 9
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 483
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_37

    .line 484
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 485
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 486
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 487
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_38

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_38

    .line 495
    .end local v0    # "iterator":Ljava/util/Iterator;
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_37
    :goto_37
    return v4

    .line 491
    .restart local v0    # "iterator":Ljava/util/Iterator;
    .restart local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_38
    const/4 v4, 0x1

    goto :goto_37
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 1538
    if-nez p0, :cond_7

    .line 1539
    const-string p0, ""

    .line 1550
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "lastPos":I
    :cond_6
    :goto_6
    return-object p0

    .line 1541
    .end local v0    # "lastPos":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1542
    const-string p0, ""

    goto :goto_6

    .line 1545
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1546
    .restart local v0    # "lastPos":I
    if-ltz v0, :cond_25

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_6

    .line 1547
    :cond_25
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private dumpAllStoredWifidata(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2151
    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    const/4 v7, 0x0

    .line 2154
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "stationid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_2b

    move-result-object v7

    .line 2160
    :goto_23
    if-nez v7, :cond_43

    .line 2161
    const-string v0, "WIFI_OFFLOAD_TABLE : wifi_data is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2171
    :goto_2a
    return-void

    .line 2156
    :catch_2b
    move-exception v8

    .line 2157
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 2163
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2165
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nBase station : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stationid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Network Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifissid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_49

    .line 2169
    :cond_8b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2a
.end method

.method private dumpAppDataUsage(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2174
    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    const/4 v7, 0x0

    .line 2177
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "datausage"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "launchcount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "data_usage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_2d

    move-result-object v7

    .line 2183
    :goto_25
    if-nez v7, :cond_45

    .line 2184
    const-string v0, "DATA_USAGE_TABLE : data_usage is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    :goto_2c
    return-void

    .line 2179
    :catch_2d
    move-exception v8

    .line 2180
    .local v8, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 2186
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_45
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 2188
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nApp package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Data Usage   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "datausage"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Launch count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchcount"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2193
    :cond_a5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2c
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2070
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2072
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_f

    .line 2073
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2075
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getDataUsageforPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1845
    const-string v1, "getDataUsageforApp ()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1848
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$11;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2037
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2040
    return-void
.end method

.method private getDialogShown()Z
    .registers 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 1460
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiState()I
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private hasNetworkInRange()V
    .registers 8

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v4

    .line 1142
    .local v4, "wifiLocationNetworks":[Ljava/lang/String;
    if-eqz v4, :cond_15

    array-length v5, v4

    if-lez v5, :cond_15

    .line 1143
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 1144
    .local v3, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_16

    .line 1159
    .end local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_15
    :goto_15
    return-void

    .line 1146
    .restart local v3    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1148
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    array-length v5, v4

    if-ge v0, v5, :cond_1a

    .line 1149
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v6, :cond_15

    .line 1151
    aget-object v5, v4, v0

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1152
    const-string v5, "Wifi was OFF so if ssid is available in SCAN Results turning ON Wi-Fi will connect to AP"

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_15

    .line 1148
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1157
    .end local v0    # "i":I
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_43
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    goto :goto_15
.end method

.method private insertDataUsage(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDataUsage for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2082
    :try_start_17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2083
    .local v0, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v3, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2084
    const-string v3, "pkgname"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string v3, "launchcount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2086
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "data_usage"

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3e} :catch_3f

    .line 2091
    .end local v0    # "cvalues":Landroid/content/ContentValues;
    :goto_3e
    return v2

    .line 2088
    :catch_3f
    move-exception v1

    .line 2089
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in insertDataUsage for dbHelper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v2, 0x0

    goto :goto_3e
.end method

.method private isAirplaneModeOn()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 773
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 775
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_8
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v4

    if-ne v4, v2, :cond_11

    .line 779
    :goto_10
    return v2

    :cond_11
    move v2, v3

    .line 775
    goto :goto_10

    .line 776
    :catch_13
    move-exception v1

    .line 777
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings AIRPLANE_MODE_ON not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 779
    goto :goto_10
.end method

.method private isAnyDataActivity()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 810
    const/4 v0, 0x0

    .line 812
    .local v0, "counter":I
    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_23

    .line 813
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    .line 815
    .local v1, "dataActivity":I
    const/4 v4, 0x3

    if-eq v1, v4, :cond_11

    if-eq v1, v3, :cond_11

    const/4 v4, 0x2

    if-ne v1, v4, :cond_12

    .line 828
    .end local v1    # "dataActivity":I
    :cond_11
    :goto_11
    return v3

    .line 821
    .restart local v1    # "dataActivity":I
    :cond_12
    const-wide/16 v4, 0xc8

    :try_start_14
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1a

    .line 825
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 822
    :catch_1a
    move-exception v2

    .line 823
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 828
    .end local v1    # "dataActivity":I
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_23
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)Z
    .registers 12
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 977
    const-string v8, "isCurrentProcessRunning without thread"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 979
    if-nez p1, :cond_9

    .line 999
    :cond_8
    :goto_8
    return v7

    .line 982
    :cond_9
    iget-object v8, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 984
    .local v2, "manager":Landroid/app/ActivityManager;
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 985
    .local v3, "originalId":J
    const-string v8, "clearCallingIdentity()"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 986
    const/16 v8, 0x1f4

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 987
    .local v6, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v8, "restoreCallingIdentity()"

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 988
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 990
    .local v5, "process":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_2e

    .line 991
    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_45} :catch_4a

    move-result v8

    if-eqz v8, :cond_2e

    .line 992
    const/4 v7, 0x1

    goto :goto_8

    .line 996
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "originalId":J
    .end local v5    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_4a
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while checking isCurrentProcessRunning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private isDontUseWifiTimerRunning(I)Z
    .registers 6
    .param p1, "stationID"    # I

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    if-eqz v0, :cond_3a

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 704
    iget v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v0, p1, :cond_3a

    .line 705
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer is running. Same location. TIMER_DELAY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3a

    .line 707
    const-string v0, "Timer expired. Resetting mDontUseWifiTimerIsRunning flag. *****"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 712
    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    return v0
.end method

.method private isHotspotOn()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 788
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_12

    .line 789
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 791
    :cond_12
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1d

    .line 792
    const-string v0, "No wifiManager."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v0, v1

    .line 800
    :goto_1c
    return v0

    .line 795
    :cond_1d
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2e

    .line 796
    const-string v0, "Hotspot is ON"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v0, v1

    .line 797
    goto :goto_1c

    .line 799
    :cond_2e
    const-string v0, "Hotspot is Off"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private isLastScanFoundNetworks()Z
    .registers 3

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 500
    .local v0, "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 853
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    .line 854
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private notifyDataUsageObject()V
    .registers 3

    .prologue
    .line 2043
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    .line 2044
    :try_start_3
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2045
    monitor-exit v1

    .line 2046
    return-void

    .line 2045
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private setWaitForDialogShown()V
    .registers 3

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1227
    return-void
.end method

.method private setWifiState(I)V
    .registers 3
    .param p1, "wifiState"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 228
    return-void
.end method

.method private startWifiOffloadAPDialog()V
    .registers 6

    .prologue
    .line 1195
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1196
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "counter":I
    :goto_b
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v2

    if-nez v2, :cond_44

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "counter":I
    .local v1, "counter":I
    const/16 v2, 0xa

    if-ge v0, v2, :cond_43

    .line 1199
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1200
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    goto :goto_b

    .end local v0    # "counter":I
    .restart local v1    # "counter":I
    :cond_43
    move v0, v1

    .line 1203
    .end local v1    # "counter":I
    .restart local v0    # "counter":I
    :cond_44
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .registers 6
    .param p0, "n"    # I

    .prologue
    .line 1207
    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1209
    :try_start_3
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    .line 1213
    :goto_a
    :try_start_a
    monitor-exit v2

    .line 1214
    return-void

    .line 1210
    :catch_c
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1213
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .registers 2
    .param p0, "wifiState"    # I

    .prologue
    .line 1287
    packed-switch p0, :pswitch_data_e

    .line 1297
    const/4 v0, 0x4

    :goto_4
    return v0

    .line 1289
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1291
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1293
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 1295
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_4

    .line 1287
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .registers 6
    .param p1, "mStationId"    # I
    .param p2, "isBlock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1612
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_3f

    .line 1613
    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_15

    .line 1614
    const-string/jumbo v0, "wifi offload : Okay, we can show pop up next time"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1628
    :goto_14
    return v2

    .line 1616
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temporary pop up blocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1617
    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1618
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_14

    .line 1622
    :cond_3f
    const-string/jumbo v0, "wifi offload : different station id so reset value"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1623
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    .line 1624
    sput v2, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    .line 1625
    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_14
.end method

.method public canAppOffload(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packagName"    # Ljava/lang/String;

    .prologue
    .line 2051
    sget-object v2, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v2

    .line 2052
    :try_start_3
    const-string v1, "Calling data usage in seperate thread"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2053
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->getDataUsageforPackage(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4e

    .line 2056
    :try_start_b
    const-string/jumbo v1, "waiting here"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2057
    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_34
    .catchall {:try_start_b .. :try_end_18} :catchall_4e

    .line 2062
    :goto_18
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the offload value as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 2063
    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    monitor-exit v2

    return v1

    .line 2058
    :catch_34
    move-exception v0

    .line 2059
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2064
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v1

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_18 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public checkAppForWiFiOffloading(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 911
    :try_start_0
    const-string v3, "checkAppForWiFiOffloading()"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v2

    .line 914
    .local v2, "wifiIntelligentMode":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 916
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_29

    .line 941
    .end local v2    # "wifiIntelligentMode":Z
    :cond_28
    :goto_28
    return-void

    .line 920
    .restart local v2    # "wifiIntelligentMode":Z
    :cond_29
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "currentPackageName":Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 924
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 926
    if-eqz v2, :cond_28

    .line 927
    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already running in background"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e
    .catchall {:try_start_0 .. :try_end_6d} :catchall_88

    goto :goto_28

    .line 935
    .end local v0    # "currentPackageName":Ljava/lang/String;
    .end local v2    # "wifiIntelligentMode":Z
    :catch_6e
    move-exception v1

    .line 936
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6f
    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppForWiFiOffloading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_88

    goto :goto_28

    .line 937
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_88
    move-exception v3

    throw v3

    .line 931
    .restart local v0    # "currentPackageName":Ljava/lang/String;
    .restart local v2    # "wifiIntelligentMode":Z
    :cond_8a
    :try_start_8a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_95} :catch_6e
    .catchall {:try_start_8a .. :try_end_95} :catchall_88

    goto :goto_28
.end method

.method public checkAppNeedsMoveToFront(I)V
    .registers 7
    .param p1, "taskID"    # I

    .prologue
    .line 1236
    const-string v2, "Move task to front..!!"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1239
    .local v1, "manager":Landroid/app/IActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_b
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    .line 1243
    :goto_e
    return-void

    .line 1240
    :catch_f
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 945
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 946
    const-string/jumbo v3, "test 1 passed for starting"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 948
    const/4 v1, -0x1

    .line 950
    .local v1, "perm":I
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_3c

    move-result v1

    .line 955
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 957
    if-nez v1, :cond_55

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 958
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    .line 969
    .end local v1    # "perm":I
    :cond_3b
    :goto_3b
    return-void

    .line 951
    .restart local v1    # "perm":I
    :catch_3c
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while checking permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_1a

    .line 961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_55
    if-nez v1, :cond_7d

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 962
    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->canAppOffload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 963
    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    .line 964
    .local v2, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now turning ON wifi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 967
    .end local v2    # "result":Z
    :cond_7d
    const-string/jumbo v3, "starting activity now"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public checkIsWifiConnected()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1249
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_13

    .line 1250
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1252
    :cond_13
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_19

    move v1, v2

    .line 1276
    :goto_18
    return v1

    .line 1255
    :cond_19
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1257
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1258
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1259
    const-string v1, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    .line 1260
    goto :goto_18

    .line 1263
    :cond_2c
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    .line 1265
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1266
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v0, :cond_38

    move v1, v2

    .line 1267
    goto :goto_18

    .line 1269
    :cond_38
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_47

    .line 1270
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1271
    const-string v1, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v3

    .line 1272
    goto :goto_18

    .line 1274
    :cond_47
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    .line 1275
    const-string v1, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    .line 1276
    goto :goto_18
.end method

.method public checkNetworksAndShowAPDialog()V
    .registers 5

    .prologue
    .line 1169
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1170
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isLastScanFoundNetworks()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1171
    const-string v0, "No networks. Start scanning."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1191
    :cond_16
    :goto_16
    return-void

    .line 1178
    :cond_17
    const-string v0, "Going to show AP dialog now"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    .line 1180
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1181
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const-string v1, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mStartDialogIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16
.end method

.method public checkisScreenOn()Z
    .registers 6

    .prologue
    .line 1559
    const-string v2, "checkisScreenOn()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1561
    :try_start_5
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1562
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-result v2

    .line 1565
    .end local v1    # "pm":Landroid/os/PowerManager;
    :goto_13
    return v2

    .line 1563
    :catch_14
    move-exception v0

    .line 1564
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when checking is screen on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public clearAllAccessPoints()V
    .registers 7

    .prologue
    .line 2290
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 2294
    :goto_c
    return-void

    .line 2291
    :catch_d
    move-exception v0

    .line 2292
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api clearAllAccessPoints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public collectWiFiDetails()V
    .registers 4

    .prologue
    .line 1440
    const-string v1, "getWiFiDetails()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1442
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_16

    .line 1443
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1445
    :cond_16
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1b

    .line 1454
    :cond_1a
    :goto_1a
    return-void

    .line 1448
    :cond_1b
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1449
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1a

    .line 1450
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public createWiFiOffloadDB()V
    .registers 5

    .prologue
    .line 1304
    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    .line 1305
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1309
    :goto_11
    return-void

    .line 1306
    :catch_12
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in create WifiOffloadDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .registers 9
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 1827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1828
    const/4 v1, 0x0

    .line 1830
    .local v1, "rows":I
    :try_start_17
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3c} :catch_5c

    move-result v1

    .line 1834
    :goto_3d
    if-lez v1, :cond_5b

    .line 1835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1837
    :cond_5b
    return v1

    .line 1831
    :catch_5c
    move-exception v0

    .line 1832
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in delete network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2122
    const-string v1, "WifiOffloadService"

    const-string v2, "dump started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const-string v1, "WifiOffloadService"

    const-string v2, "check if the caller has DUMP permission"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_41

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump WifiOffloadService from pid="

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

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    :goto_40
    return-void

    .line 2130
    :cond_41
    const-string v1, "WifiOffloadService"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    :try_start_46
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/server/WifiOffloadService;->dumpAllStoredWifidata(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 2133
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/server/WifiOffloadService;->dumpAppDataUsage(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCurrent app package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous basestation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recent basestation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    invoke-static {p2}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_9d} :catch_a5

    .line 2146
    :goto_9d
    const-string v1, "WifiOffloadService"

    const-string v2, "dump finished"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 2141
    :catch_a5
    move-exception v0

    .line 2143
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d
.end method

.method public getActualState()I
    .registers 5

    .prologue
    const/4 v0, 0x4

    .line 1008
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_26

    .line 1009
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_25
    :goto_25
    return v0

    .line 1012
    :cond_26
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_25

    .line 1013
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_25
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 2241
    const/4 v10, 0x0

    .line 2242
    .local v10, "ssIDs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2244
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    const-string/jumbo v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_45

    move-result-object v8

    .line 2250
    if-eqz v8, :cond_60

    .line 2251
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 2252
    const/4 v7, 0x0

    .line 2253
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2255
    :cond_2b
    const-string/jumbo v0, "wifissid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v7

    .line 2256
    add-int/lit8 v7, v7, 0x1

    .line 2257
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2259
    :cond_40
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    .line 2262
    .end local v7    # "count":I
    :goto_44
    return-object v0

    .line 2245
    :catch_45
    move-exception v9

    .line 2246
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getAvailableSSIDNames for dbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 2247
    goto :goto_44

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_60
    move-object v0, v11

    .line 2262
    goto :goto_44
.end method

.method public getCDMABaseStationID()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 1470
    const/4 v0, -0x1

    .line 1471
    .local v0, "baseStation":I
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v3, v4, :cond_a

    .line 1472
    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 1532
    :goto_9
    return v3

    .line 1474
    :cond_a
    const/4 v2, -0x1

    .line 1476
    .local v2, "phoneType":I
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    .line 1477
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1d

    move v3, v4

    .line 1478
    goto :goto_9

    .line 1499
    :cond_1d
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 1500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1502
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1504
    .local v1, "cellLocation":Landroid/telephony/CellLocation;
    if-nez v1, :cond_4c

    .line 1505
    const-string v3, "CellLocation is NULL, return -1"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1506
    goto :goto_9

    .line 1509
    :cond_4c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_83

    .line 1510
    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_68

    .line 1511
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "cellLocation":Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1512
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v3, :cond_62

    .line 1513
    const-string v3, "CDMA location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1514
    goto :goto_9

    .line 1516
    :cond_62
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 1529
    :cond_68
    :goto_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseStation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v3, v0

    .line 1532
    goto :goto_9

    .line 1518
    .restart local v1    # "cellLocation":Landroid/telephony/CellLocation;
    :cond_83
    if-ne v2, v6, :cond_68

    .line 1519
    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_68

    .line 1520
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1    # "cellLocation":Landroid/telephony/CellLocation;
    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    .line 1521
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_a1

    .line 1522
    :cond_99
    const-string v3, "GSM location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    .line 1523
    goto/16 :goto_9

    .line 1525
    :cond_a1
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_68
.end method

.method public getIntelligentWifiEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 744
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1e

    move v1, v2

    :goto_12
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    .line 747
    const-string/jumbo v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_20

    :goto_1d
    return v2

    :cond_1e
    move v1, v3

    .line 746
    goto :goto_12

    :cond_20
    move v2, v3

    .line 747
    goto :goto_1d
.end method

.method public getLastPkgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .registers 4

    .prologue
    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning the last scanned time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1164
    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1710
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_7

    .line 1727
    :goto_6
    return v7

    .line 1714
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1715
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_51

    .line 1716
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1717
    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1718
    .local v7, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    goto :goto_6

    .line 1723
    .end local v7    # "count":I
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_33
    move-exception v9

    .line 1724
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getNeverTurnonWiFiValue for Cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    .line 1725
    goto :goto_6

    .line 1721
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_4e
    :try_start_4e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_33

    :cond_51
    move v7, v10

    .line 1727
    goto :goto_6
.end method

.method public getStationID()I
    .registers 2

    .prologue
    .line 2335
    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1747
    if-nez p1, :cond_4

    .line 1748
    const/4 v0, 0x0

    .line 1749
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1807
    const/4 v0, 0x0

    return v0
.end method

.method public isDontUseWifiPressed()Z
    .registers 2

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isMobileDataActive()I
    .registers 5

    .prologue
    .line 837
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 838
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_13

    .line 839
    const-string v2, "No Telephony manager"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 840
    const/4 v0, 0x2

    .line 844
    :goto_12
    return v0

    .line 842
    :cond_13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    .line 844
    .local v0, "activity":I
    goto :goto_12
.end method

.method public isNotifyMeChecked()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 757
    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 759
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_8
    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_e} :catch_14

    move-result v4

    if-ne v4, v2, :cond_12

    .line 763
    :goto_11
    return v2

    :cond_12
    move v2, v3

    .line 759
    goto :goto_11

    .line 760
    :catch_14
    move-exception v1

    .line 761
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception happened while checking NotifyMe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    .line 763
    goto :goto_11
.end method

.method public isWifiConnected()Z
    .registers 2

    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1759
    if-nez p1, :cond_4

    .line 1765
    :cond_3
    :goto_3
    return v0

    .line 1762
    :cond_4
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 1765
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public isWifiSeamlessConnect()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 882
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 883
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_12

    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public notifyDialogDisplayed(I)V
    .registers 5
    .param p1, "dialogNum"    # I

    .prologue
    .line 1217
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1218
    :try_start_3
    const-string v0, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1219
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1220
    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1221
    monitor-exit v1

    .line 1222
    return-void

    .line 1221
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public printLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 2112
    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_9

    .line 2113
    const-string v0, "WifiOffloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    :cond_9
    return-void
.end method

.method protected requestStateChange()V
    .registers 4

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_11

    .line 1079
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1081
    :cond_11
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1b

    .line 1082
    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1098
    :cond_1a
    :goto_1a
    return-void

    .line 1087
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v0

    .line 1088
    .local v0, "wifi_state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifi state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1089
    const-string v1, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1094
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1095
    const-string v1, "WifiOffloadService"

    const-string v2, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    goto :goto_1a
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .registers 12
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1020
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_13

    .line 1021
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1023
    :cond_13
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1e

    .line 1024
    const-string v5, "No wifiManager."

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v5, v6

    .line 1058
    :goto_1d
    return v5

    .line 1029
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1030
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1031
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_d7

    .line 1032
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1034
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1035
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "ssid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSID is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1039
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1040
    .local v3, "netId":I
    const-string v5, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enable network for SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 1042
    const-string v5, "WifiOffloadService"

    const-string v8, "enableNetwork passed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 1048
    const-string v5, "WifiOffloadService"

    const-string v6, "Connected "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 1049
    goto/16 :goto_1d

    .line 1044
    :cond_c3
    const-string v5, "WifiOffloadService"

    const-string v7, "failed enableNetwork"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1045
    goto/16 :goto_1d

    .line 1051
    :cond_cd
    const-string v5, "WifiOffloadService"

    const-string v7, "failed to connect"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1052
    goto/16 :goto_1d

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "netId":I
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_d7
    move v5, v6

    .line 1058
    goto/16 :goto_1d
.end method

.method protected requestStateChange(Z)Z
    .registers 5
    .param p1, "desiredState"    # Z

    .prologue
    .line 1063
    const/4 v0, 0x1

    .line 1065
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_12

    .line 1066
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 1068
    :cond_12
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1d

    .line 1069
    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1070
    const/4 v1, 0x0

    .line 1073
    :goto_1c
    return v1

    .line 1072
    :cond_1d
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    .line 1073
    goto :goto_1c
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .registers 13
    .param p1, "stationID"    # I

    .prologue
    .line 1577
    const-string v0, "requestWifiListForStationID()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning performed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1579
    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    .line 1581
    const/4 v7, 0x0

    .line 1582
    .local v7, "availableWiFi":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1584
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_7d

    move-result-object v9

    .line 1589
    :goto_55
    if-eqz v9, :cond_7c

    .line 1590
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1591
    const/4 v8, 0x0

    .line 1592
    .local v8, "count":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 1594
    :cond_64
    const-string/jumbo v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    .line 1595
    add-int/lit8 v8, v8, 0x1

    .line 1596
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1598
    .end local v8    # "count":I
    :cond_79
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1600
    :cond_7c
    return-object v7

    .line 1585
    :catch_7d
    move-exception v10

    .line 1586
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method public resetCurrentTestBaseStationID()V
    .registers 2

    .prologue
    .line 2273
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2274
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2275
    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetNeverTurnOnWifi() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1734
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 1735
    const-string v0, "Timer is reset"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1736
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1737
    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1738
    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "isDontShowChecked"    # Z

    .prologue
    .line 528
    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    .line 529
    const-string v0, "notification came"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_a
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 532
    monitor-exit v1

    .line 533
    return-void

    .line 532
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .registers 3
    .param p1, "stationID"    # I

    .prologue
    .line 2267
    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    .line 2268
    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    .line 2270
    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .registers 2
    .param p1, "isPressed"    # Z

    .prologue
    .line 873
    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    .line 874
    return-void
.end method

.method public setNeverTurnOnWifi()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1741
    const-string v0, "setNeverTurnOnWifi()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1742
    iput-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    .line 1743
    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    .line 1744
    return-void
.end method

.method public setStationID(I)V
    .registers 2
    .param p1, "stationID"    # I

    .prologue
    .line 2329
    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    .line 2330
    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .registers 2
    .param p1, "wifiAuth"    # Ljava/lang/String;

    .prologue
    .line 2320
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    .line 2321
    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .registers 2
    .param p1, "wifiBSSID"    # Ljava/lang/String;

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    .line 2313
    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .registers 2
    .param p1, "wifiSSID"    # Ljava/lang/String;

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    .line 2305
    return-void
.end method

.method public startBackKeyTimer()V
    .registers 5

    .prologue
    .line 1633
    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    .line 1635
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$10;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$10;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1646
    return-void
.end method

.method public startDataActivityTimer()V
    .registers 7

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 611
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 630
    :goto_14
    return-void

    .line 616
    :cond_15
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 617
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_14
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWaitrequired"    # Z

    .prologue
    .line 656
    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    .line 659
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 683
    return-void
.end method

.method public startDontUseWiFiPressedTimer()V
    .registers 5

    .prologue
    .line 688
    const-string v0, "Started timer when user pressed Don\'t use WiFi."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    .line 694
    const-string v0, "persist.offload.dontuse.time"

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    .line 695
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer delay -- >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public stopDataActivityTimer()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 637
    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 644
    :goto_11
    return-void

    .line 642
    :cond_12
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    .line 643
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_11
.end method

.method public storeWiFiDetails()V
    .registers 6

    .prologue
    .line 1422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storeWiFiDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWifiBSSID() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1424
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7e

    .line 1425
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1426
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string/jumbo v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string/jumbo v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1430
    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1431
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_7e} :catch_7f

    .line 1436
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_7e
    :goto_7e
    return-void

    .line 1433
    :catch_7f
    move-exception v1

    .line 1434
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in StoreWiFiDetais() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWaitrequired"    # Z

    .prologue
    const/4 v0, 0x1

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for data activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 728
    if-eqz p2, :cond_21

    .line 729
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v1

    if-nez v1, :cond_20

    .line 730
    const/4 v0, 0x0

    .line 735
    :cond_20
    :goto_20
    return v0

    .line 732
    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_20
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .registers 10
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "stationID"    # I

    .prologue
    .line 2278
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2279
    .local v2, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2281
    :try_start_f
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_35

    .line 2285
    :goto_34
    return-void

    .line 2282
    :catch_35
    move-exception v6

    .line 2283
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api updateBaseStationIDs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public updateDialogStatus(I)V
    .registers 12
    .param p1, "stationID"    # I

    .prologue
    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDialogStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1656
    const/4 v8, 0x1

    .line 1658
    .local v8, "resetDialogCount":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1659
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1660
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1664
    const/4 v9, 0x0

    .line 1666
    .local v9, "rows":I
    :try_start_34
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1667
    if-lez v9, :cond_75

    .line 1668
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :goto_74
    return-void

    .line 1670
    :cond_75
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1671
    .local v6, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1672
    const-string/jumbo v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string/jumbo v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1675
    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1676
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_b4} :catch_b5

    goto :goto_74

    .line 1678
    .end local v6    # "cvalues":Landroid/content/ContentValues;
    :catch_b5
    move-exception v7

    .line 1679
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateDialogStatus for dbHelper "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74
.end method

.method public updateNeverTurnOnWiFi(I)V
    .registers 11
    .param p1, "value"    # I

    .prologue
    .line 1685
    const-string/jumbo v0, "updateNeverTurnOnWiFi to 1"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1686
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1687
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1689
    const/4 v8, 0x0

    .line 1691
    .local v8, "rows":I
    :try_start_15
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1692
    if-lez v8, :cond_43

    .line 1693
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :goto_42
    return-void

    .line 1695
    :cond_43
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1696
    .local v6, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1697
    const-string/jumbo v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string/jumbo v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1700
    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1701
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_80} :catch_81

    goto :goto_42

    .line 1703
    .end local v6    # "cvalues":Landroid/content/ContentValues;
    :catch_81
    move-exception v7

    .line 1704
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateNeverTurnOnWiFi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public wasWiFiReallyOn()Z
    .registers 2

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isWaitrequired"    # Z

    .prologue
    .line 289
    monitor-enter p0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main function called "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 291
    iget v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    .line 293
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    .line 295
    .local v6, "intel":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 297
    if-nez v6, :cond_4b

    .line 298
    const-string v9, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_29e

    .line 299
    const/4 v9, 0x0

    .line 474
    :goto_49
    monitor-exit p0

    return v9

    .line 303
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 304
    const-string v9, "WiFi is already connected; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 305
    const/4 v9, 0x0

    goto :goto_49

    .line 307
    :cond_58
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v9

    if-nez v9, :cond_64

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 308
    :cond_64
    const-string v9, "Airplane plane OR hotspot return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 309
    const/4 v9, 0x0

    goto :goto_49

    .line 314
    :cond_6b
    const/4 v2, 0x0

    .line 315
    .local v2, "data_counter":I
    if-eqz p2, :cond_94

    move v3, v2

    .line 316
    .end local v2    # "data_counter":I
    .local v3, "data_counter":I
    :goto_6f
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v9

    if-eqz v9, :cond_93

    .line 319
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "data_counter":I
    .restart local v2    # "data_counter":I
    const/16 v9, 0x32

    if-le v3, v9, :cond_82

    .line 320
    const-string v9, "returning since data activity is going on for more than 10 Secs"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_29e

    .line 321
    const/4 v9, 0x0

    goto :goto_49

    .line 325
    :cond_82
    const-wide/16 v9, 0xc8

    :try_start_84
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_89
    .catchall {:try_start_84 .. :try_end_87} :catchall_29e

    move v3, v2

    .line 328
    .end local v2    # "data_counter":I
    .restart local v3    # "data_counter":I
    goto :goto_6f

    .line 326
    .end local v3    # "data_counter":I
    .restart local v2    # "data_counter":I
    :catch_89
    move-exception v4

    .line 327
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 328
    .end local v2    # "data_counter":I
    .restart local v3    # "data_counter":I
    goto :goto_6f

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_93
    move v2, v3

    .line 332
    .end local v3    # "data_counter":I
    .restart local v2    # "data_counter":I
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    .line 335
    .local v0, "baseStation":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n--------------------------------------------------------\nWifi Enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Notify Me = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Base Station = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Timer running = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Timer Duration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Auto-Connect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Data Threshold exeeds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v9

    if-eqz v9, :cond_14c

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_14c

    .line 347
    const-string v9, "mDontUseWifiTimerIsRunning is true dont offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 348
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 351
    :cond_14c
    const/4 v8, 0x0

    .line 352
    .local v8, "nowWaitForConnection":Z
    const/4 v9, -0x1

    if-eq v0, v9, :cond_152

    if-nez v0, :cond_174

    .line 353
    :cond_152
    const-string v9, "WifiOffloadService"

    const-string v10, "No Offloading since Base station ID returned -1 or 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_171

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-eqz v9, :cond_171

    if-nez p2, :cond_171

    .line 356
    const-string v9, "Base Station is -1 but wifi is ON show the dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    .line 359
    :cond_171
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 361
    :cond_174
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "networkList":[Ljava/lang/String;
    if-eqz v7, :cond_189

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c9

    array-length v9, v7

    const/4 v10, 0x1

    if-gt v9, v10, :cond_1c9

    .line 364
    :cond_189
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 366
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_19c

    .line 367
    const-string v9, "No networks and wifi is off so don\'t offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 368
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 385
    :cond_19c
    if-eqz p2, :cond_1a6

    .line 386
    const-string v9, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 387
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 390
    :cond_1a6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNotifyMeChecked :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-nez v9, :cond_20f

    .line 393
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 396
    :cond_1c9
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_1f2

    .line 398
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d2
    array-length v9, v7

    if-ge v5, v9, :cond_20f

    .line 399
    const-string v9, "requestStateChange : status true"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 400
    if-eqz p2, :cond_1df

    .line 402
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 405
    :cond_1df
    aget-object v9, v7, v5

    invoke-direct {p0, v9}, Lcom/android/server/WifiOffloadService;->checkSignalStrength(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f0

    .line 406
    aget-object v9, v7, v5

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v8

    .line 398
    :goto_1ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d2

    .line 408
    :cond_1f0
    const/4 v8, 0x0

    goto :goto_1ed

    .line 413
    .end local v5    # "i":I
    :cond_1f2
    if-eqz p2, :cond_1f7

    .line 416
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 418
    :cond_1f7
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v9

    if-eqz v9, :cond_239

    .line 419
    const-string v9, "WifiOffloadService"

    const-string v10, "Connect WiFi seamlessly"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    .line 421
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    .line 422
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v8

    .line 434
    :cond_20f
    const/4 v1, 0x0

    .line 435
    .local v1, "counter":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange returned nowWaitForConnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 437
    :cond_226
    :goto_226
    if-eqz v8, :cond_24c

    const/4 v9, 0x3

    if-ge v1, v9, :cond_24c

    .line 438
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v9, v10, :cond_23c

    .line 439
    const-string v9, "Association completed"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 440
    const/4 v9, 0x1

    goto/16 :goto_49

    .line 427
    .end local v1    # "counter":I
    :cond_239
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 441
    .restart local v1    # "counter":I
    :cond_23c
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    if-eqz v9, :cond_28d

    .line 442
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    .line 443
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-nez v9, :cond_226

    .line 444
    const-string v9, "Unable to connect to known network since not in range, show AP list dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 457
    :cond_24c
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v9, :cond_2a1

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConnect: mSeamlessConnectWhileConnecting  is true "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 459
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_28a

    .line 460
    const-string v9, "AutoConnect unable to CONNNECT : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 461
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const-wide/32 v11, 0x493e0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_28a
    .catchall {:try_start_8a .. :try_end_28a} :catchall_29e

    .line 464
    :cond_28a
    const/4 v9, 0x0

    goto/16 :goto_49

    .line 449
    :cond_28d
    const-wide/16 v9, 0xc8

    :try_start_28f
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_292} :catch_295
    .catchall {:try_start_28f .. :try_end_292} :catchall_29e

    .line 453
    :goto_292
    add-int/lit8 v1, v1, 0x1

    goto :goto_226

    .line 450
    :catch_295
    move-exception v4

    .line 451
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_296
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29d
    .catchall {:try_start_296 .. :try_end_29d} :catchall_29e

    goto :goto_292

    .line 289
    .end local v0    # "baseStation":I
    .end local v1    # "counter":I
    .end local v2    # "data_counter":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "intel":Z
    .end local v7    # "networkList":[Ljava/lang/String;
    .end local v8    # "nowWaitForConnection":Z
    :catchall_29e
    move-exception v9

    monitor-exit p0

    throw v9

    .line 467
    .restart local v0    # "baseStation":I
    .restart local v1    # "counter":I
    .restart local v2    # "data_counter":I
    .restart local v6    # "intel":Z
    .restart local v7    # "networkList":[Ljava/lang/String;
    .restart local v8    # "nowWaitForConnection":Z
    :cond_2a1
    :try_start_2a1
    const-string v9, "enableNetwork API failed based on location, try to call standard API"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 469
    if-nez p2, :cond_2c7

    .line 470
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWaitrequired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v9

    if-nez v9, :cond_2c7

    .line 472
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()V
    :try_end_2c7
    .catchall {:try_start_2a1 .. :try_end_2c7} :catchall_29e

    .line 474
    :cond_2c7
    const/4 v9, 0x1

    goto/16 :goto_49
.end method
