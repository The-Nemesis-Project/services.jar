.class public final Lcom/samsung/smartbonding/SmartBondingService;
.super Lcom/samsung/smartbonding/ISmartBondingService$Stub;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;,
        Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    }
.end annotation


# static fields
.field public static final CAUSE_CONNECTION_FAILURE:I = 0x3

.field public static final CAUSE_DOWNLOAD_CANCEL:I = 0x1

.field public static final CAUSE_LTE_ABNORMAL_PERFORMANCE:I = -0x3

.field public static final CAUSE_NO_ERROR:I = 0x0

.field public static final CAUSE_SERVER_NOT_SUPPORTED:I = 0x2

.field public static final CAUSE_USE_ONLY_LTE_INTERFACE:I = -0x2

.field public static final CAUSE_USE_ONLY_WIFI_INTERFACE:I = -0x1

.field public static final CAUSE_WIFI_ABNORMAL_PERFORMANCE:I = -0x4

.field private static CscFeatureConfigSmartBonding:Ljava/lang/String; = null

.field private static DBG:Z = false

.field private static final EVENT_BOOT_COMPLETED:I = 0xc

.field private static final EVENT_CREATE_LOG_FOLDER:I = 0x6

.field private static final EVENT_CREATE_TRAFFIC_TOAST:I = 0xd

.field private static final EVENT_ENABLE_SB:I = 0x1

.field private static final EVENT_ENABLE_SB_INTERFACES:I = 0x2

.field private static final EVENT_GET_HOST_ADDRESS:I = 0x9

.field private static final EVENT_HIDE_TRAFFIC_TOAST:I = 0xe

.field private static final EVENT_MOBILE_CONNECTION_RENEW:I = 0x3

.field private static final EVENT_MOBILE_CONNECTION_TURN_OFF_WITH_DELAYED:I = 0xb

.field private static final EVENT_POLL_CURRENT_ACTIVITY:I = 0xa

.field private static final EVENT_SHOW_TOAST_MESSAGE:I = 0x4

.field private static final EVENT_UPDATE_NETWORK_ENABLED:I = 0x8

.field private static final EVENT_UPDATE_SB_STATE:I = 0x7

.field private static final EVENT_UPDATE_TRAFFIC_NOTIFICATION:I = 0x5

.field private static final INT_TOTAL:Ljava/lang/Integer;

.field private static IsDCM:Z = false

.field private static IsKOR:Z = false

.field private static final MONITOR_TYPE_BAR:I = 0x2

.field private static final MONITOR_TYPE_SPEED:I = 0x0

.field private static final MONITOR_TYPE_TIMER:I = 0x1

.field public static final NOTIFICATION_THRESHOLD_SPEED:I = 0x2800

.field private static final SB_BOTH:I = 0x2

.field public static final SB_BOTH_CONNECTED:I = 0x3

.field public static final SB_BOTH_DISCONNECTED:I = 0x0

.field public static final SB_HIDE_DIALOG:Ljava/lang/String; = "android.intent.action.SB_HIDE_DIALOG"

.field public static final SB_INTENT_START:Ljava/lang/String; = "android.intent.action.START_NETWORK_BOOSTER"

.field public static final SB_INTENT_STOP:Ljava/lang/String; = "android.intent.action.STOP_NETWORK_BOOSTER"

.field public static final SB_INVALID:I = -0x1

.field private static final SB_IPV4_TYPE:I = 0x0

.field private static final SB_IPV6_TYPE:I = 0x1

.field private static final SB_KEY_LOG_ENABLED:Ljava/lang/String; = "sb.key.log_enabled"

.field private static final SB_MOBILE:I = 0x1

.field protected static final SB_PREFERENCES_NAME:Ljava/lang/String; = "sb.preferences_name"

.field public static final SB_RADIO_CONNECTED:I = 0x2

.field public static final SB_SHOW_DIALOG:Ljava/lang/String; = "android.intent.action.SB_SHOW_DIALOG"

.field private static final SB_STATUS_ENABLE:I = 0x2

.field private static final SB_STATUS_IDLE:I = 0x1

.field private static final SB_STATUS_NONE:I = 0x0

.field private static final SB_STATUS_WORKING:I = 0x3

.field public static final SB_USAGE_CANCEL:I = 0x3

.field public static final SB_USAGE_NO:I = 0x2

.field public static final SB_USAGE_NONE:I = 0x0

.field public static final SB_USAGE_NOT_SUPPORTED:I = 0x4

.field public static final SB_USAGE_YES:I = 0x1

.field private static final SB_WIFI:I = 0x0

.field public static final SB_WIFI_CONNECTED:I = 0x1

.field static final SHIP_BUILD:Z

.field public static final SMARTBONDING_SERVICE:Ljava/lang/String; = "sb_service"

.field private static final TAG:Ljava/lang/String; = "SmartBondingService"

.field private static TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String; = null

.field private static final TIME_MOBILE_CONNECTION_RENEW:I = 0x9c40

.field private static final TIME_MOBILE_CONNECTION_TURN_OFF_DELAY:I = 0xbb8

.field private static final TIME_POLL_CURRENT_ACTIVITY:I = 0x2710

.field private static final TIME_TRAFFIC_UPDATE:I = 0x3e8

.field public static final TOAST_ACTIVATE_SB:I = 0x6

.field public static final TOAST_DOWNLOAD_MOBILE_ONLY:I = 0xc

.field public static final TOAST_DOWNLOAD_WIFI_ONLY:I = 0xb

.field public static final TOAST_MOBILE_SLOW:I = 0xa

.field public static final TOAST_OVERHEAT_MOBILE_DOWNLOAD:I = 0x5

.field public static final TOAST_OVERHEAT_WIFI_DOWNLOAD:I = 0x4

.field public static final TOAST_SERVER_ERROR_MOBILE_DOWNLOAD:I = 0x3

.field public static final TOAST_SERVER_ERROR_WIFI_DOWNLOAD:I = 0x2

.field public static final TOAST_START_SB:I = 0x1

.field public static final TOAST_TURN_ON_MOBILE:I = 0x8

.field public static final TOAST_TURN_ON_WIFI:I = 0x7

.field public static final TOAST_WARNING_LTE:I = 0xd

.field public static final TOAST_WARNING_WIFI:I = 0xe

.field public static final TOAST_WIFI_SLOW:I = 0x9

.field private static VDBG:Z


# instance fields
.field private final BEBUG_LEVEL_FILE:Ljava/lang/String;

.field private final BEBUG_LEVEL_FILE2:Ljava/lang/String;

.field private final MAX_TOAST_COUNT:I

.field private final MAX_TRAFFIC_SPEED_MBPS:I

.field private mBlockedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBmBar:Landroid/graphics/Bitmap;

.field private mBmBarBg:Landroid/graphics/Bitmap;

.field private mBoosterRemainedContentSize:J

.field private mCm:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurBoosterRemainTime:I

.field private mCurBoosterSpeed:I

.field private mCurMobileBytes:J

.field private mCurMobileRemainTime:I

.field private mCurMobileSpeed:I

.field private mCurSpeedBoosterImageLevel:I

.field private mCurSpeedMobileImageLevel:I

.field private mCurSpeedWifiImageLevel:I

.field private mCurTimerBoosterImageLevel:I

.field private mCurTimerMobileImageLevel:I

.field private mCurTimerWifiImageLevel:I

.field private mCurTotalBoosterBytes:J

.field private mCurTotalMobileBytes:J

.field private mCurTotalTrafficTime:J

.field private mCurTotalWifiBytes:J

.field private mCurTrafficTime:J

.field private mCurWifiBytes:J

.field private mCurWifiRemainTime:I

.field private mCurWifiSpeed:I

.field private mCurrentActivity:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mCurrentWifiMacAddr:Ljava/lang/String;

.field private mDisableBySIOP:Z

.field private mFasterInterface:I

.field private mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

.field private mHttpLogEnabled:Z

.field private mIsConnectMobileCalled:Z

.field private mIsNoneSettingMode:Z

.field private mMobileBarBitmap:Landroid/graphics/Bitmap;

.field private mMobileConnected:Z

.field private mMobileLp:Landroid/net/LinkProperties;

.field private mMobileRemainedContentSize:J

.field private mNeedShowTrafficToast:Z

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkEnabled:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreMobileBytes:J

.field private mPreSBSetting:Z

.field private mPreTrafficTime:J

.field private mPreWifiBytes:J

.field private mSBDataStatistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation
.end field

.field private mSBInterfacesEnabled:Z

.field private mSBNotification:Landroid/app/Notification;

.field private mSBState:I

.field private mSBToast:Landroid/widget/Toast;

.field private mSBUrlStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSBUsageStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

.field private mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

.field private mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

.field private mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

.field private mSpeedRatio:D

.field private mStartTrafficMonitor:Z

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mToastClickListener:Landroid/view/View$OnClickListener;

.field private mToastLayout:Landroid/view/LayoutInflater;

.field private mTotalContentSize:J

.field private mTrafficCount:I

.field private mTrafficMonitorType:I

.field private mWhiteListPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiBarBitmap:Landroid/graphics/Bitmap;

.field private mWifiConnected:Z

.field private mWifiLp:Landroid/net/LinkProperties;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRemainedContentSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 128
    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    .line 129
    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    .line 170
    const/16 v0, -0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    .line 290
    const-string v0, "CscFeature_RIL_ConfigSmartBonding"

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sget-object v1, Lcom/samsung/smartbonding/SmartBondingService;->TAG_CSCFEATURE_CONFIG_SMARTBONDING:Ljava/lang/String;

    const-string v2, "NA"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    .line 292
    const-string v0, "DCM"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    .line 293
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->IsKOR:Z

    .line 295
    const-string/jumbo v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    return-void
.end method

.method protected constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 300
    invoke-direct {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;-><init>()V

    .line 171
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 172
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 176
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    .line 177
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    .line 178
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    .line 179
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    .line 180
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    .line 181
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    .line 182
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    .line 183
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    .line 184
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 185
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    .line 188
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    .line 190
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    .line 191
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    .line 193
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    .line 194
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 195
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    .line 200
    iput-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 201
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 202
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 203
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 204
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 205
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 206
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 207
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 208
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 209
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 210
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 211
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 212
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 213
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 214
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 215
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 217
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 218
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 219
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 220
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 221
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 222
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 223
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 224
    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 226
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 227
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 228
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 229
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 232
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 233
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 234
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 235
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 240
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TOAST_COUNT:I

    .line 241
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_MBPS:I

    .line 243
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    .line 248
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    .line 296
    const-string v0, "/sys/devices/virtual/misc/level/control"

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE:Ljava/lang/String;

    .line 297
    const-string v0, "/mnt/.lfs/debug_level.inf"

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE2:Ljava/lang/String;

    .line 2513
    new-instance v0, Lcom/samsung/smartbonding/SmartBondingService$1;

    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/SmartBondingService$1;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    .line 3213
    new-instance v0, Lcom/samsung/smartbonding/SmartBondingService$2;

    invoke-direct {v0, p0}, Lcom/samsung/smartbonding/SmartBondingService$2;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;Landroid/os/INetworkManagementService;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connManager"    # Landroid/net/IConnectivityManager;
    .param p3, "netManager"    # Landroid/os/INetworkManagementService;

    .prologue
    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 302
    invoke-direct {p0}, Lcom/samsung/smartbonding/ISmartBondingService$Stub;-><init>()V

    .line 171
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 172
    const-wide/high16 v3, 0x3ff0000000000000L

    iput-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 176
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    .line 177
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    .line 178
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    .line 179
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    .line 180
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    .line 181
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    .line 182
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    .line 183
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    .line 184
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 185
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    .line 186
    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;

    .line 187
    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    .line 188
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    .line 190
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    .line 191
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    .line 193
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    .line 194
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 195
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    .line 200
    iput-boolean v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 201
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 202
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 203
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 204
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 205
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 206
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 207
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 208
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 209
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 210
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 211
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 212
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 213
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 214
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 215
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 217
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 218
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 219
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 220
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 221
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 222
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 223
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 224
    iput-wide v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 226
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 227
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 228
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 229
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 230
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 232
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 233
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 234
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 235
    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 240
    const/4 v3, 0x6

    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TOAST_COUNT:I

    .line 241
    const/16 v3, 0xc8

    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->MAX_TRAFFIC_SPEED_MBPS:I

    .line 243
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    .line 248
    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    .line 296
    const-string v3, "/sys/devices/virtual/misc/level/control"

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE:Ljava/lang/String;

    .line 297
    const-string v3, "/mnt/.lfs/debug_level.inf"

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->BEBUG_LEVEL_FILE2:Ljava/lang/String;

    .line 2513
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$1;

    invoke-direct {v3, p0}, Lcom/samsung/smartbonding/SmartBondingService$1;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    .line 3213
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$2;

    invoke-direct {v3, p0}, Lcom/samsung/smartbonding/SmartBondingService$2;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 303
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_a2

    const-string v3, "SmartBondingService starting up"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 305
    :cond_a2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "SmartBondingService"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 307
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    .line 308
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x1030128

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    .line 309
    iput-object p2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    .line 310
    iput-object p3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetd:Landroid/os/INetworkManagementService;

    .line 312
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 313
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    .line 314
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    .line 315
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 316
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    const/4 v5, 0x4

    new-array v5, v5, [J

    fill-array-data v5, :array_1cc

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    .line 318
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    .line 320
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    .line 322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    .line 323
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initBlockedPackages()V

    .line 325
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v1, "sbFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v3, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    const-string v3, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;

    invoke-direct {v4, p0}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingReceiver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    .line 337
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingSettingObserver;->register(Landroid/content/Context;)V

    .line 339
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    .line 340
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingMobileSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingMobileSettingObserver;->register(Landroid/content/Context;)V

    .line 342
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    .line 343
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingToastShowSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingToastShowSettingObserver;->register(Landroid/content/Context;)V

    .line 345
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-direct {v3, p0, v4}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;-><init>(Lcom/samsung/smartbonding/SmartBondingService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    .line 346
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSmartBondingAirplaneModeSettingObserver:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;

    invoke-virtual {v3, p1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingAirplaneModeSettingObserver;->register(Landroid/content/Context;)V

    .line 348
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 350
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_1a6

    .line 351
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 352
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1a6

    .line 353
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;

    .line 357
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1a6
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    .line 358
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V

    .line 360
    const-string v3, "sb_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1bc

    .line 361
    const-string v3, "sb_service"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 364
    :cond_1bc
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->loadPreference()V

    .line 367
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->SHIP_BUILD:Z

    if-eqz v3, :cond_1c5

    .line 368
    sput-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    .line 370
    :cond_1c5
    const-string v3, "SmartBondingService: start done"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 371
    return-void

    .line 316
    nop

    :array_1cc
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/smartbonding/SmartBondingService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedBarRes()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearSpeedBarRes()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsNoneSettingMode:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/smartbonding/SmartBondingService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSiopToastCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkRemovedProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSBWorkingCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/smartbonding/SmartBondingService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/smartbonding/SmartBondingService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBState:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkTrafficMonitorCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->startTrafficMonitor()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStartIntent()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkEnableToastCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->stopTrafficMonitor()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->sendSBStopIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/smartbonding/SmartBondingService;)Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/smartbonding/SmartBondingService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->showWarningToast(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/smartbonding/SmartBondingService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/smartbonding/SmartBondingService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedToast()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showTimerToast()V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarToast()V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->hideTrafficMonitorToast()V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTrafficMonitor()V

    return-void
.end method

.method static synthetic access$3902(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getNetworkEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getCurrentActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/samsung/smartbonding/SmartBondingService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4502(Lcom/samsung/smartbonding/SmartBondingService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$4600()Z
    .registers 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/samsung/smartbonding/SmartBondingService;I)Landroid/net/LinkProperties;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/smartbonding/SmartBondingService;II)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceDirect(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/samsung/smartbonding/SmartBondingService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentWifiMacAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/samsung/smartbonding/SmartBondingService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initSpeedRatio()V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileConnected:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/samsung/smartbonding/SmartBondingService;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreSBSetting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/smartbonding/SmartBondingService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/smartbonding/SmartBondingService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/smartbonding/SmartBondingService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->checkSBEnableCondition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/smartbonding/SmartBondingService;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/smartbonding/SmartBondingService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInterfacesEnabled(Z)I

    move-result v0

    return v0
.end method

.method private buildCheckSBUsageIntent(JLjava/lang/String;J)Landroid/content/Intent;
    .registers 8
    .param p1, "threadID"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 2268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_SHOW_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2269
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "threadID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2270
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2271
    const-string v1, "fileSize"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2272
    return-object v0
.end method

.method private buildStopSBUsageIntent(J)Landroid/content/Intent;
    .registers 5
    .param p1, "threadID"    # J

    .prologue
    .line 2276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SB_HIDE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2277
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "threadID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2278
    return-object v0
.end method

.method private checkEnableToastCondition()Z
    .registers 8

    .prologue
    .line 1350
    const/4 v1, 0x0

    .line 1351
    .local v1, "isShowToast":Z
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1352
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v3

    if-nez v3, :cond_37

    .line 1353
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1355
    .local v2, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-boolean v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_38

    .line 1356
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_33

    const-string v3, "checkStartToastCondition : mStartWithPopup is exist"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1357
    :cond_33
    const/4 v1, 0x0

    .line 1358
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    .line 1367
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_37
    return v1

    .line 1361
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_38
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    iget-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1362
    const/4 v1, 0x1

    goto :goto_19
.end method

.method private checkRemovedProcess()Z
    .registers 7

    .prologue
    .line 2111
    const/4 v2, 0x0

    .line 2113
    .local v2, "removed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .local v1, "mRemoveSBUsageStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;>;"
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2116
    .local v3, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isRunningProcess(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2117
    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v4, "com.google.android.youtube"

    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isRunningProcess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2118
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_39

    const-string v4, "checkRemovedProcess : youtube process is running so that don\'t need to remove list"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2119
    :cond_39
    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentActivity:Ljava/lang/String;

    goto :goto_c

    .line 2122
    :cond_3e
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_60

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRemovedProcess : process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped. add it in remove usage list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2123
    :cond_60
    const/4 v2, 0x1

    .line 2124
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2128
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_65
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2129
    .restart local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_69

    .line 2132
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_7b
    if-eqz v2, :cond_87

    .line 2133
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_86

    const-string v4, "checkRemovedProcess : some process are remvoed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2137
    :cond_86
    :goto_86
    return v2

    .line 2135
    :cond_87
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_86

    const-string v4, "checkRemovedProcess : no process is remvoed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_86
.end method

.method private checkSBEnableCondition()Z
    .registers 2

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 874
    const/4 v0, 0x1

    .line 883
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private checkSBWorkingCondition()Z
    .registers 3

    .prologue
    .line 887
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 888
    const/4 v0, 0x1

    .line 897
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private checkSiopToastCondition()Z
    .registers 8

    .prologue
    .line 1335
    const/4 v1, 0x0

    .line 1336
    .local v1, "isShowToast":Z
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1337
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBUsageEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mDisableBySIOP:Z

    if-eqz v3, :cond_35

    .line 1338
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1339
    .local v2, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartRange:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    iget-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1340
    const/4 v1, 0x1

    goto :goto_17

    .line 1345
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_35
    return v1
.end method

.method private checkTrafficMonitorCondition()Z
    .registers 4

    .prologue
    .line 2505
    const/4 v0, 0x1

    .line 2507
    .local v0, "result":Z
    const-string v1, "persist.sb.hide.trafficmonitor"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2508
    const/4 v0, 0x0

    .line 2510
    :cond_b
    return v0
.end method

.method private clearNotification()V
    .registers 4

    .prologue
    .line 3137
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_9

    const-string v1, "clearNotification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3138
    :cond_9
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3140
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v1, :cond_23

    .line 3141
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 3144
    :cond_23
    return-void
.end method

.method private clearSpeedBarRes()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2779
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 2781
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 2783
    :cond_7
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 2785
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 2787
    :cond_d
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 2789
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 2791
    :cond_13
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 2793
    iput-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 2795
    :cond_19
    return-void
.end method

.method private clearToast()V
    .registers 2

    .prologue
    .line 2889
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "clearToast"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2890
    :cond_9
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_12

    .line 2891
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2893
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2894
    return-void
.end method

.method private convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1371
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1372
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getGooglePlayContentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1374
    .end local p1    # "url":Ljava/lang/String;
    :cond_a
    return-object p1
.end method

.method private convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1379
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getGooglePlayContentUrlWithParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1381
    .end local p1    # "url":Ljava/lang/String;
    :cond_a
    return-object p1
.end method

.method private convertSBInterfaceState(ZZ)I
    .registers 4
    .param p1, "mobile"    # Z
    .param p2, "wifi"    # Z

    .prologue
    .line 1038
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 1039
    const/4 v0, 0x3

    .line 1045
    :goto_5
    return v0

    .line 1040
    :cond_6
    if-eqz p1, :cond_c

    if-nez p2, :cond_c

    .line 1041
    const/4 v0, 0x2

    goto :goto_5

    .line 1042
    :cond_c
    if-nez p1, :cond_12

    if-eqz p2, :cond_12

    .line 1043
    const/4 v0, 0x1

    goto :goto_5

    .line 1045
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 9
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2232
    new-array v2, v3, [Ljava/net/InetAddress;

    .line 2234
    .local v2, "ret":[Ljava/net/InetAddress;
    :try_start_3
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_2b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllByName : start to get IP for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2235
    :cond_2b
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_2e
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_2e} :catch_8c

    move-result-object v2

    .line 2240
    :cond_2f
    :goto_2f
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_63

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish to get IP for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_a8

    :goto_58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2242
    :cond_63
    if-eqz v2, :cond_aa

    .line 2243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_66
    array-length v3, v2

    if-ge v1, v3, :cond_aa

    .line 2244
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_89

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllByName : dst address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2243
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 2237
    .end local v1    # "i":I
    :catch_8c
    move-exception v0

    .line 2238
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllByName : UnknownHostException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_2f

    .line 2240
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_a8
    array-length v3, v2

    goto :goto_58

    .line 2247
    :cond_aa
    return-object v2
.end method

.method private getApplicationName(ILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "pid"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1879
    const-string v2, ""

    .line 1881
    .local v2, "appName":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1882
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1883
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 1885
    .local v8, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1886
    .local v7, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v9, v9

    if-eqz v9, :cond_1d

    .line 1891
    invoke-direct {p0, p2}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_91

    const-string v9, "com.android.vending"

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 1893
    :try_start_40
    const-string v9, "com.android.vending"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1894
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_51} :catch_76

    .line 1921
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_51
    :goto_51
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v9, :cond_75

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : calling application name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1922
    :cond_75
    return-object v2

    .line 1896
    .restart local v7    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_76
    move-exception v3

    .line 1897
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_91

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1901
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_91
    invoke-direct {p0, p2}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d0

    const-string v9, "com.google.android.youtube"

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 1903
    :try_start_a3
    const-string v9, "com.google.android.youtube"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1904
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_b4} :catch_b5

    goto :goto_51

    .line 1906
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_b5
    move-exception v3

    .line 1907
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_d0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1911
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d0
    if-eqz p1, :cond_1d

    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, p1, :cond_1d

    .line 1913
    :try_start_d6
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1914
    .restart local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "appName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_e8} :catch_ea

    .restart local v2    # "appName":Ljava/lang/String;
    goto/16 :goto_1d

    .line 1915
    .end local v2    # "appName":Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_ea
    move-exception v3

    .line 1916
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v9, :cond_105

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationName : error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1917
    :cond_105
    const-string v2, ""

    .restart local v2    # "appName":Ljava/lang/String;
    goto/16 :goto_1d
.end method

.method private getBarBitmap(II)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "speed"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 2798
    const/4 v6, 0x0

    .line 2799
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2801
    .local v7, "drawable":Landroid/graphics/drawable/GradientDrawable;
    if-nez p2, :cond_26

    .line 2802
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 2803
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 2809
    .restart local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :goto_17
    if-eqz v6, :cond_1b

    if-nez v7, :cond_38

    .line 2810
    :cond_1b
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_24

    const-string v1, "getBarBitmap : bitmap or drawable is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2811
    :cond_24
    const/4 v6, 0x0

    .line 2837
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :goto_25
    return-object v6

    .line 2805
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_26
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 2806
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .end local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .restart local v7    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    goto :goto_17

    .line 2815
    :cond_38
    const/16 v2, 0xc8

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2816
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    int-to-double v2, v2

    const-wide/high16 v10, 0x4069000000000000L

    div-double/2addr v2, v10

    double-to-int v9, v2

    .line 2818
    .local v9, "width":I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2819
    .local v0, "tempCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2820
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2821
    .local v5, "p":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2822
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2823
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2825
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-direct {v8, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2826
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2827
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2828
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2829
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 2831
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2832
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 2833
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v12, v12, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2835
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_25
.end method

.method private getCurrentActivity()Ljava/lang/String;
    .registers 8

    .prologue
    .line 2056
    const-string v2, ""

    .line 2058
    .local v2, "result":Ljava/lang/String;
    :try_start_2
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2059
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_40

    .line 2060
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2061
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2062
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-eqz v4, :cond_40

    .line 2063
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 2064
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_3c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentActivityName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2065
    :cond_3c
    if-nez v2, :cond_40

    .line 2066
    const-string v2, ""
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_41

    .line 2073
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_40
    :goto_40
    return-object v2

    .line 2070
    :catch_41
    move-exception v1

    .line 2071
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception to get activity name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_40
.end method

.method private getGooglePlayContentUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1426
    move-object v0, p1

    .line 1427
    .local v0, "googlePlayUrl":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1428
    const-string v3, "\\?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1430
    .local v2, "urls":[Ljava/lang/String;
    aget-object v3, v2, v5

    if-eqz v3, :cond_50

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 1431
    aget-object v3, v2, v5

    const-string v4, "/o"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    aget-object v3, v2, v5

    const-string v4, "/p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1433
    :cond_2e
    aget-object v3, v2, v5

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1435
    :cond_3e
    aget-object v3, v2, v5

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1436
    .local v1, "posOfAppNumber":I
    aget-object v3, v2, v5

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1438
    aget-object v0, v2, v5

    .line 1442
    .end local v1    # "posOfAppNumber":I
    .end local v2    # "urls":[Ljava/lang/String;
    :cond_50
    return-object v0
.end method

.method private getGooglePlayContentUrlWithParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1446
    move-object v0, p1

    .line 1447
    .local v0, "googlePlayUrl":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1448
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "urls":[Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_17

    const-string v2, "getGooglePlayContentUrlWithParam : google play store contents"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1450
    :cond_17
    aget-object v2, v1, v3

    if-eqz v2, :cond_25

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    .line 1451
    aget-object v0, v1, v3

    .line 1454
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_25
    return-object v0
.end method

.method private getLinkProperties(I)Landroid/net/LinkProperties;
    .registers 11
    .param p1, "netType"    # I

    .prologue
    const/4 v8, 0x1

    .line 1084
    const/4 v1, 0x0

    .line 1086
    .local v1, "lp":Landroid/net/LinkProperties;
    :try_start_2
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLinkProperties "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_3d

    const-string v6, "WIFI"

    :goto_15
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1087
    :cond_20
    if-nez p1, :cond_48

    .line 1088
    const/4 v4, 0x0

    .line 1089
    .local v4, "wifiConnected":Z
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1090
    .local v5, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_30

    .line 1091
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 1093
    :cond_30
    if-nez v4, :cond_40

    .line 1094
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_3b

    const-string v6, "getLinkProperties : wifi is not connected"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .end local v4    # "wifiConnected":Z
    .end local v5    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_3b
    :goto_3b
    move-object v6, v1

    .line 1114
    :goto_3c
    return-object v6

    .line 1086
    :cond_3d
    const-string v6, "MOBILE"

    goto :goto_15

    .line 1096
    .restart local v4    # "wifiConnected":Z
    .restart local v5    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_40
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    goto :goto_3b

    .line 1099
    .end local v4    # "wifiConnected":Z
    .end local v5    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_48
    if-ne p1, v8, :cond_3b

    .line 1100
    const/4 v2, 0x0

    .line 1101
    .local v2, "mobileConnected":Z
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1102
    .local v3, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_58

    .line 1103
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 1105
    :cond_58
    if-nez v2, :cond_6a

    .line 1106
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_3b

    const-string v6, "getLinkProperties : mobile is not connected"

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_63} :catch_64

    goto :goto_3b

    .line 1112
    .end local v2    # "mobileConnected":Z
    .end local v3    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :catch_64
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    .line 1114
    const/4 v6, 0x0

    goto :goto_3c

    .line 1108
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "mobileConnected":Z
    .restart local v3    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_6a
    :try_start_6a
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_70} :catch_64

    move-result-object v1

    goto :goto_3b
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;)Ljava/lang/String;
    .registers 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 2301
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalInetAddress(Landroid/net/LinkProperties;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2302
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 2303
    const/4 v1, 0x0

    .line 2305
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;
    .registers 5
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "preferIpType"    # I

    .prologue
    .line 2292
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalInetAddress(Landroid/net/LinkProperties;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 2293
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_8

    .line 2294
    const/4 v1, 0x0

    .line 2296
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private getLocalInetAddress(Landroid/net/LinkProperties;)Ljava/net/InetAddress;
    .registers 6
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v2, 0x0

    .line 2346
    if-nez p1, :cond_e

    .line 2347
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_c

    const-string v3, "getLocalAddress : link properties is null"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_c
    move-object v0, v2

    .line 2356
    :goto_d
    return-object v0

    .line 2350
    :cond_e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2351
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_d

    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_3b
    move-object v0, v2

    .line 2356
    goto :goto_d
.end method

.method private getLocalInetAddress(Landroid/net/LinkProperties;I)Ljava/net/InetAddress;
    .registers 7
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "preferIpType"    # I

    .prologue
    .line 2310
    const/4 v2, 0x0

    .line 2311
    .local v2, "result":Ljava/net/InetAddress;
    if-nez p1, :cond_e

    .line 2312
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_c

    const-string v3, "getLocalAddress : link properties is null"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2313
    :cond_c
    const/4 v3, 0x0

    .line 2342
    :goto_d
    return-object v3

    .line 2315
    :cond_e
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2316
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez p2, :cond_71

    .line 2317
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_16

    .line 2318
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2320
    move-object v2, v0

    .line 2334
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_41
    :goto_41
    if-nez v2, :cond_8f

    .line 2335
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2336
    .restart local v0    # "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 2338
    move-object v2, v0

    goto :goto_4b

    .line 2325
    :cond_71
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_16

    .line 2326
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2328
    move-object v2, v0

    .line 2329
    goto :goto_41

    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_8f
    move-object v3, v2

    .line 2342
    goto/16 :goto_d
.end method

.method private getMobileBytes()J
    .registers 4

    .prologue
    .line 2619
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 2622
    :goto_4
    return-wide v1

    .line 2620
    :catch_5
    move-exception v0

    .line 2621
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "getMobileBytes : exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2622
    :cond_f
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method private getMobileDataEnabled()Z
    .registers 4

    .prologue
    .line 1060
    const/4 v1, 0x0

    .line 1061
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_b

    .line 1063
    :try_start_5
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 1068
    :cond_b
    :goto_b
    return v1

    .line 1064
    :catch_c
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "getMobileDataEnabled : remote exception"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private getNetworkEnabled()Z
    .registers 5

    .prologue
    .line 1072
    const/4 v1, 0x0

    .line 1073
    .local v1, "isWifiEnabled":Z
    const/4 v0, 0x0

    .line 1074
    .local v0, "isMobileEnabled":Z
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_c

    .line 1075
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 1077
    :cond_c
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileDataEnabled()Z

    move-result v0

    .line 1079
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkEnabled : wifi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mobile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1080
    :cond_34
    if-eqz v1, :cond_3a

    if-eqz v0, :cond_3a

    const/4 v2, 0x1

    :goto_39
    return v2

    :cond_3a
    const/4 v2, 0x0

    goto :goto_39
.end method

.method private getPackageName(I)Ljava/lang/String;
    .registers 10
    .param p1, "pid"    # I

    .prologue
    .line 1926
    const-string v2, ""

    .line 1928
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1929
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1930
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1932
    .local v5, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1933
    .local v4, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_1c

    .line 1937
    if-eqz p1, :cond_1c

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_1c

    .line 1938
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v2, v6, v7

    .line 1942
    .end local v4    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_38
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_5c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageName : package name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1943
    :cond_5c
    return-object v2
.end method

.method private getSBInterfaceDirect(II)Ljava/lang/String;
    .registers 5
    .param p1, "netType"    # I
    .param p2, "preferIpType"    # I

    .prologue
    .line 1123
    const/4 v1, 0x0

    .line 1124
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_c

    .line 1125
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1129
    :goto_5
    if-eqz v1, :cond_f

    .line 1130
    invoke-direct {p0, v1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v0

    .line 1133
    :goto_b
    return-object v0

    .line 1127
    :cond_c
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_5

    .line 1133
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getSBLimitFileSize()J
    .registers 3

    .prologue
    .line 869
    const-wide/32 v0, 0x1e00000

    return-wide v0
.end method

.method private getSBUsageEnabled()Z
    .registers 6

    .prologue
    .line 1869
    const/4 v1, 0x0

    .line 1870
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1871
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 1872
    const/4 v1, 0x1

    goto :goto_7

    .line 1875
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1a
    return v1
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 3528
    if-nez p0, :cond_5

    .line 3529
    const-string v3, ""

    .line 3545
    :goto_4
    return-object v3

    .line 3534
    :cond_5
    move-object v2, p0

    .line 3535
    .local v2, "t":Ljava/lang/Throwable;
    :goto_6
    if-eqz v2, :cond_14

    .line 3536
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_f

    .line 3537
    const-string v3, ""

    goto :goto_4

    .line 3539
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_6

    .line 3542
    :cond_14
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 3543
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3544
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3545
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private getTotalContentSize()J
    .registers 8

    .prologue
    .line 2394
    const-wide/16 v0, 0x0

    .line 2395
    .local v0, "contentsize":J
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2396
    .local v3, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 2397
    iget-wide v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mFileSize:J

    add-long/2addr v0, v4

    .line 2398
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTotalContentSize : size for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mFileSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 2401
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_45
    return-wide v0
.end method

.method private getTrafficMonitorType()I
    .registers 3

    .prologue
    .line 2627
    const-string v0, "persist.sb.monitortype"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWifiBytes()J
    .registers 6

    .prologue
    .line 2610
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_a

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2613
    :goto_9
    return-wide v1

    .line 2611
    :catch_a
    move-exception v0

    .line 2612
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_14

    const-string v1, "getWifiBytes : exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2613
    :cond_14
    const-wide/16 v1, 0x0

    goto :goto_9
.end method

.method private hideTrafficMonitorToast()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 2582
    monitor-enter p0

    .line 2583
    :try_start_2
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-eqz v0, :cond_19

    .line 2584
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_f

    .line 2585
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2587
    :cond_f
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    if-ge v0, v1, :cond_16

    .line 2588
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2590
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 2592
    :cond_19
    monitor-exit p0

    .line 2593
    return-void

    .line 2592
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private initBlockedPackages()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1948
    const-string v5, "NA"

    sget-object v6, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 1949
    sget-object v5, Lcom/samsung/smartbonding/SmartBondingService;->CscFeatureConfigSmartBonding:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1950
    .local v4, "listApps":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_17
    if-ge v2, v3, :cond_9f

    aget-object v1, v0, v2

    .line 1951
    .local v1, "curList":Ljava/lang/String;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBlockedPackages: Read Package Form Feature= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1952
    :cond_35
    const-string v5, "+"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 1954
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add White List Form Feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1955
    :cond_5f
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    :cond_68
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1956
    :cond_6b
    const-string v5, "-"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1958
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add Block List Form Feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_68

    .line 1964
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "curList":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listApps":[Ljava/lang/String;
    :cond_9f
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_c5

    .line 1965
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v5, :cond_c5

    .line 1966
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_b0

    const-string v5, "initBlockedPackages: add DCM WhiteList Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1967
    :cond_b0
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.store"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.schedulememo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    const-string v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    :cond_c5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_16a

    .line 1981
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_d2

    const-string v5, "initBlockedPackages: add Black List packages"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1989
    :cond_d2
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "org.zwanoo.android.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "pl.speedtest.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.kbudev.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "ru.qip.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "eu.vspeed.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speedtestmaster"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speedtest"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.quickbird.speed"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.krnet.LteTracker"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1998
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.sensorly.viewer"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v5, :cond_156

    .line 2003
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_125

    const-string v5, "initBlockedPackages: add DCM Black List Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2004
    :cond_125
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.threelm.dm.app.docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.mcafee.android.scanservice"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.rsupport.rsperm.ntt"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.co.omronsoft.android.decoemojimanager_docomo"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.ne.docomo.smt.contents_search_widget"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2009
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "jp.id_credit_sp.android"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.felicanetworks.mfs.addon.uicc.d"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    :cond_156
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->IsKOR:Z

    if-eqz v5, :cond_16a

    .line 2013
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_163

    const-string v5, "initBlockedPackages: add KOR Black List Package"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2014
    :cond_163
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    const-string v6, "com.uplus.onphone"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    :cond_16a
    return-void
.end method

.method private initSpeedBarRes()V
    .registers 4

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    .line 2765
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080662

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    .line 2767
    :cond_13
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    if-nez v0, :cond_26

    .line 2768
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080661

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBar:Landroid/graphics/Bitmap;

    .line 2770
    :cond_26
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3e

    .line 2771
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiBarBitmap:Landroid/graphics/Bitmap;

    .line 2773
    :cond_3e
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_56

    .line 2774
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBmBarBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileBarBitmap:Landroid/graphics/Bitmap;

    .line 2776
    :cond_56
    return-void
.end method

.method private initSpeedRatio()V
    .registers 3

    .prologue
    .line 1330
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 1331
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 1332
    return-void
.end method

.method private initTrafficMonitor()V
    .registers 6

    .prologue
    const/16 v4, 0x3e7

    const/16 v3, 0x64

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 2360
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 2361
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 2362
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 2363
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 2364
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 2365
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 2366
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 2367
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 2368
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 2369
    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 2370
    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2371
    iput v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 2372
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 2373
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 2374
    iput v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 2376
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 2377
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 2378
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 2379
    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 2381
    iput v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2382
    iput v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2383
    iput v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2385
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getTotalContentSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 2386
    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 2387
    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 2388
    iget-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 2390
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getTrafficMonitorType()I

    move-result v0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    .line 2391
    return-void
.end method

.method private isAirPlaneMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1466
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    .line 1470
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isBlockedProcess(I)Z
    .registers 8
    .param p1, "pid"    # I

    .prologue
    .line 2020
    const/4 v3, 0x0

    .line 2022
    .local v3, "result":Z
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 2024
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_44

    .line 2025
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->IsDCM:Z

    if-eqz v4, :cond_94

    .line 2026
    const-string v4, "com.nttdocomo.android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "jp.co.nttdocomo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2027
    :cond_21
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 2028
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is Unblocked Docomo App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2029
    :cond_43
    const/4 v3, 0x0

    .line 2046
    :cond_44
    :goto_44
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mBlockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2047
    .local v0, "blockedPkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2048
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_76

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is blocked list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2049
    :cond_76
    const/4 v3, 0x1

    goto :goto_4a

    .line 2031
    .end local v0    # "blockedPkg":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_78
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_92

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is Blocked Docomo App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2032
    :cond_92
    const/4 v3, 0x1

    goto :goto_44

    .line 2036
    :cond_94
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWhiteListPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 2037
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_b6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is included in white list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2038
    :cond_b6
    const/4 v3, 0x0

    goto :goto_44

    .line 2040
    :cond_b8
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_d2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This package is not included in white list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2041
    :cond_d2
    const/4 v3, 0x1

    goto/16 :goto_44

    .line 2052
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_d5
    return v3
.end method

.method private isFirstCombinedRequest(Ljava/lang/String;)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1385
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1386
    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->isGooglePlayFirstContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1399
    :cond_d
    :goto_d
    return v2

    .line 1390
    :cond_e
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1391
    .local v1, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v3, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1392
    iget-object v3, v1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/smartbonding/SmartBondingService;->convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1395
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private isGooglePlayContent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1419
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    const-string v0, "/market/GetBinary/GetBinary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1420
    const/4 v0, 0x1

    .line 1422
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isGooglePlayFirstContent(Ljava/lang/String;)Z
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_38

    .line 1404
    const-string v2, "\\?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "urls":[Ljava/lang/String;
    aget-object v2, v0, v1

    if-eqz v2, :cond_38

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    aget-object v2, v0, v1

    const-string v3, "/market/GetBinary/GetBinary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1408
    aget-object v2, v0, v1

    const-string v3, "/o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1409
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_36

    const-string v1, "isGooglePlayFirstContent : it\'s first content"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1410
    :cond_36
    const/4 v1, 0x1

    .line 1415
    .end local v0    # "urls":[Ljava/lang/String;
    :cond_37
    :goto_37
    return v1

    .line 1414
    :cond_38
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_37

    const-string v2, "isGooglePlayFirstContent : it\'s not a first content"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_37
.end method

.method private isMidHighDebugLevel()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 772
    const-string v5, "ro.debug_level"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "debugLevel":Ljava/lang/String;
    const-string v5, "0x494d"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "0x4948"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_1c
    move v3, v4

    .line 793
    :cond_1d
    :goto_1d
    return v3

    .line 776
    :cond_1e
    const-string v5, "0x4f4c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 779
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/devices/virtual/misc/level/control"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, "file1":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v5, "/mnt/.lfs/debug_level.inf"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 782
    .local v2, "file2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 783
    const-string v5, "/sys/devices/virtual/misc/level/control"

    invoke-direct {p0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    const-string v5, "0xB0B0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    const-string v5, "0xC0C0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_50
    move v3, v4

    .line 785
    goto :goto_1d

    .line 787
    :cond_52
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 788
    const-string v5, "/mnt/.lfs/debug_level.inf"

    invoke-direct {p0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    const-string v5, "DMID"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    const-string v5, "DHIG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_6e
    move v3, v4

    .line 790
    goto :goto_1d
.end method

.method private isRunningProcess(I)Z
    .registers 9
    .param p1, "pid"    # I

    .prologue
    .line 2094
    const/4 v4, 0x0

    .line 2096
    .local v4, "result":Z
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2097
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2099
    .local v3, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2100
    .local v2, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_15

    .line 2103
    if-eqz p1, :cond_15

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_15

    .line 2104
    const/4 v4, 0x1

    goto :goto_15

    .line 2107
    .end local v2    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2e
    return v4
.end method

.method private isRunningProcess(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2077
    const/4 v4, 0x0

    .line 2079
    .local v4, "result":Z
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2080
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2082
    .local v3, "raInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2083
    .local v2, "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_15

    .line 2086
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2087
    const/4 v4, 0x1

    goto :goto_15

    .line 2090
    .end local v2    # "raInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_33
    return v4
.end method

.method private isYouTubeContent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1459
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    const-string v0, "/videoplayback?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1460
    const/4 v0, 0x1

    .line 1462
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private loadPreference()V
    .registers 3

    .prologue
    .line 3479
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load Preference :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3480
    :cond_1c
    const-string v0, "persist.sys.sb.log.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 3481
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3512
    const-string v0, "SmartBondingService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    return-void
.end method

.method private static log(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 3520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->loge(Ljava/lang/String;)V

    .line 3521
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 3516
    const-string v0, "SmartBondingService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 798
    const-string v3, ""

    .line 799
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 802
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_26
    .catchall {:try_start_3 .. :try_end_f} :catchall_43

    .line 803
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_1b

    .line 804
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 805
    if-eqz v3, :cond_1b

    .line 806
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_65
    .catchall {:try_start_11 .. :try_end_1a} :catchall_62

    move-result-object v3

    .line 812
    :cond_1b
    if-eqz v1, :cond_20

    .line 814
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_56

    :cond_20
    :goto_20
    move-object v0, v1

    .line 821
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_21
    :goto_21
    if-nez v3, :cond_25

    .line 822
    const-string v3, ""

    .line 824
    .end local v3    # "result":Ljava/lang/String;
    :cond_25
    return-object v3

    .line 808
    .restart local v3    # "result":Ljava/lang/String;
    :catch_26
    move-exception v2

    .line 809
    .local v2, "e":Ljava/io/IOException;
    :goto_27
    :try_start_27
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_43

    .line 812
    if-eqz v0, :cond_21

    .line 814
    :try_start_33
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_21

    .line 815
    :catch_37
    move-exception v2

    .line 816
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 812
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_43
    move-exception v4

    :goto_44
    if-eqz v0, :cond_49

    .line 814
    :try_start_46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 812
    :cond_49
    :goto_49
    throw v4

    .line 815
    :catch_4a
    move-exception v2

    .line 816
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "SmartBondingService"

    const-string v6, "IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 815
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_56
    move-exception v2

    .line 816
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "SmartBondingService"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 812
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_44

    .line 808
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_65
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_27
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_e

    .line 3226
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    .line 3228
    :cond_e
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3229
    return-void
.end method

.method private removeSBUsage(J)V
    .registers 11
    .param p1, "threadID"    # J

    .prologue
    .line 1842
    const/4 v2, 0x0

    .line 1843
    .local v2, "removed":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1845
    .local v1, "mRemoveSBUsageStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;>;"
    const-string v3, ""

    .line 1846
    .local v3, "removedUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1847
    .local v4, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_e

    .line 1848
    iget-object v3, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    .line 1849
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_42

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSBUsage : url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is founded. add it in remove usage list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1854
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_42
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1855
    .restart local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-object v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1856
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_7e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSBUsage : thread id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is added in remove list."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1857
    :cond_7e
    const/4 v2, 0x1

    .line 1858
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 1862
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_83
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1863
    .restart local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_b5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSBUsage : thread id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1864
    :cond_b5
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_87

    .line 1866
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_bb
    return-void
.end method

.method private sendSBStartIntent()V
    .registers 3

    .prologue
    .line 2282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2283
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2284
    return-void
.end method

.method private sendSBStopIntent()V
    .registers 3

    .prologue
    .line 2287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2288
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2289
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_9

    .line 1052
    :try_start_4
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1057
    :cond_9
    :goto_9
    return-void

    .line 1053
    :catch_a
    move-exception v0

    .line 1054
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "setMobileDataEnabled : remote exception"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private setSBInterfacesEnabled(Z)I
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    if-ne v0, p1, :cond_2b

    .line 927
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to setSBInterfacesEnabled : already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_28

    const-string v0, "enabled"

    :goto_18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 928
    :cond_23
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    .line 947
    :goto_27
    return v0

    .line 927
    :cond_28
    const-string v0, "disabled"

    goto :goto_18

    .line 931
    :cond_2b
    monitor-enter p0

    .line 932
    :try_start_2c
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    .line 933
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSBInterfacesEnabled ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 934
    :cond_50
    if-eqz p1, :cond_62

    .line 935
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->removeMessages(I)V

    .line 936
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOnMobileConnection()Z

    .line 945
    :goto_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_6c

    .line 947
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v0

    goto :goto_27

    .line 938
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->removeMessages(I)V

    .line 939
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->turnOffMobileConnection()Z

    goto :goto_5c

    .line 945
    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method private showSpeedBarNotification(Z)V
    .registers 12
    .param p1, "isOnGoing"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3057
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "showSpeedBarNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3059
    :cond_c
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 3062
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_23

    .line 3063
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "showSpeedBarNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3106
    :cond_22
    :goto_22
    return-void

    .line 3067
    :cond_23
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_32

    .line 3068
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "showSpeedBarNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_22

    .line 3072
    :cond_32
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x1090085

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3074
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v0, 0x1020367

    const-string v3, "setImageBitmap"

    invoke-direct {p0, v1, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3075
    const v0, 0x1020369

    const-string v3, "setImageBitmap"

    invoke-direct {p0, v1, v5}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3077
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407bf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3079
    .local v7, "mbps":Ljava/lang/String;
    const v0, 0x1020368

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3080
    const v0, 0x1020366

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3081
    const v0, 0x1020365

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3083
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3084
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3085
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3087
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3090
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_c7

    .line 3091
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 3092
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 3095
    :cond_c7
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x10807e8

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3096
    if-eqz p1, :cond_ef

    .line 3097
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3102
    :goto_d5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3103
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3104
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3105
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_22

    .line 3099
    :cond_ef
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_d5
.end method

.method private showSpeedBarToast()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2841
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v5, :cond_10

    .line 2842
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "empty toast"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2845
    :cond_10
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v5, :cond_20

    .line 2846
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    .line 2848
    :cond_20
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v6, 0x10900e4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 2849
    .local v3, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2851
    const v5, 0x1020368

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2852
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v5, 0x1020366

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2853
    .local v4, "wifiSpeed":Landroid/widget/TextView;
    const v5, 0x1020365

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2855
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2856
    .local v1, "mbps":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2857
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2858
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2860
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2861
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2862
    return-void
.end method

.method private showSpeedNotification(Z)V
    .registers 13
    .param p1, "isOnGoing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2897
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "showSpeedNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2899
    :cond_b
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 2902
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-nez v8, :cond_22

    .line 2903
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "showSpeedNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2949
    :cond_21
    :goto_21
    return-void

    .line 2907
    :cond_22
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_31

    .line 2908
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_21

    const-string/jumbo v0, "showSpeedNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_21

    .line 2912
    :cond_31
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x1090086

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2913
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v0, 0x1020369

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2914
    const v0, 0x1020367

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2915
    const v0, 0x102036b

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2917
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2918
    .local v10, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10407ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2919
    .local v7, "name":Ljava/lang/String;
    const-string v0, "%s"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2920
    const v0, 0x102036a

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2922
    const v0, 0x1020368

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2923
    const v0, 0x1020366

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2924
    const v0, 0x1020365

    const-string v3, "0"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2926
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2927
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2928
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2930
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 2933
    .local v9, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_de

    .line 2934
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 2935
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 2938
    :cond_de
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x10807e8

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2939
    if-eqz p1, :cond_106

    .line 2940
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2945
    :goto_ec
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 2946
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2947
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 2948
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v8, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_21

    .line 2942
    :cond_106
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_ec
.end method

.method private showSpeedToast()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 2631
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v10, :cond_f

    .line 2632
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v11, "empty toast"

    invoke-static {v10, v11, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2635
    :cond_f
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v10, :cond_1f

    .line 2636
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    iput-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    .line 2638
    :cond_1f
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v11, 0x10900e5

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 2639
    .local v7, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2641
    const v10, 0x1020369

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2642
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v10, 0x1020367

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2643
    .local v9, "wifiView":Landroid/widget/ImageView;
    const v10, 0x102036b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2645
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v10, 0x102036a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2646
    .local v6, "titleView":Landroid/widget/TextView;
    const v10, 0x1020368

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2647
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v10, 0x1020366

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2648
    .local v8, "wifiSpeed":Landroid/widget/TextView;
    const v10, 0x1020365

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2650
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407ba

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2651
    .local v5, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2652
    .local v4, "name":Ljava/lang/String;
    const-string v10, "%s"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2653
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2654
    const-string v10, "0"

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2655
    const-string v10, "0"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2656
    const-string v10, "0"

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2658
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2659
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2660
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2661
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2662
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 2663
    return-void
.end method

.method private showTimerNotification(Z)V
    .registers 11
    .param p1, "isOnGoing"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x64

    .line 2979
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "showTimerNotification"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2981
    :cond_d
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 2984
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_24

    .line 2985
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_23

    const-string/jumbo v0, "showTimerNotification : notification manager is null"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3026
    :cond_23
    :goto_23
    return-void

    .line 2989
    :cond_24
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-eqz v0, :cond_33

    .line 2990
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v0, :cond_23

    const-string/jumbo v0, "showTimerNotification : notification already exist"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_23

    .line 2994
    :cond_33
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v3, 0x109008f

    invoke-direct {v6, v0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2995
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v0, 0x1020369

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2996
    const v0, 0x1020367

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2997
    const v0, 0x102036b

    const-string v3, "setImageLevel"

    invoke-virtual {v6, v0, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2999
    const v0, 0x1020368

    const-string v3, "999"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3000
    const v0, 0x1020366

    const-string v3, "999"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3001
    const v0, 0x1020365

    const-string v3, "999"

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3003
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3004
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings.smartbonding"

    const-string v3, "com.android.settings.smartbonding.SmartBondingSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3005
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3007
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 3010
    .local v8, "pi":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v0, :cond_9d

    .line 3011
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    .line 3012
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 3015
    :cond_9d
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const v1, 0x10807e8

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3016
    if-eqz p1, :cond_c5

    .line 3017
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3022
    :goto_ab
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3023
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3024
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v1, 0x108

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3025
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v7, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_23

    .line 3019
    :cond_c5
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_ab
.end method

.method private showTimerToast()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x64

    .line 2701
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v7, :cond_11

    .line 2702
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v8, "empty toast"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    .line 2705
    :cond_11
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    if-nez v7, :cond_21

    .line 2706
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    .line 2708
    :cond_21
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastLayout:Landroid/view/LayoutInflater;

    const v8, 0x10900e6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2709
    .local v4, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mToastClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2711
    const v7, 0x1020369

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2712
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v7, 0x1020367

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 2713
    .local v6, "wifiView":Landroid/widget/ImageView;
    const v7, 0x102036b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2715
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v7, 0x1020368

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2716
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v7, 0x1020366

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2717
    .local v5, "wifiSpeed":Landroid/widget/TextView;
    const v7, 0x1020365

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2719
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    const-string v7, "999"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    const-string v7, "999"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2721
    const-string v7, "999"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2723
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2724
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2725
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2727
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v7, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2728
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2729
    return-void
.end method

.method private showWarningToast(I)V
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/16 v5, 0x258

    .line 757
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 758
    .local v1, "warningToast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 760
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 762
    const/16 v2, 0xe

    if-ne p1, v2, :cond_22

    .line 763
    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 768
    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 769
    return-void

    .line 764
    :cond_22
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1e

    .line 765
    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1e
.end method

.method private startTrafficMonitor()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 2521
    monitor-enter p0

    .line 2522
    :try_start_3
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "startTrafficMonitor"

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2523
    :cond_d
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-nez v0, :cond_6a

    .line 2524
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->removeMessages(I)V

    .line 2525
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initTrafficMonitor()V

    .line 2526
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    if-eqz v0, :cond_6c

    .line 2527
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 2532
    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 2533
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 2534
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getWifiBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 2535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 2537
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-nez v0, :cond_73

    .line 2538
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedNotification(Z)V

    .line 2544
    :goto_41
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    if-ge v0, v3, :cond_57

    .line 2545
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2547
    :cond_57
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2549
    :cond_6a
    monitor-exit p0

    .line 2550
    return-void

    .line 2530
    :cond_6c
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    goto :goto_24

    .line 2549
    :catchall_70
    move-exception v0

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v0

    .line 2539
    :cond_73
    :try_start_73
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-ne v0, v2, :cond_7c

    .line 2540
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showTimerNotification(Z)V

    goto :goto_41

    .line 2542
    :cond_7c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->showSpeedBarNotification(Z)V
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_70

    goto :goto_41
.end method

.method private stopTrafficMonitor()V
    .registers 3

    .prologue
    .line 2596
    monitor-enter p0

    .line 2597
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    if-eqz v0, :cond_1a

    .line 2598
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->initTrafficMonitor()V

    .line 2599
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearNotification()V

    .line 2600
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->clearToast()V

    .line 2601
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mStartTrafficMonitor:Z

    .line 2603
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->removeMessages(I)V

    .line 2605
    :cond_1a
    monitor-exit p0

    .line 2606
    return-void

    .line 2605
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private turnOffMobileConnection()Z
    .registers 5

    .prologue
    .line 981
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "turnOffMobileConnection"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 983
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableHIPRI"

    invoke-interface {v1, v2, v3}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 984
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1c

    const-string/jumbo v1, "turnOffMobileConnection : Call stopUsingNetworkFeature for Hipri Types "

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 985
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_21

    .line 990
    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    return v1

    .line 987
    :catch_21
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception turnOffMobileConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private turnOnMobileConnection()Z
    .registers 9

    .prologue
    .line 951
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "turnOnMobileConnection"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 952
    :cond_a
    const/4 v2, 0x3

    .line 953
    .local v2, "result":I
    const/4 v3, 0x0

    .line 955
    .local v3, "ret":Z
    :try_start_c
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableHIPRI"

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, v7}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v2

    .line 956
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_24

    const-string/jumbo v4, "turnOnMobileConnection : Call startUsingNetworkFeature for Hipri Types "

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 957
    :cond_24
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_2b

    .line 961
    :cond_27
    :goto_27
    packed-switch v2, :pswitch_data_58

    .line 977
    :goto_2a
    :pswitch_2a
    return v3

    .line 958
    :catch_2b
    move-exception v0

    .line 959
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception turnOnMobileConnection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_27

    .line 964
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_47
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 965
    .local v1, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const-wide/32 v5, 0x9c40

    invoke-virtual {v4, v1, v5, v6}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 970
    const/4 v3, 0x1

    .line 971
    goto :goto_2a

    .line 961
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_47
        :pswitch_47
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method private updateSpeedBarNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3109
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3112
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_19

    .line 3113
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "updateSpeedNotification : notification manager is null"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3134
    :cond_18
    :goto_18
    return-void

    .line 3117
    :cond_19
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v2, :cond_28

    .line 3118
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v2, :cond_18

    const-string/jumbo v2, "updateSpeedNotification : no notification"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 3122
    :cond_28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10407bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3124
    .local v0, "mbps":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020368

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3125
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020366

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3126
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020365

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3128
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020367

    const-string v4, "setImageBitmap"

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3129
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x1020369

    const-string v4, "setImageBitmap"

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-direct {p0, v5, v7}, Lcom/samsung/smartbonding/SmartBondingService;->getBarBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 3131
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v3, -0x2

    iput v3, v2, Landroid/app/Notification;->priority:I

    .line 3132
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v3, 0x108

    iput v3, v2, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3133
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_18
.end method

.method private updateSpeedBarToast()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2865
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v5, :cond_11

    .line 2866
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_10

    const-string/jumbo v5, "updateSpeedBarToast : toast is null"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2886
    :cond_10
    :goto_10
    return-void

    .line 2869
    :cond_11
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_24

    .line 2870
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_10

    const-string/jumbo v5, "updateSpeedBarToast : toast view is null"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 2873
    :cond_24
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    .line 2875
    .local v3, "v":Landroid/view/View;
    const v5, 0x1020368

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2876
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v5, 0x1020366

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2877
    .local v4, "wifiSpeed":Landroid/widget/TextView;
    const v5, 0x1020365

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2879
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10407bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2880
    .local v1, "mbps":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2881
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2882
    new-array v5, v8, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2884
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2885
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method

.method private updateSpeedNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2952
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2955
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_19

    .line 2956
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_18

    const-string/jumbo v1, "updateSpeedNotification : notification manager is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2976
    :cond_18
    :goto_18
    return-void

    .line 2960
    :cond_19
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v1, :cond_28

    .line 2961
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_18

    const-string/jumbo v1, "updateSpeedNotification : no notification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 2965
    :cond_28
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020368

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2966
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020366

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2967
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020365

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2969
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020369

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2970
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020367

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2971
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102036b

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2973
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 2974
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v2, 0x108

    iput v2, v1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 2975
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_18
.end method

.method private updateSpeedToast()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2666
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v10, :cond_11

    .line 2667
    sget-boolean v10, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v10, :cond_10

    const-string/jumbo v10, "updateSpeedToast : toast is null"

    invoke-static {v10}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2698
    :cond_10
    :goto_10
    return-void

    .line 2670
    :cond_11
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_24

    .line 2671
    sget-boolean v10, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v10, :cond_10

    const-string/jumbo v10, "updateSpeedToast : toast view is null"

    invoke-static {v10}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 2674
    :cond_24
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    .line 2676
    .local v7, "v":Landroid/view/View;
    const v10, 0x1020369

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2677
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v10, 0x1020367

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2678
    .local v9, "wifiView":Landroid/widget/ImageView;
    const v10, 0x102036b

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2680
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v10, 0x102036a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2681
    .local v6, "titleView":Landroid/widget/TextView;
    const v10, 0x1020368

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2682
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v10, 0x1020366

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2683
    .local v8, "wifiSpeed":Landroid/widget/TextView;
    const v10, 0x1020365

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2685
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407ba

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2686
    .local v5, "title":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10407ad

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2687
    .local v4, "name":Ljava/lang/String;
    const-string v10, "%s"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</b>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2688
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2689
    const-string v10, "%d"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2690
    const-string v10, "%d"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2691
    const-string v10, "%d"

    new-array v11, v14, [Ljava/lang/Object;

    iget v12, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2693
    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2694
    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2695
    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2696
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10, v7}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2697
    iget-object v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10
.end method

.method private updateStatisticsData(Ljava/lang/Integer;[J[J)V
    .registers 16
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "lens"    # [J
    .param p3, "times"    # [J

    .prologue
    .line 1297
    :try_start_0
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_fd

    .line 1298
    :try_start_3
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v6, :cond_52

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateStatisticsData for pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", WiFi len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", LTE len="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-wide v8, p2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", WiFi time="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x0

    aget-wide v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", LTE time="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    aget-wide v8, p3, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1299
    :cond_52
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1300
    .local v0, "data":[J
    if-eqz v0, :cond_60

    array-length v6, v0

    const/4 v8, 0x4

    if-ge v6, v8, :cond_66

    .line 1301
    :cond_60
    const/4 v6, 0x4

    new-array v0, v6, [J

    .end local v0    # "data":[J
    fill-array-data v0, :array_102

    .line 1303
    .restart local v0    # "data":[J
    :cond_66
    const/4 v6, 0x0

    aget-wide v8, v0, v6

    const/4 v10, 0x0

    aget-wide v10, p2, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1304
    const/4 v6, 0x1

    aget-wide v8, v0, v6

    const/4 v10, 0x1

    aget-wide v10, p2, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1305
    const/4 v6, 0x2

    aget-wide v8, v0, v6

    const/4 v10, 0x0

    aget-wide v10, p3, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1306
    const/4 v6, 0x3

    aget-wide v8, v0, v6

    const/4 v10, 0x1

    aget-wide v10, p3, v10

    add-long/2addr v8, v10

    aput-wide v8, v0, v6

    .line 1307
    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    sget-object v6, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-virtual {p1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f0

    .line 1309
    const/4 v6, 0x0

    aget-wide v8, p3, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_c8

    const/4 v6, 0x1

    aget-wide v8, p3, v6

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_c8

    .line 1310
    const/4 v6, 0x1

    aget-wide v8, p2, v6

    long-to-double v8, v8

    const/4 v6, 0x1

    aget-wide v10, p3, v6

    long-to-double v10, v10

    div-double v2, v8, v10

    .line 1311
    .local v2, "mobileRatio":D
    const/4 v6, 0x0

    aget-wide v8, p2, v6

    long-to-double v8, v8

    const/4 v6, 0x0

    aget-wide v10, p3, v6

    long-to-double v10, v10

    div-double v4, v8, v10

    .line 1312
    .local v4, "wifiRatio":D
    cmpl-double v6, v4, v2

    if-ltz v6, :cond_f2

    .line 1313
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 1314
    div-double v8, v4, v2

    iput-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    .line 1321
    .end local v2    # "mobileRatio":D
    .end local v4    # "wifiRatio":D
    :cond_c8
    :goto_c8
    sget-boolean v6, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v6, :cond_f0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now faster interface is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " speed ratio is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1323
    :cond_f0
    monitor-exit v7

    .line 1327
    .end local v0    # "data":[J
    :goto_f1
    return-void

    .line 1317
    .restart local v0    # "data":[J
    .restart local v2    # "mobileRatio":D
    .restart local v4    # "wifiRatio":D
    :cond_f2
    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    .line 1318
    div-double v8, v2, v4

    iput-wide v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    goto :goto_c8

    .line 1323
    .end local v0    # "data":[J
    .end local v2    # "mobileRatio":D
    .end local v4    # "wifiRatio":D
    :catchall_fa
    move-exception v6

    monitor-exit v7
    :try_end_fc
    .catchall {:try_start_3 .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v6
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_fd} :catch_fd

    .line 1324
    :catch_fd
    move-exception v1

    .line 1325
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_f1

    .line 1301
    :array_102
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateTimerNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3029
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3032
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_19

    .line 3033
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_18

    const-string/jumbo v1, "updateSpeedNotification : notification manager is null"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3053
    :cond_18
    :goto_18
    return-void

    .line 3037
    :cond_19
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    if-nez v1, :cond_28

    .line 3038
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_18

    const-string/jumbo v1, "updateSpeedNotification : no notification"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_18

    .line 3042
    :cond_28
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020368

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3043
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020366

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3044
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020365

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3046
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020369

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3047
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020367

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3048
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102036b

    const-string v3, "setImageLevel"

    iget v4, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3050
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/4 v2, -0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    .line 3051
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    const/16 v2, 0x108

    iput v2, v1, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3052
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_18
.end method

.method private updateTimerToast()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2732
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-nez v8, :cond_11

    .line 2733
    sget-boolean v8, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v8, :cond_10

    const-string/jumbo v8, "updateTimerToast : toast is null"

    invoke-static {v8}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2761
    :cond_10
    :goto_10
    return-void

    .line 2736
    :cond_11
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_24

    .line 2737
    sget-boolean v8, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v8, :cond_10

    const-string/jumbo v8, "updateTimerToast : toast view is null"

    invoke-static {v8}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 2740
    :cond_24
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    .line 2742
    .local v5, "v":Landroid/view/View;
    const v8, 0x1020369

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2743
    .local v3, "mobileView":Landroid/widget/ImageView;
    const v8, 0x1020367

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 2744
    .local v7, "wifiView":Landroid/widget/ImageView;
    const v8, 0x102036b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2746
    .local v1, "boosterView":Landroid/widget/ImageView;
    const v8, 0x102036a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2747
    .local v4, "titleView":Landroid/widget/TextView;
    const v8, 0x1020368

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2748
    .local v2, "mobileSpeed":Landroid/widget/TextView;
    const v8, 0x1020366

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2749
    .local v6, "wifiSpeed":Landroid/widget/TextView;
    const v8, 0x1020365

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2751
    .local v0, "boosterSpeed":Landroid/widget/TextView;
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2752
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2753
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2755
    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2756
    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2757
    iget v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 2759
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2760
    iget-object v8, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10
.end method

.method private updateTraffic()V
    .registers 30

    .prologue
    .line 2405
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    .line 2406
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    .line 2407
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    .line 2409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    .line 2410
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getMobileBytes()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    .line 2411
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getWifiBytes()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    .line 2413
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTrafficTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreTrafficTime:J

    move-wide/from16 v24, v0

    sub-long v11, v22, v24

    .line 2414
    .local v11, "diffTrafficTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreMobileBytes:J

    move-wide/from16 v24, v0

    sub-long v9, v22, v24

    .line 2415
    .local v9, "diffMobileTrafficBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mPreWifiBytes:J

    move-wide/from16 v24, v0

    sub-long v13, v22, v24

    .line 2417
    .local v13, "diffWifiTrafficBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    add-long v22, v22, v13

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    .line 2418
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    add-long v22, v22, v9

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    .line 2419
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    add-long v22, v22, v13

    add-long v22, v22, v9

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    .line 2421
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v11

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    .line 2423
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_e1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : difftime ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") mobilebytes ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") wifibytes ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2425
    :cond_e1
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v9

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    long-to-double v0, v11

    move-wide/from16 v24, v0

    div-double v16, v22, v24

    .line 2426
    .local v16, "valueMobileSpeed":D
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    long-to-double v0, v11

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 2427
    .local v20, "valueWifiSpeed":D
    add-double v18, v16, v20

    .line 2429
    .local v18, "valueSBSpeed":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalMobileBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v5, v22, v24

    .line 2430
    .local v5, "avgMobileSpeed":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalWifiBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v7, v22, v24

    .line 2431
    .local v7, "avgWifiSpeed":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalBoosterBytes:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurTotalTrafficTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v3, v22, v24

    .line 2433
    .local v3, "avgBoosterSpeed":D
    const/16 v22, 0x64

    const-wide/high16 v23, 0x4014000000000000L

    const-wide/high16 v25, 0x4090000000000000L

    div-double v25, v16, v25

    const-wide/high16 v27, 0x4090000000000000L

    div-double v25, v25, v27

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 2434
    const/16 v22, 0x64

    const-wide/high16 v23, 0x4014000000000000L

    const-wide/high16 v25, 0x4090000000000000L

    div-double v25, v20, v25

    const-wide/high16 v27, 0x4090000000000000L

    div-double v25, v25, v27

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 2435
    const/16 v22, 0x64

    const-wide/high16 v23, 0x4014000000000000L

    const-wide/high16 v25, 0x4090000000000000L

    div-double v25, v18, v25

    const-wide/high16 v27, 0x4090000000000000L

    div-double v25, v25, v27

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 2437
    const-wide/high16 v22, 0x40c4000000000000L

    cmpl-double v22, v16, v22

    if-lez v22, :cond_1c6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c6

    .line 2438
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedMobileImageLevel:I

    .line 2440
    :cond_1c6
    const-wide/high16 v22, 0x40c4000000000000L

    cmpl-double v22, v20, v22

    if-lez v22, :cond_1e2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e2

    .line 2441
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedWifiImageLevel:I

    .line 2443
    :cond_1e2
    const-wide/high16 v22, 0x40c4000000000000L

    cmpl-double v22, v18, v22

    if-lez v22, :cond_1fe

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1fe

    .line 2444
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurSpeedBoosterImageLevel:I

    .line 2447
    :cond_1fe
    const-wide/high16 v22, 0x4020000000000000L

    mul-double v22, v22, v16

    const-wide/high16 v24, 0x4090000000000000L

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4090000000000000L

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    .line 2448
    const-wide/high16 v22, 0x4020000000000000L

    mul-double v22, v22, v20

    const-wide/high16 v24, 0x4090000000000000L

    div-double v22, v22, v24

    const-wide/high16 v24, 0x4090000000000000L

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    .line 2449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileSpeed:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiSpeed:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterSpeed:I

    .line 2453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_28a

    .line 2454
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_28b

    .line 2455
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2456
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 2457
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2458
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2459
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2460
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2502
    :cond_28a
    :goto_28a
    return-void

    .line 2462
    :cond_28b
    const-wide/16 v22, 0x0

    cmpl-double v22, v5, v22

    if-eqz v22, :cond_44e

    .line 2463
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v5

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2464
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_2c6

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : avgWifi "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2465
    :cond_2c6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v5

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 2466
    .local v15, "totaltime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    .line 2471
    .end local v15    # "totaltime":I
    :goto_2f3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    move/from16 v22, v0

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_309

    .line 2472
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2475
    :cond_309
    const-wide/16 v22, 0x0

    cmpl-double v22, v7, v22

    if-eqz v22, :cond_460

    .line 2476
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v7

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2477
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v7

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 2478
    .restart local v15    # "totaltime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    .line 2479
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_371

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : avgMobile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2484
    .end local v15    # "totaltime":I
    :cond_371
    :goto_371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    move/from16 v22, v0

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_387

    .line 2485
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2487
    :cond_387
    const-wide/16 v22, 0x0

    cmpl-double v22, v3, v22

    if-eqz v22, :cond_472

    .line 2488
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v3

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2489
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v22, v3

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 2490
    .restart local v15    # "totaltime":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    .line 2491
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_3ef

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : avgBooster "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2496
    .end local v15    # "totaltime":I
    :cond_3ef
    :goto_3ef
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    move/from16 v22, v0

    const/16 v23, 0x3e7

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_405

    .line 2497
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2499
    :cond_405
    sget-boolean v22, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v22, :cond_28a

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateTraffic : timer ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_28a

    .line 2468
    :cond_44e
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurMobileRemainTime:I

    .line 2469
    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerMobileImageLevel:I

    goto/16 :goto_2f3

    .line 2481
    :cond_460
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurWifiRemainTime:I

    .line 2482
    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerWifiImageLevel:I

    goto/16 :goto_371

    .line 2493
    :cond_472
    const/16 v22, 0x3e7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurBoosterRemainTime:I

    .line 2494
    const/16 v22, 0x64

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/smartbonding/SmartBondingService;->mCurTimerBoosterImageLevel:I

    goto/16 :goto_3ef
.end method

.method private updateTrafficMonitor()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2553
    monitor-enter p0

    .line 2554
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTraffic()V

    .line 2555
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-nez v0, :cond_33

    .line 2556
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedNotification()V

    .line 2563
    :goto_c
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4e

    .line 2564
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-nez v0, :cond_42

    .line 2565
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedToast()V

    .line 2576
    :cond_18
    :goto_18
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficCount:I

    .line 2577
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2578
    monitor-exit p0

    .line 2579
    return-void

    .line 2557
    :cond_33
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-ne v0, v2, :cond_3e

    .line 2558
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTimerNotification()V

    goto :goto_c

    .line 2578
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_3b

    throw v0

    .line 2560
    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedBarNotification()V

    goto :goto_c

    .line 2566
    :cond_42
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mTrafficMonitorType:I

    if-ne v0, v2, :cond_4a

    .line 2567
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateTimerToast()V

    goto :goto_18

    .line 2569
    :cond_4a
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->updateSpeedBarToast()V

    goto :goto_18

    .line 2572
    :cond_4e
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    if-eqz v0, :cond_18

    .line 2573
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    goto :goto_18
.end method


# virtual methods
.method public getAllSmartBondingData()[J
    .registers 2

    .prologue
    .line 1263
    sget-object v0, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSmartBondingData(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getHttpLogEnabled()Z
    .registers 2

    .prologue
    .line 3508
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    return v0
.end method

.method public getProxyInfo(I)[Ljava/lang/String;
    .registers 10
    .param p1, "netType"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1192
    const/4 v0, 0x0

    .line 1193
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_6d

    .line 1194
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1198
    :goto_a
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 1199
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1200
    .local v1, "proxyinfo":[Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxyInfo : type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_70

    const-string v2, "WIFI"

    :goto_49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] + proxt addr ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1203
    .end local v1    # "proxyinfo":[Ljava/lang/String;
    :cond_6c
    :goto_6c
    return-object v1

    .line 1196
    :cond_6d
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_a

    .line 1200
    .restart local v1    # "proxyinfo":[Ljava/lang/String;
    :cond_70
    const-string v2, "MOBILE"

    goto :goto_49

    .line 1203
    .end local v1    # "proxyinfo":[Ljava/lang/String;
    :cond_73
    new-array v1, v7, [Ljava/lang/String;

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    goto :goto_6c
.end method

.method public getSBEnabled()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 720
    :try_start_2
    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCurrentUserId:I

    if-eqz v3, :cond_12

    .line 721
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "unable to get Smart Bonding enabled : disabled for sub users"

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    :cond_10
    move v1, v2

    .line 733
    :goto_11
    return v1

    .line 725
    :cond_12
    monitor-enter p0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_28

    .line 726
    :try_start_13
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2e

    .line 729
    .local v1, "enabled":Z
    :goto_23
    monitor-exit p0

    goto :goto_11

    .line 730
    .end local v1    # "enabled":Z
    :catchall_25
    move-exception v3

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_25

    :try_start_27
    throw v3
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_28} :catch_28

    .line 731
    :catch_28
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    .line 733
    goto :goto_11

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2e
    move v1, v2

    .line 726
    goto :goto_23
.end method

.method public getSBInterface(I)Ljava/lang/String;
    .registers 5
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1171
    const/4 v1, 0x0

    .line 1172
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_d

    .line 1173
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1184
    :goto_6
    if-eqz v1, :cond_c

    .line 1185
    invoke-direct {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    :cond_c
    :goto_c
    return-object v0

    .line 1175
    :cond_d
    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-eqz v2, :cond_14

    .line 1177
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_6

    .line 1179
    :cond_14
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_c

    const-string v2, "getSBInterface : startUsingNetworkFeature is not called so it can\'t get mobile lp"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public getSBInterfaceEx(II)Ljava/lang/String;
    .registers 6
    .param p1, "netType"    # I
    .param p2, "preferIpType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez p1, :cond_d

    .line 1144
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mWifiLp:Landroid/net/LinkProperties;

    .line 1155
    :goto_6
    if-eqz v1, :cond_c

    .line 1156
    invoke-direct {p0, v1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->getLocalAddress(Landroid/net/LinkProperties;I)Ljava/lang/String;

    move-result-object v0

    .line 1159
    :cond_c
    :goto_c
    return-object v0

    .line 1146
    :cond_d
    iget-boolean v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-eqz v2, :cond_14

    .line 1148
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mMobileLp:Landroid/net/LinkProperties;

    goto :goto_6

    .line 1150
    :cond_14
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_c

    const-string v2, "getSBInterfaceEx : startUsingNetworkFeature is not called so it can\'t get mobile lp"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public getSBInterfaceState()I
    .registers 8

    .prologue
    .line 1007
    const/4 v1, 0x0

    .line 1009
    .local v1, "mobileConnected":Z
    :try_start_1
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1010
    .local v2, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_e

    .line 1011
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 1013
    :cond_e
    iget-boolean v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mIsConnectMobileCalled:Z

    if-nez v5, :cond_1c

    .line 1014
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_1b

    const-string v5, "getSBInterfaceState : mobile is not connected because startUsingNetworkFeature is not called"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_59

    .line 1017
    :cond_1b
    const/4 v1, 0x0

    .line 1023
    .end local v2    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1c
    :goto_1c
    const/4 v3, 0x0

    .line 1025
    .local v3, "wifiConnected":Z
    :try_start_1d
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mCm:Landroid/net/IConnectivityManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 1026
    .local v4, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2a

    .line 1027
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_75

    move-result v3

    .line 1033
    .end local v4    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2a
    :goto_2a
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSBInterfaceState : mobile ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] wifi  ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1034
    :cond_54
    invoke-direct {p0, v1, v3}, Lcom/samsung/smartbonding/SmartBondingService;->convertSBInterfaceState(ZZ)I

    move-result v5

    return v5

    .line 1019
    .end local v3    # "wifiConnected":Z
    :catch_59
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getSBInterfaceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 1029
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "wifiConnected":Z
    :catch_75
    move-exception v0

    .line 1030
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getSBInterfaceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public getSBInterfaces()[Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1244
    :try_start_4
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_38

    .line 1245
    :try_start_7
    iget v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    if-nez v1, :cond_20

    .line 1246
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    monitor-exit v2

    .line 1254
    :goto_1f
    return-object v1

    .line 1249
    :cond_20
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    monitor-exit v2

    goto :goto_1f

    .line 1251
    :catchall_35
    move-exception v1

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_38} :catch_38

    .line 1253
    :catch_38
    move-exception v0

    .line 1254
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v8, v1, v5

    aput-object v8, v1, v6

    goto :goto_1f
.end method

.method public getSBInterfacesEnabled()Z
    .registers 2

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBInterfacesEnabled:Z

    return v0
.end method

.method public getSBNotificationEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 852
    :try_start_2
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3} :catch_34

    .line 853
    :try_start_3
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding_notification"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2f

    .line 855
    .local v1, "enabled":Z
    :goto_13
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSBNotificationEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 856
    :cond_2d
    monitor-exit p0

    .line 860
    .end local v1    # "enabled":Z
    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    .line 853
    goto :goto_13

    .line 857
    :catchall_31
    move-exception v3

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    :try_start_33
    throw v3
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_34} :catch_34

    .line 858
    :catch_34
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    .line 860
    goto :goto_2e
.end method

.method public getSBShowToastEnabled()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 833
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2} :catch_34

    .line 834
    :try_start_2
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "smart_bonding_notification_do_not_show_speed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2f

    const/4 v1, 0x1

    .line 836
    .local v1, "enabled":Z
    :goto_13
    sget-boolean v3, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSBShowToastEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 837
    :cond_2d
    monitor-exit p0

    .line 841
    .end local v1    # "enabled":Z
    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    .line 834
    goto :goto_13

    .line 838
    :catchall_31
    move-exception v3

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_31

    :try_start_33
    throw v3
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_34} :catch_34

    .line 839
    :catch_34
    move-exception v0

    .line 840
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    move v1, v2

    .line 841
    goto :goto_2e
.end method

.method public getSBUsageStatus(J)I
    .registers 8
    .param p1, "threadID"    # J

    .prologue
    .line 2152
    const/4 v2, 0x0

    .line 2153
    .local v2, "status":I
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2154
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v3, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_7

    .line 2155
    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    goto :goto_7

    .line 2158
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1c
    return v2
.end method

.method public getSmartBondingData(I)[J
    .registers 9
    .param p1, "pid"    # I

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    monitor-enter v1

    .line 1221
    const/4 v0, -0x1

    if-ne p1, v0, :cond_51

    .line 1222
    :try_start_6
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1223
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    int-to-long v3, v3

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSpeedRatio:D

    const-wide/high16 v5, 0x4059000000000000L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-long v3, v3

    aput-wide v3, v0, v2

    monitor-exit v1

    .line 1233
    :goto_25
    return-object v0

    .line 1225
    :cond_26
    iget v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1226
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mFasterInterface:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    aput-wide v3, v0, v2

    monitor-exit v1

    goto :goto_25

    .line 1235
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw v0

    .line 1229
    :cond_49
    const/4 v0, 0x2

    :try_start_4a
    new-array v0, v0, [J

    fill-array-data v0, :array_60

    monitor-exit v1

    goto :goto_25

    .line 1233
    :cond_51
    iget-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBDataStatistics:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_4a .. :try_end_5f} :catchall_46

    goto :goto_25

    .line 1229
    :array_60
    .array-data 8
        -0x1
        0x1
    .end array-data
.end method

.method public getWarningToastEnabled()Z
    .registers 4

    .prologue
    .line 3502
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "getWarningToastEnabled called :"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3503
    :cond_9
    const-string v1, "persist.sys.sb.warning.show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3504
    .local v0, "enable":Z
    return v0
.end method

.method public reportSBUsage(J[J)V
    .registers 23
    .param p1, "threadID"    # J
    .param p3, "data"    # [J

    .prologue
    .line 1797
    sget-boolean v17, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v17, :cond_1e

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "reportSBUsage : sb usauge is reported : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1800
    :cond_1e
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "data length : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1801
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_71

    .line 1802
    const/16 v17, 0x0

    aget-wide v4, p3, v17

    .line 1803
    .local v4, "contentTotalLength":J
    const/16 v17, 0x1

    aget-wide v9, p3, v17

    .line 1804
    .local v9, "sbReceivedLength":J
    const/16 v17, 0x2

    aget-wide v15, p3, v17

    .line 1805
    .local v15, "wifiReceivedLength":J
    sub-long v7, v9, v15

    .line 1806
    .local v7, "mobileReceivedLength":J
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTotalContentSize:J

    .line 1807
    sub-long v17, v4, v7

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mMobileRemainedContentSize:J

    .line 1808
    sub-long v17, v4, v15

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mWifiRemainedContentSize:J

    .line 1809
    sub-long v17, v4, v9

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/smartbonding/SmartBondingService;->mBoosterRemainedContentSize:J

    .line 1839
    .end local v4    # "contentTotalLength":J
    .end local v7    # "mobileReceivedLength":J
    .end local v9    # "sbReceivedLength":J
    .end local v15    # "wifiReceivedLength":J
    :goto_70
    return-void

    .line 1813
    :cond_71
    monitor-enter p0

    .line 1815
    const/4 v14, 0x0

    .line 1817
    .local v14, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :try_start_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7d
    :goto_7d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1818
    .local v13, "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v0, v13, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, p1

    if-nez v17, :cond_7d

    .line 1820
    move-object v14, v13

    goto :goto_7d

    .line 1823
    .end local v13    # "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_93
    if-eqz v14, :cond_d7

    .line 1824
    move-object/from16 v11, p3

    .line 1825
    .local v11, "statistic":[J
    iput-object v11, v14, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatistics:[J

    .line 1827
    iget-object v0, v14, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1830
    .local v3, "combinedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_af
    :goto_af
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_cc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1831
    .local v12, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v0, v12, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_af

    .line 1832
    invoke-virtual {v12}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->getAllLinkedStatistics()[J

    move-result-object v11

    goto :goto_af

    .line 1836
    .end local v12    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_cc
    iget-wide v0, v14, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    .line 1838
    .end local v3    # "combinedUrl":Ljava/lang/String;
    .end local v11    # "statistic":[J
    :cond_d7
    monitor-exit p0

    goto :goto_70

    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_d9
    move-exception v17

    monitor-exit p0
    :try_end_db
    .catchall {:try_start_73 .. :try_end_db} :catchall_d9

    throw v17
.end method

.method public requestGetAllByName(JLjava/lang/String;)V
    .registers 10
    .param p1, "threadID"    # J
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x9

    .line 2219
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2220
    .local v2, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_8

    .line 2221
    iput-object p3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mHost:Ljava/lang/String;

    .line 2222
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    .line 2223
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->removeMessages(I)V

    .line 2224
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2225
    .local v1, "message":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2226
    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v3, v1}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 2229
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_32
    return-void
.end method

.method public responseGetAllByName(J)[Ljava/lang/String;
    .registers 15
    .param p1, "threadID"    # J

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 2251
    const/4 v0, 0x0

    .line 2252
    .local v0, "addresses":[Ljava/net/InetAddress;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2253
    .local v4, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_c

    .line 2254
    iget-object v0, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mInetAddresses:[Ljava/net/InetAddress;

    goto :goto_c

    .line 2257
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_21
    if-eqz v0, :cond_41

    .line 2258
    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v7, v3, v10

    aput-object v7, v3, v11

    const/4 v5, 0x3

    aput-object v7, v3, v5

    .line 2259
    .local v3, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    array-length v5, v0

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v1, v5, :cond_4c

    .line 2260
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 2259
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 2264
    .end local v1    # "i":I
    .end local v3    # "ret":[Ljava/lang/String;
    :cond_41
    new-array v3, v8, [Ljava/lang/String;

    aput-object v7, v3, v9

    aput-object v7, v3, v10

    aput-object v7, v3, v11

    const/4 v5, 0x3

    aput-object v7, v3, v5

    :cond_4c
    return-object v3
.end method

.method public setHttpLogEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 3484
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHttpLogEnabled called :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3485
    :cond_1a
    iput-boolean p1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHttpLogEnabled:Z

    .line 3486
    const-string v1, "persist.sys.sb.log.enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    if-eqz p1, :cond_3d

    .line 3490
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_31

    const-string/jumbo v1, "start to create log folder"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3491
    :cond_31
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3492
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3494
    .end local v0    # "message":Landroid/os/Message;
    :cond_3d
    return-void
.end method

.method public setSBEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 697
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_28

    .line 698
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart Bonding already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_25

    const-string v1, "enabled"

    :goto_19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 707
    :cond_24
    :goto_24
    return-void

    .line 698
    :cond_25
    const-string v1, "disabled"

    goto :goto_19

    .line 702
    :cond_28
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding"

    if-eqz p1, :cond_41

    const/4 v1, 0x1

    :goto_34
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_24

    .line 704
    :catch_38
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 702
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_41
    const/4 v1, 0x0

    goto :goto_34
.end method

.method public setSBInternalUsageStatus(IJ)V
    .registers 10
    .param p1, "status"    # I
    .param p2, "threadID"    # J

    .prologue
    .line 2206
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSBInternalUsageStatus : status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2208
    :cond_24
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2209
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_2a

    .line 2210
    iput p1, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    goto :goto_2a

    .line 2214
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_3f
    iget-object v2, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2215
    sget-boolean v2, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v2, :cond_59

    const-string v2, "setSBInternalUsageStatus : send SB interfaces intent"

    invoke-static {v2}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2216
    :cond_59
    return-void
.end method

.method public setSBNotificationEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v1

    if-ne v1, p1, :cond_28

    .line 745
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smart Bonding Notification already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_25

    const-string v1, "enabled"

    :goto_19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 754
    :cond_24
    :goto_24
    return-void

    .line 745
    :cond_25
    const-string v1, "disabled"

    goto :goto_19

    .line 749
    :cond_28
    iget-object v1, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding_notification"

    if-eqz p1, :cond_41

    const/4 v1, 0x1

    :goto_34
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_24

    .line 751
    :catch_38
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_24

    .line 749
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_41
    const/4 v1, 0x0

    goto :goto_34
.end method

.method public setSBUsageStatus(IJ)V
    .registers 13
    .param p1, "status"    # I
    .param p2, "threadID"    # J

    .prologue
    .line 2167
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSBUsageStatus : status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " threadID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2169
    :cond_24
    const-string v2, ""

    .line 2170
    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2171
    .local v4, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p2

    if-nez v5, :cond_2c

    .line 2172
    iput p1, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    .line 2173
    iget-object v2, v4, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_2c

    .line 2177
    .end local v4    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_43
    invoke-direct {p0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2178
    .local v0, "combinedUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_73

    .line 2179
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 2180
    .local v3, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2181
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_70

    const-string v5, "setSBUsageStatus : same url is found"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2182
    :cond_70
    iput p1, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_53

    .line 2196
    .end local v3    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_73
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    iget-object v6, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2197
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_8d

    const-string v5, "setSBUsageStatus : send SB interfaces enable event"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 2198
    :cond_8d
    return-void
.end method

.method public setWarningToast(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 3497
    sget-boolean v0, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWarningToast called :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 3498
    :cond_1a
    const-string v0, "persist.sys.sb.warning.show"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    return-void
.end method

.method public startSBUsage(JJJLjava/lang/String;)Z
    .registers 33
    .param p1, "threadID"    # J
    .param p3, "fileSize"    # J
    .param p5, "startRange"    # J
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 1479
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->isAirPlaneMode()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1480
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "startSBUsage : is airplane mode"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1481
    :cond_10
    const/4 v4, 0x0

    .line 1618
    :goto_11
    return v4

    .line 1484
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_45

    .line 1485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_2f

    .line 1486
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2d

    const-string/jumbo v4, "startSBUsage : no sim"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1487
    :cond_2d
    const/4 v4, 0x0

    goto :goto_11

    .line 1489
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1490
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_43

    const-string/jumbo v4, "startSBUsage : roaming status"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1491
    :cond_43
    const/4 v4, 0x0

    goto :goto_11

    .line 1495
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNetworkEnabled:Z

    if-nez v4, :cond_57

    .line 1496
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_55

    const-string/jumbo v4, "startSBUsage : some interface is not enabled"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1497
    :cond_55
    const/4 v4, 0x0

    goto :goto_11

    .line 1500
    :cond_57
    monitor-enter p0

    .line 1501
    :try_start_58
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_62

    const-string/jumbo v4, "startSBUsage is called"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1503
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v4

    if-nez v4, :cond_78

    .line 1504
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_72

    const-string/jumbo v4, "startSBUsage : smart bonding is not enabled"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1505
    :cond_72
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_11

    .line 1619
    :catchall_75
    move-exception v4

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_75

    throw v4

    .line 1508
    :cond_78
    :try_start_78
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1509
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1512
    .local v6, "uid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/smartbonding/SmartBondingService;->isBlockedProcess(I)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1513
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_a9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startSBUsage : pid : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " is blocked"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1514
    :cond_a9
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_11

    .line 1518
    :cond_ad
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_b5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1519
    .local v24, "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    move-object/from16 v0, v24

    iget-wide v10, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v4, v10, p1

    if-nez v4, :cond_b5

    move-object/from16 v0, v24

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatus:I

    if-nez v4, :cond_b5

    .line 1520
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_d9

    const-string/jumbo v4, "startSBUsage: sb usauge is already started"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1521
    :cond_d9
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_11

    .line 1525
    .end local v24    # "us":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_dd
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1526
    .local v7, "combinedUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->convertDetailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1528
    .local v8, "detailUrl":Ljava/lang/String;
    new-instance v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;-><init>(Lcom/samsung/smartbonding/SmartBondingService;IILjava/lang/String;Ljava/lang/String;)V

    .line 1529
    .local v3, "curUrlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    new-instance v9, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    move-object/from16 v10, p0

    move v11, v5

    move v12, v6

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-object/from16 v17, p7

    move-wide/from16 v18, p5

    invoke-direct/range {v9 .. v19}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;-><init>(Lcom/samsung/smartbonding/SmartBondingService;IIJJLjava/lang/String;J)V

    .line 1532
    .local v9, "curUsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_10d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1533
    .local v23, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 1534
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_12d

    const-string/jumbo v4, "startSBUsage : same url is founded"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1535
    :cond_12d
    move-object/from16 v0, v23

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v10, 0x4

    if-ne v4, v10, :cond_148

    const-wide/16 v10, 0x0

    cmp-long v4, p5, v10

    if-eqz v4, :cond_148

    .line 1536
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_144

    const-string/jumbo v4, "startSBUsage : current url is not supported"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1537
    :cond_144
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_11

    .line 1539
    :cond_148
    const-wide/16 v10, 0x0

    cmp-long v4, p5, v10

    if-nez v4, :cond_158

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10d

    .line 1540
    :cond_158
    move-object/from16 v0, v23

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_171

    .line 1541
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_169

    const-string/jumbo v4, "startSBUsage : url is already selected as no"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1543
    :cond_169
    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    .line 1544
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_11

    .line 1545
    :cond_171
    move-object/from16 v0, v23

    iget v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_10d

    .line 1546
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_182

    const-string/jumbo v4, "startSBUsage : url is already selected as yes"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1548
    :cond_182
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 1549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBUsageStatus(IJ)V

    .line 1552
    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_11

    .line 1559
    .end local v23    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_1a1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBLimitFileSize()J

    move-result-wide v10

    cmp-long v4, p3, v10

    if-gez v4, :cond_1d8

    .line 1560
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1d4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startSBUsage : smart bonding is not enabled because file size : limit "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBLimitFileSize()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " fileSize : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1561
    :cond_1d4
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_11

    .line 1565
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_201

    .line 1566
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v22

    .line 1567
    .local v22, "network_class":I
    const/4 v4, 0x3

    move/from16 v0, v22

    if-eq v0, v4, :cond_201

    .line 1568
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_1fd

    const-string/jumbo v4, "startSBUsage : network class is not 4G so that smart bonding won\'t work"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1569
    :cond_1fd
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_11

    .line 1583
    .end local v22    # "network_class":I
    :cond_201
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    const/16 v21, 0x0

    .line 1586
    .local v21, "isUrlExist":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_212
    :goto_212
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1587
    .restart local v23    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    iget-object v10, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_212

    .line 1588
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_234

    const-string/jumbo v4, "startSBUsage : url is updated"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1589
    :cond_234
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_245

    .line 1590
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1592
    :cond_245
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_260

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_264

    .line 1594
    :cond_260
    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    .line 1596
    :cond_264
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    .line 1597
    const/16 v21, 0x1

    goto :goto_212

    .line 1600
    .end local v23    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_26c
    if-nez v21, :cond_284

    .line 1601
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_278

    const-string/jumbo v4, "startSBUsage : add url status in list"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1602
    :cond_278
    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_284
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBShowToastEnabled()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mNeedShowTrafficToast:Z

    .line 1608
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_2a8

    .line 1609
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v4, :cond_29c

    const-string/jumbo v4, "startSBUsage : getSBNotificationEnabled() is false, no pop-up displayed"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1610
    :cond_29c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBUsageStatus(IJ)V

    .line 1611
    const/4 v4, 0x1

    monitor-exit p0

    goto/16 :goto_11

    .line 1614
    :cond_2a8
    sget-boolean v4, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v4, :cond_2b2

    const-string/jumbo v4, "startSBUsage : sb usauge is started, send broadcast : set a flag"

    invoke-static {v4}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1615
    :cond_2b2
    const/4 v4, 0x1

    iput-boolean v4, v9, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStartWithPopup:Z

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p7

    move-wide/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lcom/samsung/smartbonding/SmartBondingService;->buildCheckSBUsageIntent(JLjava/lang/String;J)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1618
    const/4 v4, 0x1

    monitor-exit p0
    :try_end_2ca
    .catchall {:try_start_78 .. :try_end_2ca} :catchall_75

    goto/16 :goto_11
.end method

.method public stopSBUsage(J)I
    .registers 13
    .param p1, "threadID"    # J

    .prologue
    const/4 v9, 0x0

    .line 1748
    monitor-enter p0

    .line 1749
    :try_start_2
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v5, :cond_1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSBUsage : sb usauge is stopped : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1750
    :cond_1d
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInternalUsageStatus(IJ)V

    .line 1753
    const-string v2, ""

    .line 1754
    .local v2, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1755
    .local v0, "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v5, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_29

    .line 1756
    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_29

    .line 1760
    .end local v0    # "UsageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a0

    .line 1761
    const-string v5, "\\?"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1762
    .local v4, "urls":[Ljava/lang/String;
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_54

    const-string/jumbo v5, "stopSBUsage : spilt done"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1763
    :cond_54
    const/4 v5, 0x0

    aget-object v5, v4, v5

    if-eqz v5, :cond_a0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a0

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/market/GetBinary/GetBinary"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 1764
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_8b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopSBUsage : it\'s google play contents (url[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1765
    :cond_8b
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/o"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 1766
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_a0

    const-string/jumbo v5, "stopSBUsage : it\'s first contents"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1783
    .end local v4    # "urls":[Ljava/lang/String;
    :cond_a0
    invoke-direct {p0, v2}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1784
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    .line 1787
    :cond_a9
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->buildStopSBUsageIntent(J)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1788
    monitor-exit p0

    return v9

    .line 1768
    .restart local v4    # "urls":[Ljava/lang/String;
    :cond_b4
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "/p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d3

    .line 1769
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1771
    :cond_d3
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_dd

    const-string/jumbo v5, "stopSBUsage : it\'s second contents"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1772
    :cond_dd
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e3
    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1773
    .local v3, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 1774
    sget-boolean v5, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v5, :cond_104

    const-string/jumbo v5, "stopSBUsage : same url is found. set it as none status"

    invoke-static {v5}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1775
    :cond_104
    const/4 v5, 0x0

    iput v5, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_e3

    .line 1789
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    .end local v4    # "urls":[Ljava/lang/String;
    :catchall_108
    move-exception v5

    monitor-exit p0
    :try_end_10a
    .catchall {:try_start_2 .. :try_end_10a} :catchall_108

    throw v5
.end method

.method public stopSBUsageWithReason(JI)I
    .registers 15
    .param p1, "threadID"    # J
    .param p3, "errorNo"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1639
    monitor-enter p0

    .line 1640
    :try_start_3
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_1e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopSBUsageWithReason : reason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1642
    :cond_1e
    if-ne p3, v10, :cond_50

    .line 1643
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1644
    .local v2, "message":Landroid/os/Message;
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1645
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1688
    .end local v2    # "message":Landroid/os/Message;
    :cond_33
    :goto_33
    const-string v4, ""

    .line 1689
    .local v4, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 1690
    .local v6, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    iget-wide v7, v6, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mThreadID:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_3b

    .line 1691
    iget-object v4, v6, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mUrl:Ljava/lang/String;

    goto :goto_3b

    .line 1646
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "url":Ljava/lang/String;
    .end local v6    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_50
    const/4 v7, -0x1

    if-ne p3, v7, :cond_73

    .line 1652
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1653
    .local v3, "message2":Landroid/os/Message;
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1654
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1655
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_71

    const-string/jumbo v7, "stopSBUsageWithReason : 1:4 algorithm is happened / use only wifi for downloading"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1656
    :cond_71
    monitor-exit p0

    .line 1743
    .end local v3    # "message2":Landroid/os/Message;
    :goto_72
    return v9

    .line 1657
    :cond_73
    const/4 v7, -0x2

    if-ne p3, v7, :cond_99

    .line 1663
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1664
    .restart local v3    # "message2":Landroid/os/Message;
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1665
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v3}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1666
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_94

    const-string/jumbo v7, "stopSBUsageWithReason : 1:4 algorithm is happened / use only lte for downloading"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1667
    :cond_94
    monitor-exit p0

    goto :goto_72

    .line 1744
    .end local v3    # "message2":Landroid/os/Message;
    :catchall_96
    move-exception v7

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_3 .. :try_end_98} :catchall_96

    throw v7

    .line 1668
    :cond_99
    :try_start_99
    invoke-direct {p0}, Lcom/samsung/smartbonding/SmartBondingService;->isMidHighDebugLevel()Z

    move-result v7

    if-eqz v7, :cond_e1

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterfaceState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e1

    const-string v7, "persist.sys.sb.warning.show"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 1670
    const/4 v7, -0x3

    if-ne p3, v7, :cond_c8

    .line 1671
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1672
    .restart local v2    # "message":Landroid/os/Message;
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1673
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1674
    monitor-exit p0

    goto :goto_72

    .line 1677
    .end local v2    # "message":Landroid/os/Message;
    :cond_c8
    const/4 v7, -0x4

    if-ne p3, v7, :cond_33

    .line 1678
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1679
    .restart local v2    # "message":Landroid/os/Message;
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1680
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mHandler:Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1681
    monitor-exit p0

    goto :goto_72

    .line 1684
    .end local v2    # "message":Landroid/os/Message;
    :cond_e1
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->DBG:Z

    if-eqz v7, :cond_33

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported errorno: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 1695
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_fd
    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->convertCombinedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    .local v0, "combinedUrl":Ljava/lang/String;
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_11c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopSBUsageWithReason : sb usauge is stopped : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1709
    :cond_11c
    const/4 v7, 0x2

    invoke-virtual {p0, v7, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->setSBInternalUsageStatus(IJ)V

    .line 1712
    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isYouTubeContent(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_128

    if-eqz p3, :cond_155

    .line 1713
    :cond_128
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12e
    :goto_12e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_152

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1714
    .local v5, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12e

    .line 1715
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_14c

    const-string/jumbo v7, "stopSBUsageWithReason : canceled so that list is cleared"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1716
    :cond_14c
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_12e

    .line 1719
    .end local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_152
    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->removeSBUsage(J)V

    .line 1722
    :cond_155
    invoke-direct {p0, v4}, Lcom/samsung/smartbonding/SmartBondingService;->isFirstCombinedRequest(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18a

    const/4 v7, 0x1

    if-ne p3, v7, :cond_18a

    .line 1723
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_164
    :goto_164
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1724
    .restart local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_164

    .line 1725
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_182

    const-string/jumbo v7, "stopSBUsageWithReason : download is cancelled. set it as none status"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1726
    :cond_182
    const/4 v7, 0x0

    iput v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    .line 1727
    const-string v7, ""

    iput-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    goto :goto_164

    .line 1732
    .end local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_18a
    if-ne p3, v10, :cond_1b4

    .line 1733
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mSBUrlStatus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_192
    :goto_192
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 1734
    .restart local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget-object v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_192

    .line 1735
    sget-boolean v7, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v7, :cond_1b0

    const-string/jumbo v7, "stopSBUsageWithReason : download is not supported. set it as not support status"

    invoke-static {v7}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1736
    :cond_1b0
    const/4 v7, 0x4

    iput v7, v5, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    goto :goto_192

    .line 1742
    .end local v5    # "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    :cond_1b4
    iget-object v7, p0, Lcom/samsung/smartbonding/SmartBondingService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->buildStopSBUsageIntent(J)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1743
    monitor-exit p0
    :try_end_1be
    .catchall {:try_start_99 .. :try_end_1be} :catchall_96

    goto/16 :goto_72
.end method

.method public submitMultiSocketData([J[J)V
    .registers 7
    .param p1, "lens"    # [J
    .param p2, "times"    # [J

    .prologue
    const/4 v2, 0x1

    .line 1273
    :try_start_1
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_b

    const-string/jumbo v1, "submitMultiSocketData called"

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1274
    :cond_b
    monitor-enter p0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_57

    .line 1275
    :try_start_c
    array-length v1, p1

    if-ne v1, v2, :cond_42

    invoke-virtual {p0}, Lcom/samsung/smartbonding/SmartBondingService;->getSBEnabled()Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/smartbonding/SmartBondingService;->getSBInterface(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 1276
    sget-boolean v1, Lcom/samsung/smartbonding/SmartBondingService;->VDBG:Z

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive command to switch dns but its not working in this version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/String;)V

    .line 1282
    :cond_40
    :goto_40
    monitor-exit p0

    .line 1286
    :goto_41
    return-void

    .line 1279
    :cond_42
    new-instance v1, Ljava/lang/Integer;

    invoke-static {}, Lcom/samsung/smartbonding/SmartBondingService;->getCallingPid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->updateStatisticsData(Ljava/lang/Integer;[J[J)V

    .line 1280
    sget-object v1, Lcom/samsung/smartbonding/SmartBondingService;->INT_TOTAL:Ljava/lang/Integer;

    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/smartbonding/SmartBondingService;->updateStatisticsData(Ljava/lang/Integer;[J[J)V

    goto :goto_40

    .line 1282
    :catchall_54
    move-exception v1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_54

    :try_start_56
    throw v1
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_57} :catch_57

    .line 1283
    :catch_57
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/samsung/smartbonding/SmartBondingService;->log(Ljava/lang/Throwable;)V

    goto :goto_41
.end method
